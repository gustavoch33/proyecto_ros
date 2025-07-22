;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::GetGain)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'GetGain (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::GETGAIN")
  (make-package "ROBOT_MSGS::GETGAIN"))
(unless (find-package "ROBOT_MSGS::GETGAINREQUEST")
  (make-package "ROBOT_MSGS::GETGAINREQUEST"))
(unless (find-package "ROBOT_MSGS::GETGAINRESPONSE")
  (make-package "ROBOT_MSGS::GETGAINRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::GetGainRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::GetGainRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_msgs::GetGainResponse
  :super ros::object
  :slots (_kp _ki _kd ))

(defmethod robot_msgs::GetGainResponse
  (:init
   (&key
    ((:kp __kp) 0)
    ((:ki __ki) 0)
    ((:kd __kd) 0)
    )
   (send-super :init)
   (setq _kp (round __kp))
   (setq _ki (round __ki))
   (setq _kd (round __kd))
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; int32 _kp
    4
    ;; int32 _ki
    4
    ;; int32 _kd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _kp
       (write-long _kp s)
     ;; int32 _ki
       (write-long _ki s)
     ;; int32 _kd
       (write-long _kd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _kp
     (setq _kp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ki
     (setq _ki (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kd
     (setq _kd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_msgs::GetGain
  :super ros::object
  :slots ())

(setf (get robot_msgs::GetGain :md5sum-) "179ec88417e4994e631c5b039671a399")
(setf (get robot_msgs::GetGain :datatype-) "robot_msgs/GetGain")
(setf (get robot_msgs::GetGain :request) robot_msgs::GetGainRequest)
(setf (get robot_msgs::GetGain :response) robot_msgs::GetGainResponse)

(defmethod robot_msgs::GetGainRequest
  (:response () (instance robot_msgs::GetGainResponse :init)))

(setf (get robot_msgs::GetGainRequest :md5sum-) "179ec88417e4994e631c5b039671a399")
(setf (get robot_msgs::GetGainRequest :datatype-) "robot_msgs/GetGainRequest")
(setf (get robot_msgs::GetGainRequest :definition-)
      "---
int32 kp
int32 ki
int32 kd
")

(setf (get robot_msgs::GetGainResponse :md5sum-) "179ec88417e4994e631c5b039671a399")
(setf (get robot_msgs::GetGainResponse :datatype-) "robot_msgs/GetGainResponse")
(setf (get robot_msgs::GetGainResponse :definition-)
      "---
int32 kp
int32 ki
int32 kd
")



(provide :robot_msgs/GetGain "179ec88417e4994e631c5b039671a399")


