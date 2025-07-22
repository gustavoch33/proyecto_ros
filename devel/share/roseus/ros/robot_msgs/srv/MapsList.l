;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::MapsList)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'MapsList (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::MAPSLIST")
  (make-package "ROBOT_MSGS::MAPSLIST"))
(unless (find-package "ROBOT_MSGS::MAPSLISTREQUEST")
  (make-package "ROBOT_MSGS::MAPSLISTREQUEST"))
(unless (find-package "ROBOT_MSGS::MAPSLISTRESPONSE")
  (make-package "ROBOT_MSGS::MAPSLISTRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::MapsListRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::MapsListRequest
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

(defclass robot_msgs::MapsListResponse
  :super ros::object
  :slots (_maps ))

(defmethod robot_msgs::MapsListResponse
  (:init
   (&key
    ((:maps __maps) ())
    )
   (send-super :init)
   (setq _maps __maps)
   self)
  (:maps
   (&rest __maps)
   (if (keywordp (car __maps))
       (send* _maps __maps)
     (progn
       (if __maps (setq _maps (car __maps)))
       _maps)))
  (:serialization-length
   ()
   (+
    ;; robot_msgs/map_size[] _maps
    (apply #'+ (send-all _maps :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_msgs/map_size[] _maps
     (write-long (length _maps) s)
     (dolist (elem _maps)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_msgs/map_size[] _maps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _maps (let (r) (dotimes (i n) (push (instance robot_msgs::map_size :init) r)) r))
     (dolist (elem- _maps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robot_msgs::MapsList
  :super ros::object
  :slots ())

(setf (get robot_msgs::MapsList :md5sum-) "95634a3fee1a76a7a235711f38773ee4")
(setf (get robot_msgs::MapsList :datatype-) "robot_msgs/MapsList")
(setf (get robot_msgs::MapsList :request) robot_msgs::MapsListRequest)
(setf (get robot_msgs::MapsList :response) robot_msgs::MapsListResponse)

(defmethod robot_msgs::MapsListRequest
  (:response () (instance robot_msgs::MapsListResponse :init)))

(setf (get robot_msgs::MapsListRequest :md5sum-) "95634a3fee1a76a7a235711f38773ee4")
(setf (get robot_msgs::MapsListRequest :datatype-) "robot_msgs/MapsListRequest")
(setf (get robot_msgs::MapsListRequest :definition-)
      "---
robot_msgs/map_size[] maps

================================================================================
MSG: robot_msgs/map_size
string id
")

(setf (get robot_msgs::MapsListResponse :md5sum-) "95634a3fee1a76a7a235711f38773ee4")
(setf (get robot_msgs::MapsListResponse :datatype-) "robot_msgs/MapsListResponse")
(setf (get robot_msgs::MapsListResponse :definition-)
      "---
robot_msgs/map_size[] maps

================================================================================
MSG: robot_msgs/map_size
string id
")



(provide :robot_msgs/MapsList "95634a3fee1a76a7a235711f38773ee4")


