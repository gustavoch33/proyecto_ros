;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::DeleteMap)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'DeleteMap (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::DELETEMAP")
  (make-package "ROBOT_MSGS::DELETEMAP"))
(unless (find-package "ROBOT_MSGS::DELETEMAPREQUEST")
  (make-package "ROBOT_MSGS::DELETEMAPREQUEST"))
(unless (find-package "ROBOT_MSGS::DELETEMAPRESPONSE")
  (make-package "ROBOT_MSGS::DELETEMAPRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::DeleteMapRequest
  :super ros::object
  :slots (_id ))

(defmethod robot_msgs::DeleteMapRequest
  (:init
   (&key
    ((:id __id) "")
    )
   (send-super :init)
   (setq _id (string __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::DeleteMapResponse
  :super ros::object
  :slots (_success ))

(defmethod robot_msgs::DeleteMapResponse
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

(defclass robot_msgs::DeleteMap
  :super ros::object
  :slots ())

(setf (get robot_msgs::DeleteMap :md5sum-) "4dc5c1ae2e494627977ff6a6eeb914ca")
(setf (get robot_msgs::DeleteMap :datatype-) "robot_msgs/DeleteMap")
(setf (get robot_msgs::DeleteMap :request) robot_msgs::DeleteMapRequest)
(setf (get robot_msgs::DeleteMap :response) robot_msgs::DeleteMapResponse)

(defmethod robot_msgs::DeleteMapRequest
  (:response () (instance robot_msgs::DeleteMapResponse :init)))

(setf (get robot_msgs::DeleteMapRequest :md5sum-) "4dc5c1ae2e494627977ff6a6eeb914ca")
(setf (get robot_msgs::DeleteMapRequest :datatype-) "robot_msgs/DeleteMapRequest")
(setf (get robot_msgs::DeleteMapRequest :definition-)
      "string id
---
bool success
")

(setf (get robot_msgs::DeleteMapResponse :md5sum-) "4dc5c1ae2e494627977ff6a6eeb914ca")
(setf (get robot_msgs::DeleteMapResponse :datatype-) "robot_msgs/DeleteMapResponse")
(setf (get robot_msgs::DeleteMapResponse :definition-)
      "string id
---
bool success
")



(provide :robot_msgs/DeleteMap "4dc5c1ae2e494627977ff6a6eeb914ca")


