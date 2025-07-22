;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::Shutdown)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'Shutdown (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SHUTDOWN")
  (make-package "ROBOT_MSGS::SHUTDOWN"))
(unless (find-package "ROBOT_MSGS::SHUTDOWNREQUEST")
  (make-package "ROBOT_MSGS::SHUTDOWNREQUEST"))
(unless (find-package "ROBOT_MSGS::SHUTDOWNRESPONSE")
  (make-package "ROBOT_MSGS::SHUTDOWNRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::ShutdownRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::ShutdownRequest
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

(defclass robot_msgs::ShutdownResponse
  :super ros::object
  :slots (_success _description ))

(defmethod robot_msgs::ShutdownResponse
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

(defclass robot_msgs::Shutdown
  :super ros::object
  :slots ())

(setf (get robot_msgs::Shutdown :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::Shutdown :datatype-) "robot_msgs/Shutdown")
(setf (get robot_msgs::Shutdown :request) robot_msgs::ShutdownRequest)
(setf (get robot_msgs::Shutdown :response) robot_msgs::ShutdownResponse)

(defmethod robot_msgs::ShutdownRequest
  (:response () (instance robot_msgs::ShutdownResponse :init)))

(setf (get robot_msgs::ShutdownRequest :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::ShutdownRequest :datatype-) "robot_msgs/ShutdownRequest")
(setf (get robot_msgs::ShutdownRequest :definition-)
      "---
bool success
string description
")

(setf (get robot_msgs::ShutdownResponse :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::ShutdownResponse :datatype-) "robot_msgs/ShutdownResponse")
(setf (get robot_msgs::ShutdownResponse :definition-)
      "---
bool success
string description
")



(provide :robot_msgs/Shutdown "6bccbb1e6ccd1459ac90cc79251ac541")


