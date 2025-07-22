;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::CurrentMap)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'CurrentMap (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::CURRENTMAP")
  (make-package "ROBOT_MSGS::CURRENTMAP"))
(unless (find-package "ROBOT_MSGS::CURRENTMAPREQUEST")
  (make-package "ROBOT_MSGS::CURRENTMAPREQUEST"))
(unless (find-package "ROBOT_MSGS::CURRENTMAPRESPONSE")
  (make-package "ROBOT_MSGS::CURRENTMAPRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::CurrentMapRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::CurrentMapRequest
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

(defclass robot_msgs::CurrentMapResponse
  :super ros::object
  :slots (_map ))

(defmethod robot_msgs::CurrentMapResponse
  (:init
   (&key
    ((:map __map) "")
    )
   (send-super :init)
   (setq _map (string __map))
   self)
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:serialization-length
   ()
   (+
    ;; string _map
    4 (length _map)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map
       (write-long (length _map) s) (princ _map s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::CurrentMap
  :super ros::object
  :slots ())

(setf (get robot_msgs::CurrentMap :md5sum-) "aa8aee7f6c8d5b8306117b46af679744")
(setf (get robot_msgs::CurrentMap :datatype-) "robot_msgs/CurrentMap")
(setf (get robot_msgs::CurrentMap :request) robot_msgs::CurrentMapRequest)
(setf (get robot_msgs::CurrentMap :response) robot_msgs::CurrentMapResponse)

(defmethod robot_msgs::CurrentMapRequest
  (:response () (instance robot_msgs::CurrentMapResponse :init)))

(setf (get robot_msgs::CurrentMapRequest :md5sum-) "aa8aee7f6c8d5b8306117b46af679744")
(setf (get robot_msgs::CurrentMapRequest :datatype-) "robot_msgs/CurrentMapRequest")
(setf (get robot_msgs::CurrentMapRequest :definition-)
      "---
string map
")

(setf (get robot_msgs::CurrentMapResponse :md5sum-) "aa8aee7f6c8d5b8306117b46af679744")
(setf (get robot_msgs::CurrentMapResponse :datatype-) "robot_msgs/CurrentMapResponse")
(setf (get robot_msgs::CurrentMapResponse :definition-)
      "---
string map
")



(provide :robot_msgs/CurrentMap "aa8aee7f6c8d5b8306117b46af679744")


