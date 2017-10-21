
(cl:in-package :asdf)

(defsystem "rover_send_point-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Serialmsg" :depends-on ("_package_Serialmsg"))
    (:file "_package_Serialmsg" :depends-on ("_package"))
    (:file "Statemsg" :depends-on ("_package_Statemsg"))
    (:file "_package_Statemsg" :depends-on ("_package"))
  ))