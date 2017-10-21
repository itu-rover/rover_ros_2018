
(cl:in-package :asdf)

(defsystem "rover_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Serialmsg" :depends-on ("_package_Serialmsg"))
    (:file "_package_Serialmsg" :depends-on ("_package"))
  ))