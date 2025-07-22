;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::Remap)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'Remap (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::REMAP")
  (make-package "ROBOT_MSGS::REMAP"))
(unless (find-package "ROBOT_MSGS::REMAPREQUEST")
  (make-package "ROBOT_MSGS::REMAPREQUEST"))
(unless (find-package "ROBOT_MSGS::REMAPRESPONSE")
  (make-package "ROBOT_MSGS::REMAPRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::RemapRequest
  :super ros::object
  :slots (_is_start ))

(defmethod robot_msgs::RemapRequest
  (:init
   (&key
    ((:is_start __is_start) nil)
    )
   (send-super :init)
   (setq _is_start __is_start)
   self)
  (:is_start
   (&optional (__is_start :null))
   (if (not (eq __is_start :null)) (setq _is_start __is_start)) _is_start)
  (:serialization-length
   ()
   (+
    ;; bool _is_start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_start
       (if _is_start (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_start
     (setq _is_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_msgs::RemapResponse
  :super ros::object
  :slots (_success ))

(defmethod robot_msgs::RemapResponse
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

(defclass robot_msgs::Remap
  :super ros::object
  :slots ())

(setf (get robot_msgs::Remap :md5sum-) "2b0934cf769a9ec6232ba13fe7cc3bd6")
(setf (get robot_msgs::Remap :datatype-) "robot_msgs/Remap")
(setf (get robot_msgs::Remap :request) robot_msgs::RemapRequest)
(setf (get robot_msgs::Remap :response) robot_msgs::RemapResponse)

(defmethod robot_msgs::RemapRequest
  (:response () (instance robot_msgs::RemapResponse :init)))

(setf (get robot_msgs::RemapRequest :md5sum-) "2b0934cf769a9ec6232ba13fe7cc3bd6")
(setf (get robot_msgs::RemapRequest :datatype-) "robot_msgs/RemapRequest")
(setf (get robot_msgs::RemapRequest :definition-)
      "bool is_start
---
bool success
")

(setf (get robot_msgs::RemapResponse :md5sum-) "2b0934cf769a9ec6232ba13fe7cc3bd6")
(setf (get robot_msgs::RemapResponse :datatype-) "robot_msgs/RemapResponse")
(setf (get robot_msgs::RemapResponse :definition-)
      "bool is_start
---
bool success
")



(provide :robot_msgs/Remap "2b0934cf769a9ec6232ba13fe7cc3bd6")


