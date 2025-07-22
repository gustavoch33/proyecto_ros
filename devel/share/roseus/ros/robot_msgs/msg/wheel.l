;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::wheel)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'wheel (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::WHEEL")
  (make-package "ROBOT_MSGS::WHEEL"))

(in-package "ROS")
;;//! \htmlinclude wheel.msg.html


(defclass robot_msgs::wheel
  :super ros::object
  :slots (_ticks _speed _status _voltage ))

(defmethod robot_msgs::wheel
  (:init
   (&key
    ((:ticks __ticks) 0)
    ((:speed __speed) 0)
    ((:status __status) "")
    ((:voltage __voltage) 0.0)
    )
   (send-super :init)
   (setq _ticks (round __ticks))
   (setq _speed (round __speed))
   (setq _status (string __status))
   (setq _voltage (float __voltage))
   self)
  (:ticks
   (&optional __ticks)
   (if __ticks (setq _ticks __ticks)) _ticks)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; int32 _ticks
    4
    ;; int32 _speed
    4
    ;; string _status
    4 (length _status)
    ;; float32 _voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ticks
       (write-long _ticks s)
     ;; int32 _speed
       (write-long _speed s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ticks
     (setq _ticks (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_msgs::wheel :md5sum-) "f4cd7b31463f8774369e41de285741fe")
(setf (get robot_msgs::wheel :datatype-) "robot_msgs/wheel")
(setf (get robot_msgs::wheel :definition-)
      "int32 ticks
int32 speed
string status
float32 voltage
")



(provide :robot_msgs/wheel "f4cd7b31463f8774369e41de285741fe")


