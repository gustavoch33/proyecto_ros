;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::map_size)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'map_size (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::MAP_SIZE")
  (make-package "ROBOT_MSGS::MAP_SIZE"))

(in-package "ROS")
;;//! \htmlinclude map_size.msg.html


(defclass robot_msgs::map_size
  :super ros::object
  :slots (_id _size ))

(defmethod robot_msgs::map_size
  (:init
   (&key
    ((:id __id) "")
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _size (round __size))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_msgs::map_size :md5sum-) "ff688be933a0f08df7fa3860e57820bf")
(setf (get robot_msgs::map_size :datatype-) "robot_msgs/map_size")
(setf (get robot_msgs::map_size :definition-)
      "string id
int32 size
")



(provide :robot_msgs/map_size "ff688be933a0f08df7fa3860e57820bf")


