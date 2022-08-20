
(cl:in-package :asdf)

(defsystem "dummy_perception_publisher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :autoware_perception_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
               :uuid_msgs-msg
)
  :components ((:file "_package")
    (:file "InitialState" :depends-on ("_package_InitialState"))
    (:file "_package_InitialState" :depends-on ("_package"))
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
  ))