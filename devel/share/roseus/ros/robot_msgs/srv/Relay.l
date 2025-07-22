;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::Relay)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'Relay (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::RELAY")
  (make-package "ROBOT_MSGS::RELAY"))
(unless (find-package "ROBOT_MSGS::RELAYREQUEST")
  (make-package "ROBOT_MSGS::RELAYREQUEST"))
(unless (find-package "ROBOT_MSGS::RELAYRESPONSE")
  (make-package "ROBOT_MSGS::RELAYRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::RelayRequest
  :super ros::object
  :slots (_relevador ))

(defmethod robot_msgs::RelayRequest
  (:init
   (&key
    ((:relevador __relevador) 0)
    )
   (send-super :init)
   (setq _relevador (round __relevador))
   self)
  (:relevador
   (&optional __relevador)
   (if __relevador (setq _relevador __relevador)) _relevador)
  (:serialization-length
   ()
   (+
    ;; int8 _relevador
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _relevador
       (write-byte _relevador s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _relevador
     (setq _relevador (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _relevador 127) (setq _relevador (- _relevador 256)))
   ;;
   self)
  )

(defclass robot_msgs::RelayResponse
  :super ros::object
  :slots (_status _description ))

(defmethod robot_msgs::RelayResponse
  (:init
   (&key
    ((:status __status) "")
    ((:description __description) "")
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _description (string __description))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::Relay
  :super ros::object
  :slots ())

(setf (get robot_msgs::Relay :md5sum-) "3f2a44b2fa1cd7db6632dacb1c985817")
(setf (get robot_msgs::Relay :datatype-) "robot_msgs/Relay")
(setf (get robot_msgs::Relay :request) robot_msgs::RelayRequest)
(setf (get robot_msgs::Relay :response) robot_msgs::RelayResponse)

(defmethod robot_msgs::RelayRequest
  (:response () (instance robot_msgs::RelayResponse :init)))

(setf (get robot_msgs::RelayRequest :md5sum-) "3f2a44b2fa1cd7db6632dacb1c985817")
(setf (get robot_msgs::RelayRequest :datatype-) "robot_msgs/RelayRequest")
(setf (get robot_msgs::RelayRequest :definition-)
      "int8 relevador
---
string status
string description

")

(setf (get robot_msgs::RelayResponse :md5sum-) "3f2a44b2fa1cd7db6632dacb1c985817")
(setf (get robot_msgs::RelayResponse :datatype-) "robot_msgs/RelayResponse")
(setf (get robot_msgs::RelayResponse :definition-)
      "int8 relevador
---
string status
string description

")



(provide :robot_msgs/Relay "3f2a44b2fa1cd7db6632dacb1c985817")


