;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::sensorStatus)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'sensorStatus (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SENSORSTATUS")
  (make-package "ROBOT_MSGS::SENSORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude sensorStatus.msg.html


(defclass robot_msgs::sensorStatus
  :super ros::object
  :slots (_is_ok _error ))

(defmethod robot_msgs::sensorStatus
  (:init
   (&key
    ((:is_ok __is_ok) nil)
    ((:error __error) "")
    )
   (send-super :init)
   (setq _is_ok __is_ok)
   (setq _error (string __error))
   self)
  (:is_ok
   (&optional (__is_ok :null))
   (if (not (eq __is_ok :null)) (setq _is_ok __is_ok)) _is_ok)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; bool _is_ok
    1
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_ok
       (if _is_ok (write-byte -1 s) (write-byte 0 s))
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_ok
     (setq _is_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_msgs::sensorStatus :md5sum-) "608c2e6bc29e45e2dc4f580fdae4997b")
(setf (get robot_msgs::sensorStatus :datatype-) "robot_msgs/sensorStatus")
(setf (get robot_msgs::sensorStatus :definition-)
      "bool is_ok
string error
")



(provide :robot_msgs/sensorStatus "608c2e6bc29e45e2dc4f580fdae4997b")


