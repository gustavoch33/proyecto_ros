
(cl:in-package :asdf)

(defsystem "controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DatosControl" :depends-on ("_package_DatosControl"))
    (:file "_package_DatosControl" :depends-on ("_package"))
    (:file "Trayectoria" :depends-on ("_package_Trayectoria"))
    (:file "_package_Trayectoria" :depends-on ("_package"))
  ))