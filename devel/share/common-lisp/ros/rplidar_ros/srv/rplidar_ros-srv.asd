
(cl:in-package :asdf)

(defsystem "rplidar_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "motor_speed" :depends-on ("_package_motor_speed"))
    (:file "_package_motor_speed" :depends-on ("_package"))
  ))