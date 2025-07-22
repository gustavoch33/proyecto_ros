;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::IsHardwareReady)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'IsHardwareReady (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::ISHARDWAREREADY")
  (make-package "ROBOT_MSGS::ISHARDWAREREADY"))
(unless (find-package "ROBOT_MSGS::ISHARDWAREREADYREQUEST")
  (make-package "ROBOT_MSGS::ISHARDWAREREADYREQUEST"))
(unless (find-package "ROBOT_MSGS::ISHARDWAREREADYRESPONSE")
  (make-package "ROBOT_MSGS::ISHARDWAREREADYRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::IsHardwareReadyRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::IsHardwareReadyRequest
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

(defclass robot_msgs::IsHardwareReadyResponse
  :super ros::object
  :slots (_success _description ))

(defmethod robot_msgs::IsHardwareReadyResponse
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

(defclass robot_msgs::IsHardwareReady
  :super ros::object
  :slots ())

(setf (get robot_msgs::IsHardwareReady :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::IsHardwareReady :datatype-) "robot_msgs/IsHardwareReady")
(setf (get robot_msgs::IsHardwareReady :request) robot_msgs::IsHardwareReadyRequest)
(setf (get robot_msgs::IsHardwareReady :response) robot_msgs::IsHardwareReadyResponse)

(defmethod robot_msgs::IsHardwareReadyRequest
  (:response () (instance robot_msgs::IsHardwareReadyResponse :init)))

(setf (get robot_msgs::IsHardwareReadyRequest :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::IsHardwareReadyRequest :datatype-) "robot_msgs/IsHardwareReadyRequest")
(setf (get robot_msgs::IsHardwareReadyRequest :definition-)
      "---
bool success
string description
")

(setf (get robot_msgs::IsHardwareReadyResponse :md5sum-) "6bccbb1e6ccd1459ac90cc79251ac541")
(setf (get robot_msgs::IsHardwareReadyResponse :datatype-) "robot_msgs/IsHardwareReadyResponse")
(setf (get robot_msgs::IsHardwareReadyResponse :definition-)
      "---
bool success
string description
")



(provide :robot_msgs/IsHardwareReady "6bccbb1e6ccd1459ac90cc79251ac541")


