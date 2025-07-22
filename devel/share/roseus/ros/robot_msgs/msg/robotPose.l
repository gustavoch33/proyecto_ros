;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::robotPose)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'robotPose (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::ROBOTPOSE")
  (make-package "ROBOT_MSGS::ROBOTPOSE"))

(in-package "ROS")
;;//! \htmlinclude robotPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robot_msgs::robotPose
  :super ros::object
  :slots (_pose _resolution ))

(defmethod robot_msgs::robotPose
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:resolution __resolution) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _resolution (float __resolution))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float32 _resolution
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_msgs::robotPose :md5sum-) "d74e6214c9884a7c0f81a8910bcb3b84")
(setf (get robot_msgs::robotPose :datatype-) "robot_msgs/robotPose")
(setf (get robot_msgs::robotPose :definition-)
      "geometry_msgs/Pose pose
float32 resolution
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :robot_msgs/robotPose "d74e6214c9884a7c0f81a8910bcb3b84")


