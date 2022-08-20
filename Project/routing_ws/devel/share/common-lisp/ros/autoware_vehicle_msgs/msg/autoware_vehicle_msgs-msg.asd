
(cl:in-package :asdf)

(defsystem "autoware_vehicle_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :autoware_control_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlMode" :depends-on ("_package_ControlMode"))
    (:file "_package_ControlMode" :depends-on ("_package"))
    (:file "RawControlCommand" :depends-on ("_package_RawControlCommand"))
    (:file "_package_RawControlCommand" :depends-on ("_package"))
    (:file "RawVehicleCommand" :depends-on ("_package_RawVehicleCommand"))
    (:file "_package_RawVehicleCommand" :depends-on ("_package"))
    (:file "Shift" :depends-on ("_package_Shift"))
    (:file "_package_Shift" :depends-on ("_package"))
    (:file "ShiftStamped" :depends-on ("_package_ShiftStamped"))
    (:file "_package_ShiftStamped" :depends-on ("_package"))
    (:file "Steering" :depends-on ("_package_Steering"))
    (:file "_package_Steering" :depends-on ("_package"))
    (:file "TurnSignal" :depends-on ("_package_TurnSignal"))
    (:file "_package_TurnSignal" :depends-on ("_package"))
    (:file "VehicleCommand" :depends-on ("_package_VehicleCommand"))
    (:file "_package_VehicleCommand" :depends-on ("_package"))
  ))