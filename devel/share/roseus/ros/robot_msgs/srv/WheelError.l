;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::WheelError)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'WheelError (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::WHEELERROR")
  (make-package "ROBOT_MSGS::WHEELERROR"))
(unless (find-package "ROBOT_MSGS::WHEELERRORREQUEST")
  (make-package "ROBOT_MSGS::WHEELERRORREQUEST"))
(unless (find-package "ROBOT_MSGS::WHEELERRORRESPONSE")
  (make-package "ROBOT_MSGS::WHEELERRORRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::WheelErrorRequest
  :super ros::object
  :slots (_status ))

(defmethod robot_msgs::WheelErrorRequest
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::WheelErrorResponse
  :super ros::object
  :slots (_success ))

(defmethod robot_msgs::WheelErrorResponse
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

(defclass robot_msgs::WheelError
  :super ros::object
  :slots ())

(setf (get robot_msgs::WheelError :md5sum-) "1418f8f10b8efb185319b60d99ac214a")
(setf (get robot_msgs::WheelError :datatype-) "robot_msgs/WheelError")
(setf (get robot_msgs::WheelError :request) robot_msgs::WheelErrorRequest)
(setf (get robot_msgs::WheelError :response) robot_msgs::WheelErrorResponse)

(defmethod robot_msgs::WheelErrorRequest
  (:response () (instance robot_msgs::WheelErrorResponse :init)))

(setf (get robot_msgs::WheelErrorRequest :md5sum-) "1418f8f10b8efb185319b60d99ac214a")
(setf (get robot_msgs::WheelErrorRequest :datatype-) "robot_msgs/WheelErrorRequest")
(setf (get robot_msgs::WheelErrorRequest :definition-)
      "string status
---
bool success
")

(setf (get robot_msgs::WheelErrorResponse :md5sum-) "1418f8f10b8efb185319b60d99ac214a")
(setf (get robot_msgs::WheelErrorResponse :datatype-) "robot_msgs/WheelErrorResponse")
(setf (get robot_msgs::WheelErrorResponse :definition-)
      "string status
---
bool success
")



(provide :robot_msgs/WheelError "1418f8f10b8efb185319b60d99ac214a")


