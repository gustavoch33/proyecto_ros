;; Auto-generated. Do not edit!


(when (boundp 'controller::DatosControl)
  (if (not (find-package "CONTROLLER"))
    (make-package "CONTROLLER"))
  (shadow 'DatosControl (find-package "CONTROLLER")))
(unless (find-package "CONTROLLER::DATOSCONTROL")
  (make-package "CONTROLLER::DATOSCONTROL"))

(in-package "ROS")
;;//! \htmlinclude DatosControl.msg.html


(defclass controller::DatosControl
  :super ros::object
  :slots (_linearVel _angularVel _angle _x _xd _y _yd _ex _ey _evx _evy _eT ))

(defmethod controller::DatosControl
  (:init
   (&key
    ((:linearVel __linearVel) 0.0)
    ((:angularVel __angularVel) 0.0)
    ((:angle __angle) 0.0)
    ((:x __x) 0.0)
    ((:xd __xd) 0.0)
    ((:y __y) 0.0)
    ((:yd __yd) 0.0)
    ((:ex __ex) 0.0)
    ((:ey __ey) 0.0)
    ((:evx __evx) 0.0)
    ((:evy __evy) 0.0)
    ((:eT __eT) 0.0)
    )
   (send-super :init)
   (setq _linearVel (float __linearVel))
   (setq _angularVel (float __angularVel))
   (setq _angle (float __angle))
   (setq _x (float __x))
   (setq _xd (float __xd))
   (setq _y (float __y))
   (setq _yd (float __yd))
   (setq _ex (float __ex))
   (setq _ey (float __ey))
   (setq _evx (float __evx))
   (setq _evy (float __evy))
   (setq _eT (float __eT))
   self)
  (:linearVel
   (&optional __linearVel)
   (if __linearVel (setq _linearVel __linearVel)) _linearVel)
  (:angularVel
   (&optional __angularVel)
   (if __angularVel (setq _angularVel __angularVel)) _angularVel)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:xd
   (&optional __xd)
   (if __xd (setq _xd __xd)) _xd)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yd
   (&optional __yd)
   (if __yd (setq _yd __yd)) _yd)
  (:ex
   (&optional __ex)
   (if __ex (setq _ex __ex)) _ex)
  (:ey
   (&optional __ey)
   (if __ey (setq _ey __ey)) _ey)
  (:evx
   (&optional __evx)
   (if __evx (setq _evx __evx)) _evx)
  (:evy
   (&optional __evy)
   (if __evy (setq _evy __evy)) _evy)
  (:eT
   (&optional __eT)
   (if __eT (setq _eT __eT)) _eT)
  (:serialization-length
   ()
   (+
    ;; float64 _linearVel
    8
    ;; float64 _angularVel
    8
    ;; float64 _angle
    8
    ;; float64 _x
    8
    ;; float64 _xd
    8
    ;; float64 _y
    8
    ;; float64 _yd
    8
    ;; float64 _ex
    8
    ;; float64 _ey
    8
    ;; float64 _evx
    8
    ;; float64 _evy
    8
    ;; float64 _eT
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linearVel
       (sys::poke _linearVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angularVel
       (sys::poke _angularVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xd
       (sys::poke _xd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yd
       (sys::poke _yd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ex
       (sys::poke _ex (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ey
       (sys::poke _ey (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _evx
       (sys::poke _evx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _evy
       (sys::poke _evy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _eT
       (sys::poke _eT (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linearVel
     (setq _linearVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angularVel
     (setq _angularVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xd
     (setq _xd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yd
     (setq _yd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ex
     (setq _ex (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ey
     (setq _ey (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _evx
     (setq _evx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _evy
     (setq _evy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _eT
     (setq _eT (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get controller::DatosControl :md5sum-) "837132ccf45cf52b00c57285b91233c7")
(setf (get controller::DatosControl :datatype-) "controller/DatosControl")
(setf (get controller::DatosControl :definition-)
      "float64 linearVel
float64 angularVel
float64 angle
float64 x
float64 xd
float64 y
float64 yd
float64 ex
float64 ey
float64 evx
float64 evy
float64 eT


")



(provide :controller/DatosControl "837132ccf45cf52b00c57285b91233c7")


