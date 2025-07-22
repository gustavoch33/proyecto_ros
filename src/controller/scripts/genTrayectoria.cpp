#include <cmath>
#include <complex>
#include "controller/Trayectoria.h"
#include "ros/ros.h"
#include "ros/time.h"


float x10 = 0.0, y10 = 0.0;
float x20 = 0.0, y20 = 0.0;
//CONDICIONES INICIALES DE LA TRAYECTORIA A SEGUIR POR EL ROVER
float x1r0 = x10, y1r0 = y10;
float x2r0 = x20, y2r0 = y20;

//SALTO DE PASO
float paso = 0.01;

//Generacion de puntos
float p0[2] = {x1r0, y1r0},
    p1[2] = {0, -2},
    p2[2] = {2, -2},
    p3[2] = {2, -4},
    p4[2] = {0, -4},
    p5[2] = {0, 0};
/*
float p0[2] = {x1r0, y1r0},
    p1[2] = {2, 0},
    p2[2] = {0, 2},
    p3[2] = {0, 0},
    p4[2] = {2, 0},
    p5[2] = {0, 2};
*/

//Distancias de un punto a otro
float dis1 = sqrt(pow(p1[0]-p0[0], 2) + pow(p1[1]-p0[1], 2)),
    dis2 = sqrt(pow(p2[0]-p1[0], 2) + pow(p2[1]-p1[1], 2)),
    dis3 = sqrt(pow(p3[0]-p2[0], 2) + pow(p3[1]-p2[1], 2)),
    dis4 = sqrt(pow(p4[0]-p3[0], 2) + pow(p4[1]-p3[1], 2)),
    dis5 = sqrt(pow(p5[0]-p4[0], 2) + pow(p5[1]-p4[1], 2));

//Tiempo de espera en cada punto secuencial, es llamado epsilon
float epsilon = 2;

//Tiempos de avance entre un punto y otro Ti=k*di
float k = 5; //Constante de proporcionalidad para definir los tiempos de avance entre los puntos de la secuencia
float t1 = k*dis1, t2 = k*dis2, t3 = k*dis3, t4 = k*dis4, t5 = k*dis5;

float tf1 = t1+epsilon, tf2 = tf1+t2+epsilon, tf3 = tf2+t3+epsilon, tf4 = tf3+t4+epsilon, tf5 = tf4+t5+epsilon;

double initTime, t; //Variables para medicion del tiempo

float x1r, y1r, x1rp, y1rp;
float g1, g2, g3, g4, g5;
float f1, f2, f3, f4, f5;

float t0, c0, c1, d0, d1, e0, e1, h0, h1, r0, r1;
float kp0p1, kp0p1p, kp1p2, kp1p2p, kp2p3, kp2p3p, kp3p4, kp3p4p, kp4p5, kp4p5p;

int main(int argc, char **argv){
    ros::init(argc, argv, "genTrayectoria");
    ros::NodeHandle n;

    ros::Rate rate(15);

    ROS_INFO("Points: (%f, %f) | (%f, %f) | (%f, %f) | (%f, %f) | (%f, %f)", p0[0], p0[1], p1[0], p1[1], p2[0], p2[1], p3[0], p3[1], p4[0], p4[1]);
    ROS_INFO("Distance: %f | %f | %f | %f | %f", dis1, dis2, dis3, dis4, dis5);
    ROS_INFO("Time: %f | %f | %f | %f | %f", t1, t2, t3, t4, t5);
    ROS_INFO("TF: %f | %f | %f | %f | %f", tf1, tf2, tf3, tf4, tf5);

    ros::Publisher pub = n.advertise<controller::Trayectoria>("/trayectoria", 10);
    controller::Trayectoria msg;

    initTime = ros::Time::now().toSec(); //Obtiene el tiempo inicial

    while (ros::ok()) {
        t = ros::Time::now().toSec() - initTime; //Obtiene el tiempo actual
        ROS_INFO("Time: %f", t);

        if (t < tf1) { g1 = 1; f1 = 0; }
        else { g1 = 0; f1 = 1; }

        if (t < tf2) { g2 = 1; f2 = 0; }
        else { g2 = 0; f2 = 1; }

        if (t < tf3) { g3 = 1; f3 = 0; }
        else { g3 = 0; f3 = 1; }

        if (t < tf4) { g4 = 1; f4 = 0; }
        else { g4 = 0; f4 = 1; }

        if (t < tf5) { g5 = 1; f5 = 0; }
        else { g5 = 0; f5 = 1; }

        //-----------------------------------------------------------------------------------
        t0 = 0;
        c0 = -1/pow(t1, 2);
        c1 = 2*c0/t1;

        if (t < tf1-epsilon) {
            kp0p1 = 1 + (c0+c1*(t-t0)) * pow((t-(tf1-epsilon)), 2);
            kp0p1p = 2 * (t-(tf1-epsilon)) * (c0+c1*(t-t0)) + c1 * pow((t-(tf1-epsilon)), 2);
        } else {
            kp0p1 = 1;
            kp0p1p = 0;
        }

        //-----------------------------------------------------------------------------------
        d0 = -1/pow(t2, 2);
        d1 = 2*d0/t2;

        if (t < tf2-epsilon) {
            kp1p2 = 1 + (d0+d1*(t-tf1)) * pow((t-(tf2-epsilon)), 2);
            kp1p2p = 2 * (t-(tf2-epsilon)) * (d0+d1*(t-tf1)) + d1 * pow((t-(tf2-epsilon)), 2);
        } else {
            kp1p2 = 1;
            kp1p2p = 0;
        }

        //-----------------------------------------------------------------------------------
        e0 = -1/pow(t3, 2);
        e1 = 2*e0/t3;

        if (t < tf3-epsilon) {
            kp2p3 = 1 + (e0+e1*(t-tf2)) * pow((t-(tf3-epsilon)), 2);
            kp2p3p = 2 * (t-(tf3-epsilon)) * (e0+e1*(t-tf2)) + e1 * pow((t-(tf3-epsilon)), 2);
        } else {
            kp2p3 = 1;
            kp2p3p = 0;
        }

        //-----------------------------------------------------------------------------------
        h0 = -1/pow(t4, 2);
        h1 = 2*h0/t4;

        if (t < tf4-epsilon) {
            kp3p4 = 1 + (h0+h1*(t-tf3)) * pow((t-(tf4-epsilon)), 2);
            kp3p4p = 2 * (t-(tf4-epsilon)) * (h0+h1*(t-tf3)) + h1 * pow((t-(tf4-epsilon)), 2);
        } else {
            kp3p4 = 1;
            kp3p4p = 0;
        }

        //-----------------------------------------------------------------------------------
        r0=-1/pow(t5, 2);
        r1=2*r0/t5;

        if (t < tf5-epsilon) {
            kp4p5 = 1 + (r0+r1*(t-tf4)) * pow((t-(tf5-epsilon)), 2);
            kp4p5p = 2 * (t-(tf5-epsilon)) * (r0+r1*(t-tf4)) + r1 * pow((t-(tf5-epsilon)), 2);
        } else {
            kp4p5=1;
            kp4p5p=0;
        }

        //---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        x1r = g1*((p1[0]-p0[0])*kp0p1+p0[0])+f1*g2*((p2[0]-p1[0])*kp1p2+p1[0])+f2*g3*((p3[0]-p2[0])*kp2p3+p2[0])+f3*g4*((p4[0]-p3[0])*kp3p4+p3[0])+f4*g5*((p5[0]-p4[0])*kp4p5+p4[0]);
        y1r = g1*((p1[1]-p0[1])*kp0p1+p0[1])+f1*g2*((p2[1]-p1[1])*kp1p2+p1[1])+f2*g3*((p3[1]-p2[1])*kp2p3+p2[1])+f3*g4*((p4[1]-p3[1])*kp3p4+p3[1])+f4*g5*((p5[1]-p4[1])*kp4p5+p4[1]);

        //---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        x1rp = g1*((p1[0]-p1[0])*kp0p1p)+f1*g2*((p1[0]-p1[0])*kp1p2p)+f2*g3*((p1[0]-p1[0])*kp2p3p)+f3*g4*((p1[0]-p1[0])*kp3p4p)+f4*g5*((p1[0]-p1[0])*kp4p5p);
        y1rp = g1*((p1[1]-p0[1])*kp0p1p)+f1*g2*((p2[1]-p1[1])*kp1p2p)+f2*g3*((p3[1]-p2[1])*kp2p3p)+f3*g4*((p4[1]-p3[1])*kp3p4p)+f4*g5*((p5[1]-p4[1])*kp4p5p);

        //---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        ROS_INFO("x: %f, y: %f", x1r, y1r);

        if (t <= tf5) {
            msg.x = x1r;
            msg.y = y1r;
            msg.t = t;

            pub.publish(msg);
        }

//        if (t >= tf5) {initTime = ros::Time::now().toSec();}

        rate.sleep();
    }

    return 0;
}
