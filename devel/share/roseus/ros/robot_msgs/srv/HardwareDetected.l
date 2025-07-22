;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::HardwareDetected)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'HardwareDetected (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::HARDWAREDETECTED")
  (make-package "ROBOT_MSGS::HARDWAREDETECTED"))
(unless (find-package "ROBOT_MSGS::HARDWAREDETECTEDREQUEST")
  (make-package "ROBOT_MSGS::HARDWAREDETECTEDREQUEST"))
(unless (find-package "ROBOT_MSGS::HARDWAREDETECTEDRESPONSE")
  (make-package "ROBOT_MSGS::HARDWAREDETECTEDRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::HardwareDetectedRequest
  :super ros::object
  :slots (_success ))

(defmethod robot_msgs::HardwareDetectedRequest
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_msgs::HardwareDetectedResponse
  :super ros::object
  :slots (_received ))

(defmethod robot_msgs::HardwareDetectedResponse
  (:init
   (&key
    ((:received __received) nil)
    )
   (send-super :init)
   (setq _received __received)
   self)
  (:received
   (&optional (__received :null))
   (if (not (eq __received :null)) (setq _received __received)) _received)
  (:serialization-length
   ()
   (+
    ;; bool _received
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _received
       (if _received (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _received
     (setq _received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_msgs::HardwareDetected
  :super ros::object
  :slots ())

(setf (get robot_msgs::HardwareDetected :md5sum-) "c7a46eb97e96ced9baa3a1296f1c576c")
(setf (get robot_msgs::HardwareDetected :datatype-) "robot_msgs/HardwareDetected")
(setf (get robot_msgs::HardwareDetected :request) robot_msgs::HardwareDetectedRequest)
(setf (get robot_msgs::HardwareDetected :response) robot_msgs::HardwareDetectedResponse)

(defmethod robot_msgs::HardwareDetectedRequest
  (:response () (instance robot_msgs::HardwareDetectedResponse :init)))

(setf (get robot_msgs::HardwareDetectedRequest :md5sum-) "c7a46eb97e96ced9baa3a1296f1c576c")
(setf (get robot_msgs::HardwareDetectedRequest :datatype-) "robot_msgs/HardwareDetectedRequest")
(setf (get robot_msgs::HardwareDetectedRequest :definition-)
      "bool success
---
bool received

")

(setf (get robot_msgs::HardwareDetectedResponse :md5sum-) "c7a46eb97e96ced9baa3a1296f1c576c")
(setf (get robot_msgs::HardwareDetectedResponse :datatype-) "robot_msgs/HardwareDetectedResponse")
(setf (get robot_msgs::HardwareDetectedResponse :definition-)
      "bool success
---
bool received

")



(provide :robot_msgs/HardwareDetected "c7a46eb97e96ced9baa3a1296f1c576c")


