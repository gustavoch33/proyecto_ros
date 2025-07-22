;; Auto-generated. Do not edit!


(when (boundp 'zlac706_driver_control::wheel_status)
  (if (not (find-package "ZLAC706_DRIVER_CONTROL"))
    (make-package "ZLAC706_DRIVER_CONTROL"))
  (shadow 'wheel_status (find-package "ZLAC706_DRIVER_CONTROL")))
(unless (find-package "ZLAC706_DRIVER_CONTROL::WHEEL_STATUS")
  (make-package "ZLAC706_DRIVER_CONTROL::WHEEL_STATUS"))

(in-package "ROS")
;;//! \htmlinclude wheel_status.msg.html


(defclass zlac706_driver_control::wheel_status
  :super ros::object
  :slots (_status _voltage ))

(defmethod zlac706_driver_control::wheel_status
  (:init
   (&key
    ((:status __status) "")
    ((:voltage __voltage) 0.0)
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _voltage (float __voltage))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; float32 _voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zlac706_driver_control::wheel_status :md5sum-) "272799e5d37bf8b3a6a4dfa0bceaf521")
(setf (get zlac706_driver_control::wheel_status :datatype-) "zlac706_driver_control/wheel_status")
(setf (get zlac706_driver_control::wheel_status :definition-)
      "string status
float32 voltage

")



(provide :zlac706_driver_control/wheel_status "272799e5d37bf8b3a6a4dfa0bceaf521")


