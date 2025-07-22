;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::Modes)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'Modes (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::MODES")
  (make-package "ROBOT_MSGS::MODES"))
(unless (find-package "ROBOT_MSGS::MODESREQUEST")
  (make-package "ROBOT_MSGS::MODESREQUEST"))
(unless (find-package "ROBOT_MSGS::MODESRESPONSE")
  (make-package "ROBOT_MSGS::MODESRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::ModesRequest
  :super ros::object
  :slots (_is_start _state _param ))

(defmethod robot_msgs::ModesRequest
  (:init
   (&key
    ((:is_start __is_start) nil)
    ((:state __state) "")
    ((:param __param) "")
    )
   (send-super :init)
   (setq _is_start __is_start)
   (setq _state (string __state))
   (setq _param (string __param))
   self)
  (:is_start
   (&optional (__is_start :null))
   (if (not (eq __is_start :null)) (setq _is_start __is_start)) _is_start)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:serialization-length
   ()
   (+
    ;; bool _is_start
    1
    ;; string _state
    4 (length _state)
    ;; string _param
    4 (length _param)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_start
       (if _is_start (write-byte -1 s) (write-byte 0 s))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _param
       (write-long (length _param) s) (princ _param s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_start
     (setq _is_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _param
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::ModesResponse
  :super ros::object
  :slots (_success _error ))

(defmethod robot_msgs::ModesResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error __error) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error (string __error))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::Modes
  :super ros::object
  :slots ())

(setf (get robot_msgs::Modes :md5sum-) "324304a9077e74c893e232386723f0a2")
(setf (get robot_msgs::Modes :datatype-) "robot_msgs/Modes")
(setf (get robot_msgs::Modes :request) robot_msgs::ModesRequest)
(setf (get robot_msgs::Modes :response) robot_msgs::ModesResponse)

(defmethod robot_msgs::ModesRequest
  (:response () (instance robot_msgs::ModesResponse :init)))

(setf (get robot_msgs::ModesRequest :md5sum-) "324304a9077e74c893e232386723f0a2")
(setf (get robot_msgs::ModesRequest :datatype-) "robot_msgs/ModesRequest")
(setf (get robot_msgs::ModesRequest :definition-)
      "bool is_start
string state
string param
---
bool success
string error

")

(setf (get robot_msgs::ModesResponse :md5sum-) "324304a9077e74c893e232386723f0a2")
(setf (get robot_msgs::ModesResponse :datatype-) "robot_msgs/ModesResponse")
(setf (get robot_msgs::ModesResponse :definition-)
      "bool is_start
string state
string param
---
bool success
string error

")



(provide :robot_msgs/Modes "324304a9077e74c893e232386723f0a2")


