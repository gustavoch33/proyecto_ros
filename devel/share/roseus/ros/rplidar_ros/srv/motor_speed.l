;; Auto-generated. Do not edit!


(when (boundp 'rplidar_ros::motor_speed)
  (if (not (find-package "RPLIDAR_ROS"))
    (make-package "RPLIDAR_ROS"))
  (shadow 'motor_speed (find-package "RPLIDAR_ROS")))
(unless (find-package "RPLIDAR_ROS::MOTOR_SPEED")
  (make-package "RPLIDAR_ROS::MOTOR_SPEED"))
(unless (find-package "RPLIDAR_ROS::MOTOR_SPEEDREQUEST")
  (make-package "RPLIDAR_ROS::MOTOR_SPEEDREQUEST"))
(unless (find-package "RPLIDAR_ROS::MOTOR_SPEEDRESPONSE")
  (make-package "RPLIDAR_ROS::MOTOR_SPEEDRESPONSE"))

(in-package "ROS")





(defclass rplidar_ros::motor_speedRequest
  :super ros::object
  :slots (_speed ))

(defmethod rplidar_ros::motor_speedRequest
  (:init
   (&key
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; uint16 _speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _speed
       (write-word _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass rplidar_ros::motor_speedResponse
  :super ros::object
  :slots (_result ))

(defmethod rplidar_ros::motor_speedResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rplidar_ros::motor_speed
  :super ros::object
  :slots ())

(setf (get rplidar_ros::motor_speed :md5sum-) "6fefab52ba1ca2e290111bbeaf3560e9")
(setf (get rplidar_ros::motor_speed :datatype-) "rplidar_ros/motor_speed")
(setf (get rplidar_ros::motor_speed :request) rplidar_ros::motor_speedRequest)
(setf (get rplidar_ros::motor_speed :response) rplidar_ros::motor_speedResponse)

(defmethod rplidar_ros::motor_speedRequest
  (:response () (instance rplidar_ros::motor_speedResponse :init)))

(setf (get rplidar_ros::motor_speedRequest :md5sum-) "6fefab52ba1ca2e290111bbeaf3560e9")
(setf (get rplidar_ros::motor_speedRequest :datatype-) "rplidar_ros/motor_speedRequest")
(setf (get rplidar_ros::motor_speedRequest :definition-)
      "uint16 speed
---
string result

")

(setf (get rplidar_ros::motor_speedResponse :md5sum-) "6fefab52ba1ca2e290111bbeaf3560e9")
(setf (get rplidar_ros::motor_speedResponse :datatype-) "rplidar_ros/motor_speedResponse")
(setf (get rplidar_ros::motor_speedResponse :definition-)
      "uint16 speed
---
string result

")



(provide :rplidar_ros/motor_speed "6fefab52ba1ca2e290111bbeaf3560e9")


