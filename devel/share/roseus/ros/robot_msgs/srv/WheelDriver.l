;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::WheelDriver)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'WheelDriver (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::WHEELDRIVER")
  (make-package "ROBOT_MSGS::WHEELDRIVER"))
(unless (find-package "ROBOT_MSGS::WHEELDRIVERREQUEST")
  (make-package "ROBOT_MSGS::WHEELDRIVERREQUEST"))
(unless (find-package "ROBOT_MSGS::WHEELDRIVERRESPONSE")
  (make-package "ROBOT_MSGS::WHEELDRIVERRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::WheelDriverRequest
  :super ros::object
  :slots (_todo ))

(defmethod robot_msgs::WheelDriverRequest
  (:init
   (&key
    ((:todo __todo) "")
    )
   (send-super :init)
   (setq _todo (string __todo))
   self)
  (:todo
   (&optional __todo)
   (if __todo (setq _todo __todo)) _todo)
  (:serialization-length
   ()
   (+
    ;; string _todo
    4 (length _todo)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _todo
       (write-long (length _todo) s) (princ _todo s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _todo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _todo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::WheelDriverResponse
  :super ros::object
  :slots (_status ))

(defmethod robot_msgs::WheelDriverResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_msgs::WheelDriver
  :super ros::object
  :slots ())

(setf (get robot_msgs::WheelDriver :md5sum-) "fa35b3456e4cbe35bdeeb16d2d0d52eb")
(setf (get robot_msgs::WheelDriver :datatype-) "robot_msgs/WheelDriver")
(setf (get robot_msgs::WheelDriver :request) robot_msgs::WheelDriverRequest)
(setf (get robot_msgs::WheelDriver :response) robot_msgs::WheelDriverResponse)

(defmethod robot_msgs::WheelDriverRequest
  (:response () (instance robot_msgs::WheelDriverResponse :init)))

(setf (get robot_msgs::WheelDriverRequest :md5sum-) "fa35b3456e4cbe35bdeeb16d2d0d52eb")
(setf (get robot_msgs::WheelDriverRequest :datatype-) "robot_msgs/WheelDriverRequest")
(setf (get robot_msgs::WheelDriverRequest :definition-)
      "string todo
---
bool status
")

(setf (get robot_msgs::WheelDriverResponse :md5sum-) "fa35b3456e4cbe35bdeeb16d2d0d52eb")
(setf (get robot_msgs::WheelDriverResponse :datatype-) "robot_msgs/WheelDriverResponse")
(setf (get robot_msgs::WheelDriverResponse :definition-)
      "string todo
---
bool status
")



(provide :robot_msgs/WheelDriver "fa35b3456e4cbe35bdeeb16d2d0d52eb")


