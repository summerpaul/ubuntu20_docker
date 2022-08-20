
(cl:in-package :asdf)

(defsystem "autoware_perception_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
               :uuid_msgs-msg
)
  :components ((:file "_package")
    (:file "DynamicObject" :depends-on ("_package_DynamicObject"))
    (:file "_package_DynamicObject" :depends-on ("_package"))
    (:file "DynamicObjectArray" :depends-on ("_package_DynamicObjectArray"))
    (:file "_package_DynamicObjectArray" :depends-on ("_package"))
    (:file "DynamicObjectWithFeature" :depends-on ("_package_DynamicObjectWithFeature"))
    (:file "_package_DynamicObjectWithFeature" :depends-on ("_package"))
    (:file "DynamicObjectWithFeatureArray" :depends-on ("_package_DynamicObjectWithFeatureArray"))
    (:file "_package_DynamicObjectWithFeatureArray" :depends-on ("_package"))
    (:file "Feature" :depends-on ("_package_Feature"))
    (:file "_package_Feature" :depends-on ("_package"))
    (:file "LampState" :depends-on ("_package_LampState"))
    (:file "_package_LampState" :depends-on ("_package"))
    (:file "PredictedPath" :depends-on ("_package_PredictedPath"))
    (:file "_package_PredictedPath" :depends-on ("_package"))
    (:file "Semantic" :depends-on ("_package_Semantic"))
    (:file "_package_Semantic" :depends-on ("_package"))
    (:file "Shape" :depends-on ("_package_Shape"))
    (:file "_package_Shape" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
    (:file "TrafficLightRoi" :depends-on ("_package_TrafficLightRoi"))
    (:file "_package_TrafficLightRoi" :depends-on ("_package"))
    (:file "TrafficLightRoiArray" :depends-on ("_package_TrafficLightRoiArray"))
    (:file "_package_TrafficLightRoiArray" :depends-on ("_package"))
    (:file "TrafficLightState" :depends-on ("_package_TrafficLightState"))
    (:file "_package_TrafficLightState" :depends-on ("_package"))
    (:file "TrafficLightStateArray" :depends-on ("_package_TrafficLightStateArray"))
    (:file "_package_TrafficLightStateArray" :depends-on ("_package"))
  ))