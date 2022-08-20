
(cl:in-package :asdf)

(defsystem "autoware_lanelet2_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MapBin" :depends-on ("_package_MapBin"))
    (:file "_package_MapBin" :depends-on ("_package"))
  ))