;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::RobotShutdown)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'RobotShutdown (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::ROBOTSHUTDOWN")
  (make-package "ROBOT_MSGS::ROBOTSHUTDOWN"))
(unless (find-package "ROBOT_MSGS::ROBOTSHUTDOWNREQUEST")
  (make-package "ROBOT_MSGS::ROBOTSHUTDOWNREQUEST"))
(unless (find-package "ROBOT_MSGS::ROBOTSHUTDOWNRESPONSE")
  (make-package "ROBOT_MSGS::ROBOTSHUTDOWNRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::RobotShutdownRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::RobotShutdownRequest
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

(defclass robot_msgs::RobotShutdownResponse
  :super ros::object
  :slots (_success _description ))

(defmethod robot_msgs::RobotShutdownResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _description (string __description))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::RobotShutdown
  :super ros::object
  :slots ())

(setf (get robot_msgs::RobotShutdown :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::RobotShutdown :datatype-) "robot_msgs/RobotShutdown")
(setf (get robot_msgs::RobotShutdown :request) robot_msgs::RobotShutdownRequest)
(setf (get robot_msgs::RobotShutdown :response) robot_msgs::RobotShutdownResponse)

(defmethod robot_msgs::RobotShutdownRequest
  (:response () (instance robot_msgs::RobotShutdownResponse :init)))

(setf (get robot_msgs::RobotShutdownRequest :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::RobotShutdownRequest :datatype-) "robot_msgs/RobotShutdownRequest")
(setf (get robot_msgs::RobotShutdownRequest :definition-)
      "---
bool success
string description
")

(setf (get robot_msgs::RobotShutdownResponse :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::RobotShutdownResponse :datatype-) "robot_msgs/RobotShutdownResponse")
(setf (get robot_msgs::RobotShutdownResponse :definition-)
      "---
bool success
string description
")



(provide :robot_msgs/RobotShutdown "6bccbb1e6ccd1459ac90cc79251ac541")


