;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::GPS)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'GPS (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::GPS")
  (make-package "ROBOT_MSGS::GPS"))

(in-package "ROS")
;;//! \htmlinclude GPS.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_msgs::GPS
  :super ros::object
  :slots (_header _data ))

(defmethod robot_msgs::GPS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (instance robot_msgs::Coordinates :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; robot_msgs/Coordinates _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robot_msgs/Coordinates _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robot_msgs/Coordinates _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get robot_msgs::GPS :md5sum-) "402b5bf0ad7aaddd56250f3d40787300")
(setf (get robot_msgs::GPS :datatype-) "robot_msgs/GPS")
(setf (get robot_msgs::GPS :definition-)
      "Header header
robot_msgs/Coordinates data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: robot_msgs/Coordinates
float32 latitude
float32 longitude
bool status
string source
")



(provide :robot_msgs/GPS "402b5bf0ad7aaddd56250f3d40787300")


