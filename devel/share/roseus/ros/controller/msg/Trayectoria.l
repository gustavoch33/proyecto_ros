;; Auto-generated. Do not edit!


(when (boundp 'controller::Trayectoria)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'Trayectoria (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::TRAYECTORIA")
  (make-package "CONTROLLER::TRAYECTORIA"))

(in-package "ROS")
;;//! \htmlinclude Trayectoria.msg.html


(defclass controller::Trayectoria
  :super ros::object
  :slots (_x _y _t ))

(defmethod controller::Trayectoria
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:t __t) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _t (float __t))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _t
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _t
       (sys::poke _t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _t
     (setq _t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get controller::Trayectoria :md5sum-) "4a28bd10bf2ad79a2c715f25c5a7ebd3")
(setf (get controller::Trayectoria :datatype-) "controller/Trayectoria")
(setf (get controller::Trayectoria :definition-)
      "float64 x
float64 y
float64 t
")



(provide :controller/Trayectoria "4a28bd10bf2ad79a2c715f25c5a7ebd3")


