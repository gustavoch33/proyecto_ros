;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::mode_status)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'mode_status (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::MODE_STATUS")
  (make-package "ROBOT_MSGS::MODE_STATUS"))

(in-package "ROS")
;;//! \htmlinclude mode_status.msg.html


(defclass robot_msgs::mode_status
  :super ros::object
  :slots (_docking _manual _navigation _mapping _stand_by ))

(defmethod robot_msgs::mode_status
  (:init
   (&key
    ((:docking __docking) nil)
    ((:manual __manual) nil)
    ((:navigation __navigation) nil)
    ((:mapping __mapping) nil)
    ((:stand_by __stand_by) nil)
    )
   (send-super :init)
   (setq _docking __docking)
   (setq _manual __manual)
   (setq _navigation __navigation)
   (setq _mapping __mapping)
   (setq _stand_by __stand_by)
   self)
  (:docking
   (&optional (__docking :null))
   (if (not (eq __docking :null)) (setq _docking __docking)) _docking)
  (:manual
   (&optional (__manual :null))
   (if (not (eq __manual :null)) (setq _manual __manual)) _manual)
  (:navigation
   (&optional (__navigation :null))
   (if (not (eq __navigation :null)) (setq _navigation __navigation)) _navigation)
  (:mapping
   (&optional (__mapping :null))
   (if (not (eq __mapping :null)) (setq _mapping __mapping)) _mapping)
  (:stand_by
   (&optional (__stand_by :null))
   (if (not (eq __stand_by :null)) (setq _stand_by __stand_by)) _stand_by)
  (:serialization-length
   ()
   (+
    ;; bool _docking
    1
    ;; bool _manual
    1
    ;; bool _navigation
    1
    ;; bool _mapping
    1
    ;; bool _stand_by
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _docking
       (if _docking (write-byte -1 s) (write-byte 0 s))
     ;; bool _manual
       (if _manual (write-byte -1 s) (write-byte 0 s))
     ;; bool _navigation
       (if _navigation (write-byte -1 s) (write-byte 0 s))
     ;; bool _mapping
       (if _mapping (write-byte -1 s) (write-byte 0 s))
     ;; bool _stand_by
       (if _stand_by (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _docking
     (setq _docking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _manual
     (setq _manual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _navigation
     (setq _navigation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mapping
     (setq _mapping (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stand_by
     (setq _stand_by (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_msgs::mode_status :md5sum-) "401e19daf4dfa2be65d1fcd32ec6dd29")
(setf (get robot_msgs::mode_status :datatype-) "robot_msgs/mode_status")
(setf (get robot_msgs::mode_status :definition-)
      "bool docking
bool manual
bool navigation
bool mapping
bool stand_by
")



(provide :robot_msgs/mode_status "401e19daf4dfa2be65d1fcd32ec6dd29")


