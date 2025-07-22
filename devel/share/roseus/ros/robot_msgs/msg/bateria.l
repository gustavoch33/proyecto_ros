;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::bateria)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'bateria (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::BATERIA")
  (make-package "ROBOT_MSGS::BATERIA"))

(in-package "ROS")
;;//! \htmlinclude bateria.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_msgs::bateria
  :super ros::object
  :slots (_header _voltage _current _status_of_charge _temperature _Ampere_per_hour _is_charging _load_status ))

(defmethod robot_msgs::bateria
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    ((:status_of_charge __status_of_charge) 0.0)
    ((:temperature __temperature) 0.0)
    ((:Ampere_per_hour __Ampere_per_hour) 0.0)
    ((:is_charging __is_charging) nil)
    ((:load_status __load_status) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   (setq _status_of_charge (float __status_of_charge))
   (setq _temperature (float __temperature))
   (setq _Ampere_per_hour (float __Ampere_per_hour))
   (setq _is_charging __is_charging)
   (setq _load_status __load_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:status_of_charge
   (&optional __status_of_charge)
   (if __status_of_charge (setq _status_of_charge __status_of_charge)) _status_of_charge)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:Ampere_per_hour
   (&optional __Ampere_per_hour)
   (if __Ampere_per_hour (setq _Ampere_per_hour __Ampere_per_hour)) _Ampere_per_hour)
  (:is_charging
   (&optional (__is_charging :null))
   (if (not (eq __is_charging :null)) (setq _is_charging __is_charging)) _is_charging)
  (:load_status
   (&optional (__load_status :null))
   (if (not (eq __load_status :null)) (setq _load_status __load_status)) _load_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ;; float32 _status_of_charge
    4
    ;; float32 _temperature
    4
    ;; float32 _Ampere_per_hour
    4
    ;; bool _is_charging
    1
    ;; bool _load_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _status_of_charge
       (sys::poke _status_of_charge (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ampere_per_hour
       (sys::poke _Ampere_per_hour (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_charging
       (if _is_charging (write-byte -1 s) (write-byte 0 s))
     ;; bool _load_status
       (if _load_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _status_of_charge
     (setq _status_of_charge (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ampere_per_hour
     (setq _Ampere_per_hour (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_charging
     (setq _is_charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _load_status
     (setq _load_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_msgs::bateria :md5sum-) "67d61af42115ef4cc2745e3e4c9ffbb9")
(setf (get robot_msgs::bateria :datatype-) "robot_msgs/bateria")
(setf (get robot_msgs::bateria :definition-)
      "Header header
float32 voltage
float32 current
float32 status_of_charge
float32 temperature
float32 Ampere_per_hour
bool is_charging
bool load_status

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

")



(provide :robot_msgs/bateria "67d61af42115ef4cc2745e3e4c9ffbb9")


