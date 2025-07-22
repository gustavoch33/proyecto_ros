#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include "sensor_msgs/Joy.h"
#include "geometry_msgs/Twist.h"

volatile int buttons[4];
volatile float axes[4];
float velocity = 0.2;

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

int main(int argc, char **argv) {

    ros::init(argc, argv, "control");
    ros::NodeHandle n;
    
    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    ros::Subscriber sub = n.subscribe<sensor_msgs::Joy>("joy", 10, &joyCallback);
    
    ros::Rate loop_rate(10);

    while (ros::ok()) {

        geometry_msgs::Twist vel;
        
        if (buttons[0] != 0 && velocity > 0.1) {
            velocity -= 0.1;
        } else if (buttons[3] != 0 && velocity < 0.8) {
            velocity += 0.1;
        }
        
        if (axes[2] < 0.0) {
            vel.angular.z = velocity * 1.5;
        } else if (axes[2] > 0.0) {
            vel.angular.z = -velocity * 1.5;
        } else {
            vel.angular.z = 0.0;
        }
        
        if (axes[1] > 0.0) {
            vel.linear.x = velocity;
        } else if (axes[1] < 0.0) {
            vel.linear.x = -velocity;
        } else {
            vel.linear.x = 0.0;
        }
        
        ROS_INFO("Velocidad: %f", velocity);
        pub.publish(vel);
        
        ros::spinOnce();
        loop_rate.sleep();

    }

    return 0;
}
