
(cl:in-package :asdf)

(defsystem "autoware_system_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AutowareState" :depends-on ("_package_AutowareState"))
    (:file "_package_AutowareState" :depends-on ("_package"))
  ))