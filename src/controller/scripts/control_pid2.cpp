#include <cmath>
#include "controller/cf_dina2Config.h"
#include "controller/DatosControl.h"
#include "controller/Trayectoria.h"
#include "dynamic_reconfigure/server.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include "ros/ros.h"
#include "ros/time.h"
#include "sensor_msgs/Imu.h"
#include "sensor_msgs/Joy.h"
#include <sstream>
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include "tf/transform_broadcaster.h"


//Variables auxiliares
volatile int buttons[4];
volatile float axes[4];
bool manual = true;
bool circle = false;
float longitud, amplitud; //Longitud y amplitud de la onda
float max_linear_vel;
float max_angular_vel;
float max_error = 0.2;
float umbral_error;
double currentTime = 0.0; //Para muestras de tiempo
ros::Time prevTime;
ros::Duration deltaTime;
float correctT;
float xDesGen, yDesGen;

//Variables de orientacion
float t, tI, tE;
float quatXI, quatYI, quatZI, quatWI;
float quatXE, quatYE, quatZE, quatWE;
double roll, pitch, yawI, yawE;
tf::Quaternion qI;
tf::Quaternion qE;

//Variables para el controlador
float x, y, xDes, yDes, vXDes, vYDes;
float uX, uY;
double kpX, kpY, kdX, kdY;
float eX, eY, evX, evY;
double v = 0.0, w = 0.0;

//Variables fisicas del robot
float h; //Desplazamiento del centro de rotacion


void joyCallback(const sensor_msgs::Joy::ConstPtr& joy) {
    buttons[0] = joy->buttons[0];
    buttons[1] = joy->buttons[1];
    buttons[2] = joy->buttons[2];
    buttons[3] = joy->buttons[3];
    axes[0] = joy->axes[0];
    axes[1] = joy->axes[1];
    axes[2] = joy->axes[3];
    axes[3] = joy->axes[4];

    //ROS_INFO("%d | %d | %d | %d", buttons[0], buttons[1], buttons[2], buttons[3]);
    //ROS_INFO("%f | %f | %f | %f", axes[0], axes[1], axes[2], axes[3]);
}

void odomCallback(const nav_msgs::Odometry::ConstPtr& odom) {
    x = odom->pose.pose.position.x;
    y = odom->pose.pose.position.y;
    tf::quaternionMsgToTF(odom->pose.pose.orientation, qE);
}

void imuCallback(const sensor_msgs::Imu::ConstPtr& imu) {
    tf::quaternionMsgToTF(imu->orientation, qI);
}

void ParamsCallback(controller::cf_dina2Config &config, uint32_t level) {
    max_linear_vel = config.linearVel;
    max_angular_vel = config.angularVel;
    umbral_error = config.umbral;

    kpX = config.kpX;
    kpY = config.kpY;
    kdX = config.kdX;
    kdY = config.kdY;

    xDes = config.xDes;
    yDes = config.yDes;

    h = config.h;
    longitud = config.longitud;
    amplitud = config.amplitud;
}

void trayectoria(const controller::Trayectoria::ConstPtr& trayec) {
    xDesGen = trayec->x;
    yDesGen = trayec->y;
}

double limitVelocity(double vel, double velMax, double velMin) {
    if (vel < velMin) {
        vel = velMin;
    } else if (vel > velMax) {
        vel = velMax;
    } else {
        vel = vel;
    }

    return vel;
}

//Funcion para calcular la derivada
float azez=0.09,bzez=0.3,xmez,xkez_1=0,vkez_1=0,xkez,dtez=0.066,vkez,rkez,vez;
double derivative(float pos) {
    xmez= (pos);
    xkez = xkez_1 + ( vkez_1 * dtez );
    vkez = vkez_1;
    rkez = xmez - xkez;
    xkez =xkez + azez*rkez;
    vkez =vkez + (bzez*rkez)/dtez;
    xkez_1 = xkez;
    vkez_1 = 0.7*vkez;
    vez= vkez_1;

    return vez;
}

void getAngle(){
    //Convertimos la orientacion en Z de quaternion_encoder a angulos de euler
    tf::Matrix3x3(qE).getRPY(roll, pitch, yawE);
    tE = yawE * (180 / M_PI);

    //Convertimos la orientacion en Z de quaternion_imu a angulos de euler
    tf::Matrix3x3(qI).getRPY(roll, pitch, yawI);
    tI = yawI * (180 / M_PI);

    t = tI - (tI - tE);
}

void pid() {
    ROS_INFO("[Auton] Generando trayectoria!");

    if (buttons[0] != 0 || circle == true) {
        circle = true;

        //Para trayectoria circular variable en el tiempo
        xDes = amplitud * cos(currentTime * longitud);
        yDes = amplitud * sin(currentTime * longitud);
    }

    if (buttons[3] != 0 || circle == false) {
        circle = false;

        /*Para trayectoria generada por puntos de referencia y convergencia en tiempo finito
        *Ejecutar el nodo {rosrun controller genTrayectoria} despues de cambiar a este modo*/
        xDes = xDesGen;
        yDes = yDesGen;
    }

    //Calculo del error Proporcional
    eX = x - xDes; //limitVelocity((x - xDes), max_error, -max_error);
    eY = y - yDes; //limitVelocity((y - yDes), max_error, -max_error);

    //Calculo del error derivativo
	evX = derivative(x) - derivative(xDes);
	evY = derivative(y) - derivative(yDes);

    float tRad = t * (M_PI / 180);

    //Obtencion del error del angulo
    float errorX = xDes - x;
    float errorY = yDes - y;
    float tDes = atan2(errorY, errorX) * (180/M_PI);
    correctT = tDes - t;

    //Controlador
    if (eX > umbral_error || eX < -umbral_error) { //Quita el error estacionario
	    uX = -kpX * eX - kdX * evX;
    } else { uX = 0.0; }

    if (eY > umbral_error || eY < -umbral_error) {
        uY = -kpY * eY - kdY * evY;
    } else { uY = 0.0; }

    if ((correctT > -60 && correctT < 60) || correctT < -300 || correctT > 300) { //Permite que rote antes de avanzar en caso de que el agulo sea > 60°/-300° o < -60°/300°
	    v = limitVelocity((uX * cos(tRad) + uY * sin(tRad)), max_linear_vel, -max_linear_vel);
    } else {
	    v = v * 0.5;
    }

    w = limitVelocity((-(uX/h) * sin(tRad) + (uY/h) * cos(tRad)), max_angular_vel, -max_angular_vel);
}

int main(int argc, char **argv) {

    //Inicializa ROS
    ros::init(argc, argv, "control_pid2");
    ros::NodeHandle n; //Objeto Handle para publicacion y subscripcion a topicos

    //Subscripcion y publicacion en topicos de ROS
    ros::Publisher pub1 = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    ros::Publisher pub2 = n.advertise<controller::DatosControl>("datosControl", 1000);  //Publica en mensaje propio del script
    ros::Subscriber sub1 = n.subscribe<nav_msgs::Odometry>("wheel/odom", 10, &odomCallback);
    ros::Subscriber sub2 = n.subscribe<sensor_msgs::Imu>("imu", 10, &imuCallback);
    ros::Subscriber sub3 = n.subscribe<sensor_msgs::Joy>("joy", 10, &joyCallback);
    ros::Subscriber sub4 = n.subscribe("/trayectoria", 10, &trayectoria);

    //Inicializa Configuracion Dinamica
    dynamic_reconfigure::Server<controller::cf_dina2Config> server;
    dynamic_reconfigure::Server<controller::cf_dina2Config>::CallbackType f;
    f = boost::bind(&ParamsCallback, _1, _2);
    server.setCallback(f);

    ros::Rate loop_rate(15); //Mantiene el script ejecutandose en una velocidad de 15Hz

    geometry_msgs::Twist vel;
    controller::DatosControl datC;

    ros::Duration(16.0).sleep(); //Espera un tiempo a que la imu publique
    prevTime = ros::Time::now();

    while (ros::ok()) {

        ros::spinOnce();
        getAngle();

	deltaTime = ros::Time::now() - prevTime;
	currentTime = deltaTime.toSec();
	ROS_INFO("[Time] %f", currentTime);

        if (manual == true || buttons[1] != 0) {
	     manual = true;

             v = limitVelocity(axes[1], max_linear_vel, -max_linear_vel);
	     w = limitVelocity(axes[2], max_angular_vel, -max_angular_vel);

             ROS_INFO("[Manual] ------------------------------------");
             ROS_INFO("[Manual] VL: %f, VA: %f", v, w);
             ROS_INFO("[Manual] T: %f, TE: %f, TI %f", t, tE, tI);

        }

	if (manual == false || buttons[2] != 0) {
	     manual = false;

             pid();

             ROS_INFO("[Auton] ------------------------------------");
             ROS_INFO("[Auton] x: %f | y: %f | theta: %f", x, y, t);
             ROS_INFO("[Auton] eX: %f | eY: %f | eT: %f", eX, eY, correctT);
             ROS_INFO("[Auton] VL: %f | VA: %f | ux: %f | uy: %f", v, w, uX, uY);

	}

        vel.linear.x = v;
        vel.angular.z = w;

        pub1.publish(vel); //Se publican las velocidad lineal y angular del robot


	//Guarda los valores medidos en un objeto tipo 'datosControl' para publicar en el topico
	datC.linearVel = v;
	datC.angularVel = w;
	datC.angle = t;
	datC.x = x;
	datC.xd = xDes;
	datC.y = y;
	datC.yd = yDes;
	datC.ex = eX;
	datC.ey = eY;
	datC.evx = evX;
	datC.evy = evY;
	datC.eT = correctT;

        pub2.publish(datC); //Publican los valores medidos en el topico del script

        loop_rate.sleep();
    }

    return 0;
}
