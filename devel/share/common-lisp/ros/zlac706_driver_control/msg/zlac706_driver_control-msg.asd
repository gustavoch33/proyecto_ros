
(cl:in-package :asdf)

(defsystem "zlac706_driver_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "wheel_status" :depends-on ("_package_wheel_status"))
    (:file "_package_wheel_status" :depends-on ("_package"))
  ))