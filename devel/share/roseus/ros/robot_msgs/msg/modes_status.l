;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::modes_status)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'modes_status (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::MODES_STATUS")
  (make-package "ROBOT_MSGS::MODES_STATUS"))

(in-package "ROS")
;;//! \htmlinclude modes_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_msgs::modes_status
  :super ros::object
  :slots (_header _modes ))

(defmethod robot_msgs::modes_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:modes __modes) (instance robot_msgs::mode_status :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _modes __modes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:modes
   (&rest __modes)
   (if (keywordp (car __modes))
       (send* _modes __modes)
     (progn
       (if __modes (setq _modes (car __modes)))
       _modes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; robot_msgs/mode_status _modes
    (send _modes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robot_msgs/mode_status _modes
       (send _modes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robot_msgs/mode_status _modes
     (send _modes :deserialize buf ptr-) (incf ptr- (send _modes :serialization-length))
   ;;
   self)
  )

(setf (get robot_msgs::modes_status :md5sum-) "1df3589f7b661a51051719c491977642")
(setf (get robot_msgs::modes_status :datatype-) "robot_msgs/modes_status")
(setf (get robot_msgs::modes_status :definition-)
      "Header header
robot_msgs/mode_status modes
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
MSG: robot_msgs/mode_status
bool docking
bool manual
bool navigation
bool mapping
bool stand_by
")



(provide :robot_msgs/modes_status "1df3589f7b661a51051719c491977642")


