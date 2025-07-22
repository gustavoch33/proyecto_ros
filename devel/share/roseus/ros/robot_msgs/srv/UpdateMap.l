;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::UpdateMap)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'UpdateMap (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::UPDATEMAP")
  (make-package "ROBOT_MSGS::UPDATEMAP"))
(unless (find-package "ROBOT_MSGS::UPDATEMAPREQUEST")
  (make-package "ROBOT_MSGS::UPDATEMAPREQUEST"))
(unless (find-package "ROBOT_MSGS::UPDATEMAPRESPONSE")
  (make-package "ROBOT_MSGS::UPDATEMAPRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::UpdateMapRequest
  :super ros::object
  :slots (_id _width _height _origin _resolution _map ))

(defmethod robot_msgs::UpdateMapRequest
  (:init
   (&key
    ((:id __id) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:origin __origin) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:resolution __resolution) 0.0)
    ((:map __map) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _origin __origin)
   (setq _resolution (float __resolution))
   (setq _map __map)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:origin
   (&optional __origin)
   (if __origin (setq _origin __origin)) _origin)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; float32[] _origin
    (* 4    (length _origin)) 4
    ;; float32 _resolution
    4
    ;; int32[] _map
    (* 4    (length _map)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; float32[] _origin
     (write-long (length _origin) s)
     (dotimes (i (length _origin))
       (sys::poke (elt _origin i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32[] _map
     (write-long (length _map) s)
     (dotimes (i (length _map))
       (write-long (elt _map i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _origin
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _origin (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _origin i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32[] _map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _map i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass robot_msgs::UpdateMapResponse
  :super ros::object
  :slots (_success ))

(defmethod robot_msgs::UpdateMapResponse
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

(defclass robot_msgs::UpdateMap
  :super ros::object
  :slots ())

(setf (get robot_msgs::UpdateMap :md5sum-) "a4ce1b3ffd75a92f609cb75ae17890a9")
(setf (get robot_msgs::UpdateMap :datatype-) "robot_msgs/UpdateMap")
(setf (get robot_msgs::UpdateMap :request) robot_msgs::UpdateMapRequest)
(setf (get robot_msgs::UpdateMap :response) robot_msgs::UpdateMapResponse)

(defmethod robot_msgs::UpdateMapRequest
  (:response () (instance robot_msgs::UpdateMapResponse :init)))

(setf (get robot_msgs::UpdateMapRequest :md5sum-) "a4ce1b3ffd75a92f609cb75ae17890a9")
(setf (get robot_msgs::UpdateMapRequest :datatype-) "robot_msgs/UpdateMapRequest")
(setf (get robot_msgs::UpdateMapRequest :definition-)
      "string id
int32 width
int32 height
float32[] origin
float32 resolution
int32[] map
---
bool success

")

(setf (get robot_msgs::UpdateMapResponse :md5sum-) "a4ce1b3ffd75a92f609cb75ae17890a9")
(setf (get robot_msgs::UpdateMapResponse :datatype-) "robot_msgs/UpdateMapResponse")
(setf (get robot_msgs::UpdateMapResponse :definition-)
      "string id
int32 width
int32 height
float32[] origin
float32 resolution
int32[] map
---
bool success

")



(provide :robot_msgs/UpdateMap "a4ce1b3ffd75a92f609cb75ae17890a9")


