;; Auto-generated. Do not edit!


(when (boundp 'zlac706_driver_control::WheelDriver)
  (if (not (find-package "ZLAC706_DRIVER_CONTROL"))
    (make-package "ZLAC706_DRIVER_CONTROL"))
  (shadow 'WheelDriver (find-package "ZLAC706_DRIVER_CONTROL")))
(unless (find-package "ZLAC706_DRIVER_CONTROL::WHEELDRIVER")
  (make-package "ZLAC706_DRIVER_CONTROL::WHEELDRIVER"))
(unless (find-package "ZLAC706_DRIVER_CONTROL::WHEELDRIVERREQUEST")
  (make-package "ZLAC706_DRIVER_CONTROL::WHEELDRIVERREQUEST"))
(unless (find-package "ZLAC706_DRIVER_CONTROL::WHEELDRIVERRESPONSE")
  (make-package "ZLAC706_DRIVER_CONTROL::WHEELDRIVERRESPONSE"))

(in-package "ROS")





(defclass zlac706_driver_control::WheelDriverRequest
  :super ros::object
  :slots (_rueda ))

(defmethod zlac706_driver_control::WheelDriverRequest
  (:init
   (&key
    ((:rueda __rueda) "")
    )
   (send-super :init)
   (setq _rueda (string __rueda))
   self)
  (:rueda
   (&optional __rueda)
   (if __rueda (setq _rueda __rueda)) _rueda)
  (:serialization-length
   ()
   (+
    ;; string _rueda
    4 (length _rueda)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _rueda
       (write-long (length _rueda) s) (princ _rueda s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _rueda
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rueda (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass zlac706_driver_control::WheelDriverResponse
  :super ros::object
  :slots (_status ))

(defmethod zlac706_driver_control::WheelDriverResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass zlac706_driver_control::WheelDriver
  :super ros::object
  :slots ())

(setf (get zlac706_driver_control::WheelDriver :md5sum-) "3ee118de48c6d49aa063a6db9c3e1ac0")
(setf (get zlac706_driver_control::WheelDriver :datatype-) "zlac706_driver_control/WheelDriver")
(setf (get zlac706_driver_control::WheelDriver :request) zlac706_driver_control::WheelDriverRequest)
(setf (get zlac706_driver_control::WheelDriver :response) zlac706_driver_control::WheelDriverResponse)

(defmethod zlac706_driver_control::WheelDriverRequest
  (:response () (instance zlac706_driver_control::WheelDriverResponse :init)))

(setf (get zlac706_driver_control::WheelDriverRequest :md5sum-) "3ee118de48c6d49aa063a6db9c3e1ac0")
(setf (get zlac706_driver_control::WheelDriverRequest :datatype-) "zlac706_driver_control/WheelDriverRequest")
(setf (get zlac706_driver_control::WheelDriverRequest :definition-)
      "string rueda
---
bool status


")

(setf (get zlac706_driver_control::WheelDriverResponse :md5sum-) "3ee118de48c6d49aa063a6db9c3e1ac0")
(setf (get zlac706_driver_control::WheelDriverResponse :datatype-) "zlac706_driver_control/WheelDriverResponse")
(setf (get zlac706_driver_control::WheelDriverResponse :definition-)
      "string rueda
---
bool status


")



(provide :zlac706_driver_control/WheelDriver "3ee118de48c6d49aa063a6db9c3e1ac0")


