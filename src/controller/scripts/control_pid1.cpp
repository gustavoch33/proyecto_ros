#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include <sstream>
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include <cmath>
#include "sensor_msgs/Imu.h"
#include <tf/transform_datatypes.h>
#include "tf/transform_broadcaster.h"
#include "dynamic_reconfigure/server.h"
#include "controller/cf_dinaConfig.h"
#include "sensor_msgs/Joy.h"
#include "controller/DatosControl.h"
#include "ros/time.h"
#include <ctime>

//Variables auxiliares
volatile int buttons[4];
volatile float axes[4];
float velocity = 0.2;
bool manual = true;
float eX, eY, veX, veY;

float eT, veT; //Para pruebas de orientación

//Variables de posicionamiento
float x, y;
float quatXI, quatYI, quatZI, quatWI;
float quatXE, quatYE, quatZE, quatWE;
double roll, pitch, yawI, yawE;
tf::Quaternion qI;
tf::Quaternion qE;

//Variables para el controlador
float xDes, yDes;
float uX, uY;
double kpX, kpY;
double kdX, kdY;
double v = 0.0, w = 0.0;

#define MAX_LINEAR_VEL 0.6
#define MAX_ANGULAR_VEL 0.6
#define UMBRAL 0.03

float t, tDes, uT, tI, tE; //Para pruebas de orientación
double kpT, kdT;

//Variables fisicas del robot
float h = 1.0;
time_t currentTime, initTime;
ros::Time prevTime;
ros::Duration deltaTime;
double cTime = 0.0;


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
//    quatXE = odom->pose.pose.orientation.x;
//    quatYE = odom->pose.pose.orientation.y;
//    quatZE = odom->pose.pose.orientation.z;
//    quatWE = odom->pose.pose.orientation.w;
    tf::quaternionMsgToTF(odom->pose.pose.orientation, qE);
}

void imuCallback(const sensor_msgs::Imu::ConstPtr& imu) {
//    quatXI = imu->orientation.x;
//    quatYI = imu->orientation.y;
//    quatZI = imu->orientation.z;
//    quatWI = imu->orientation.w;
    tf::quaternionMsgToTF(imu->orientation, qI);
}

void ParamsCallback(controller::cf_dinaConfig &config, uint32_t level) {
    kpX = config.kpX;
    kpY = config.kpY;
    kdX = config.kdX;
    kdY = config.kdY;

    xDes = config.xDes;
    yDes = config.yDes;

    //Para pruebas de orientacón/*
    kpT = config.kpT;
    kdT = config.kdT;
    tDes = config.tDes;
    ///**/

    h = config.h;
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

double derivative(float pos, float posDes) {
    float azez=0.09,bzez=0.3,xmez,xkez_1=0,vkez_1=0,xkez,dtez=0.066,vkez,rkez,vez;

    xmez= (pos - posDes);
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
    tE = yawE * (180 / M_PI); //Para pruebas de orientación

    //Convertimos la orientacion en Z de quaternion_imu a angulos de euler
    tf::Matrix3x3(qI).getRPY(roll, pitch, yawI);
    tI = yawI * (180 / M_PI); //Para pruebas de orientación

    t = tI - (tI - tE);
}

void pid() {
    xDes = 1 * cos(cTime * 0.2);
    yDes = 1 * sin(cTime * 0.2);

    //Calculo de los errores (PID)
    eX = x - xDes;
    eY = y - yDes;
    veX = derivative(x, xDes);
    veY = derivative(y, yDes);

    //Para pruebas de orientación
    float tRad = t * (M_PI / 180);
    eT = tRad - tDes;
    veT = derivative(tRad, tDes);

    //Controlador
    if (eX > UMBRAL || eX < -UMBRAL) {
	uX = -kpX * eX - kdX * veX;
    } else { uX = 0.0; }

    if (eY > UMBRAL || eY < -UMBRAL) {
        uY = -kpY * eY - kdY * veY;
    } else { uY = 0.0; }

    //Para pruebas de orientación/*
    if ((eT < -2 && eT > -358) || (eT < 358 && eT > 2)) {
        uT = -kpT * eT - kdT * veT;
    } else { uT = 0.0; }

    v = limitVelocity(uX, MAX_LINEAR_VEL, -MAX_LINEAR_VEL);
    w = limitVelocity(uT, MAX_ANGULAR_VEL, -MAX_ANGULAR_VEL);
    //*/

    v = limitVelocity((uX * cos(tRad) + uY * sin(tRad)), MAX_LINEAR_VEL, -MAX_LINEAR_VEL);
    w = limitVelocity((-(uX/h) * sin(tRad) + (uY/h) * cos(tRad)), MAX_ANGULAR_VEL, -MAX_ANGULAR_VEL);

}


int main(int argc, char **argv) {

    //Inicializa ROS
    ros::init(argc, argv, "control_pid1");
    ros::NodeHandle n; //Objeto Handle para publicacion y subscripcion a topicos

    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    ros::Publisher pub2 = n.advertise<controller::DatosControl>("datosControl", 1000);
    ros::Subscriber sub = n.subscribe<nav_msgs::Odometry>("wheel/odom", 10, &odomCallback);
    ros::Subscriber sub2 = n.subscribe<sensor_msgs::Imu>("imu", 10, &imuCallback);
    ros::Subscriber sub3 = n.subscribe<sensor_msgs::Joy>("joy", 10, &joyCallback);

    //Inicializa Configuracion Dinamica
    dynamic_reconfigure::Server<controller::cf_dinaConfig> server;
    dynamic_reconfigure::Server<controller::cf_dinaConfig>::CallbackType f;
    f = boost::bind(&ParamsCallback, _1, _2);
    server.setCallback(f);

    ros::Rate loop_rate(15);

    geometry_msgs::Twist vel;
    controller::DatosControl datC;

    prevTime = ros::Time::now();

    while (ros::ok()) {

        ros::spinOnce();
        getAngle();

	deltaTime = ros::Time::now() - prevTime;
	cTime = deltaTime.toSec();
	ROS_INFO("[Time] %f", cTime);

        if (manual == true || buttons[1] != 0) {
	     manual = true;

             v = limitVelocity(axes[1], MAX_LINEAR_VEL, -MAX_LINEAR_VEL);
	     w = limitVelocity(axes[2], MAX_ANGULAR_VEL, -MAX_ANGULAR_VEL);

             ROS_INFO("[Manual] ------------------------------------");
             ROS_INFO("[Manual] VL: %f, VA: %f", v, w);
             ROS_INFO("[Manual] T: %f, TE: %f, TI %f", t, tE, tI);

        }

	if (manual == false || buttons[2] != 0) {
	     manual = false;

             pid();

             ROS_INFO("[Auton] ------------------------------------");
             ROS_INFO("[Auton] x: %f | y: %f | theta: %f", x, y, t);
             ROS_INFO("[Auton] eX: %f | eY: %f | eT: %f", eX, eY, eT);
             ROS_INFO("[Auton] VL: %f | VA: %f", v, w);

	}

        vel.linear.x = v;
        vel.angular.z = w;

        pub.publish(vel);

	datC.linearVel = v;
	datC.angularVel = w;
	datC.angle = t;
	datC.x = x;
	datC.xd = xDes;
	datC.y = y;
	datC.yd = yDes;
	datC.ex = eX;
	datC.ey = eY;

        pub2.publish(datC);

        loop_rate.sleep();
    }

    return 0;
}
