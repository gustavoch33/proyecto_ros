;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::Coordinates)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'Coordinates (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::COORDINATES")
  (make-package "ROBOT_MSGS::COORDINATES"))

(in-package "ROS")
;;//! \htmlinclude Coordinates.msg.html


(defclass robot_msgs::Coordinates
  :super ros::object
  :slots (_latitude _longitude _status _source ))

(defmethod robot_msgs::Coordinates
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:status __status) nil)
    ((:source __source) "")
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _status __status)
   (setq _source (string __source))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; bool _status
    1
    ;; string _source
    4 (length _source)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_msgs::Coordinates :md5sum-) "46d1ab400450b699b64a700e5bad67d2")
(setf (get robot_msgs::Coordinates :datatype-) "robot_msgs/Coordinates")
(setf (get robot_msgs::Coordinates :definition-)
      "float32 latitude
float32 longitude
bool status
string source
")



(provide :robot_msgs/Coordinates "46d1ab400450b699b64a700e5bad67d2")


