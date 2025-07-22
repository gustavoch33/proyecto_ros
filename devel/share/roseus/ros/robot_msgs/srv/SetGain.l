;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::SetGain)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'SetGain (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SETGAIN")
  (make-package "ROBOT_MSGS::SETGAIN"))
(unless (find-package "ROBOT_MSGS::SETGAINREQUEST")
  (make-package "ROBOT_MSGS::SETGAINREQUEST"))
(unless (find-package "ROBOT_MSGS::SETGAINRESPONSE")
  (make-package "ROBOT_MSGS::SETGAINRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::SetGainRequest
  :super ros::object
  :slots (_name _value ))

(defmethod robot_msgs::SetGainRequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (round __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_msgs::SetGainResponse
  :super ros::object
  :slots (_status ))

(defmethod robot_msgs::SetGainResponse
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

(defclass robot_msgs::SetGain
  :super ros::object
  :slots ())

(setf (get robot_msgs::SetGain :md5sum-) "a2f750cf2ccda6f044ac76934a961ff0")
(setf (get robot_msgs::SetGain :datatype-) "robot_msgs/SetGain")
(setf (get robot_msgs::SetGain :request) robot_msgs::SetGainRequest)
(setf (get robot_msgs::SetGain :response) robot_msgs::SetGainResponse)

(defmethod robot_msgs::SetGainRequest
  (:response () (instance robot_msgs::SetGainResponse :init)))

(setf (get robot_msgs::SetGainRequest :md5sum-) "a2f750cf2ccda6f044ac76934a961ff0")
(setf (get robot_msgs::SetGainRequest :datatype-) "robot_msgs/SetGainRequest")
(setf (get robot_msgs::SetGainRequest :definition-)
      "string  name
int32 value
---
bool status
")

(setf (get robot_msgs::SetGainResponse :md5sum-) "a2f750cf2ccda6f044ac76934a961ff0")
(setf (get robot_msgs::SetGainResponse :datatype-) "robot_msgs/SetGainResponse")
(setf (get robot_msgs::SetGainResponse :definition-)
      "string  name
int32 value
---
bool status
")



(provide :robot_msgs/SetGain "a2f750cf2ccda6f044ac76934a961ff0")


