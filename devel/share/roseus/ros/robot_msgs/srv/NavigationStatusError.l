;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::NavigationStatusError)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'NavigationStatusError (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::NAVIGATIONSTATUSERROR")
  (make-package "ROBOT_MSGS::NAVIGATIONSTATUSERROR"))
(unless (find-package "ROBOT_MSGS::NAVIGATIONSTATUSERRORREQUEST")
  (make-package "ROBOT_MSGS::NAVIGATIONSTATUSERRORREQUEST"))
(unless (find-package "ROBOT_MSGS::NAVIGATIONSTATUSERRORRESPONSE")
  (make-package "ROBOT_MSGS::NAVIGATIONSTATUSERRORRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::NavigationStatusErrorRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::NavigationStatusErrorRequest
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

(defclass robot_msgs::NavigationStatusErrorResponse
  :super ros::object
  :slots (_error _error_message ))

(defmethod robot_msgs::NavigationStatusErrorResponse
  (:init
   (&key
    ((:error __error) "")
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _error (string __error))
   (setq _error_message (string __error_message))
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; string _error
    4 (length _error)
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::NavigationStatusError
  :super ros::object
  :slots ())

(setf (get robot_msgs::NavigationStatusError :md5sum-) "24527b03fd34734a9d2189497fa0891a")
(setf (get robot_msgs::NavigationStatusError :datatype-) "robot_msgs/NavigationStatusError")
(setf (get robot_msgs::NavigationStatusError :request) robot_msgs::NavigationStatusErrorRequest)
(setf (get robot_msgs::NavigationStatusError :response) robot_msgs::NavigationStatusErrorResponse)

(defmethod robot_msgs::NavigationStatusErrorRequest
  (:response () (instance robot_msgs::NavigationStatusErrorResponse :init)))

(setf (get robot_msgs::NavigationStatusErrorRequest :md5sum-) "24527b03fd34734a9d2189497fa0891a")
(setf (get robot_msgs::NavigationStatusErrorRequest :datatype-) "robot_msgs/NavigationStatusErrorRequest")
(setf (get robot_msgs::NavigationStatusErrorRequest :definition-)
      "---
string error
string error_message

")

(setf (get robot_msgs::NavigationStatusErrorResponse :md5sum-) "24527b03fd34734a9d2189497fa0891a")
(setf (get robot_msgs::NavigationStatusErrorResponse :datatype-) "robot_msgs/NavigationStatusErrorResponse")
(setf (get robot_msgs::NavigationStatusErrorResponse :definition-)
      "---
string error
string error_message

")



(provide :robot_msgs/NavigationStatusError "24527b03fd34734a9d2189497fa0891a")


