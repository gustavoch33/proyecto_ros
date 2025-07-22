;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::isAlive)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'isAlive (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::ISALIVE")
  (make-package "ROBOT_MSGS::ISALIVE"))

(in-package "ROS")
;;//! \htmlinclude isAlive.msg.html


(defclass robot_msgs::isAlive
  :super ros::object
  :slots (_is_alive _error ))

(defmethod robot_msgs::isAlive
  (:init
   (&key
    ((:is_alive __is_alive) nil)
    ((:error __error) "")
    )
   (send-super :init)
   (setq _is_alive __is_alive)
   (setq _error (string __error))
   self)
  (:is_alive
   (&optional (__is_alive :null))
   (if (not (eq __is_alive :null)) (setq _is_alive __is_alive)) _is_alive)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; bool _is_alive
    1
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_alive
       (if _is_alive (write-byte -1 s) (write-byte 0 s))
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_alive
     (setq _is_alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_msgs::isAlive :md5sum-) "60775c3db7f51fcb9474847c3de8c5da")
(setf (get robot_msgs::isAlive :datatype-) "robot_msgs/isAlive")
(setf (get robot_msgs::isAlive :definition-)
      "bool is_alive
string error

")



(provide :robot_msgs/isAlive "60775c3db7f51fcb9474847c3de8c5da")


