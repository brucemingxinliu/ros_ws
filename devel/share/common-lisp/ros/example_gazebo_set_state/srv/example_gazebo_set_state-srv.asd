
(cl:in-package :asdf)

(defsystem "example_gazebo_set_state-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SrvInt" :depends-on ("_package_SrvInt"))
    (:file "_package_SrvInt" :depends-on ("_package"))
  ))