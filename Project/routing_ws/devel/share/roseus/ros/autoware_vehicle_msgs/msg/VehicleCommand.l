;; Auto-generated. Do not edit!


(when (boundp 'autoware_vehicle_msgs::VehicleCommand)
  (if (not (find-package "AUTOWARE_VEHICLE_MSGS"))
    (make-package "AUTOWARE_VEHICLE_MSGS"))
  (shadow 'VehicleCommand (find-package "AUTOWARE_VEHICLE_MSGS")))
(unless (find-package "AUTOWARE_VEHICLE_MSGS::VEHICLECOMMAND")
  (make-package "AUTOWARE_VEHICLE_MSGS::VEHICLECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude VehicleCommand.msg.html
(if (not (find-package "AUTOWARE_CONTROL_MSGS"))
  (ros::roseus-add-msgs "autoware_control_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_vehicle_msgs::VehicleCommand
  :super ros::object
  :slots (_header _control _shift _emergency ))

(defmethod autoware_vehicle_msgs::VehicleCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control __control) (instance autoware_control_msgs::ControlCommand :init))
    ((:shift __shift) (instance autoware_vehicle_msgs::Shift :init))
    ((:emergency __emergency) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _control __control)
   (setq _shift __shift)
   (setq _emergency (round __emergency))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:control
   (&rest __control)
   (if (keywordp (car __control))
       (send* _control __control)
     (progn
       (if __control (setq _control (car __control)))
       _control)))
  (:shift
   (&rest __shift)
   (if (keywordp (car __shift))
       (send* _shift __shift)
     (progn
       (if __shift (setq _shift (car __shift)))
       _shift)))
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; autoware_control_msgs/ControlCommand _control
    (send _control :serialization-length)
    ;; autoware_vehicle_msgs/Shift _shift
    (send _shift :serialization-length)
    ;; int32 _emergency
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_control_msgs/ControlCommand _control
       (send _control :serialize s)
     ;; autoware_vehicle_msgs/Shift _shift
       (send _shift :serialize s)
     ;; int32 _emergency
       (write-long _emergency s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; autoware_control_msgs/ControlCommand _control
     (send _control :deserialize buf ptr-) (incf ptr- (send _control :serialization-length))
   ;; autoware_vehicle_msgs/Shift _shift
     (send _shift :deserialize buf ptr-) (incf ptr- (send _shift :serialization-length))
   ;; int32 _emergency
     (setq _emergency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_vehicle_msgs::VehicleCommand :md5sum-) "bbb7dc630dc29a8a183cf780a04b2cb9")
(setf (get autoware_vehicle_msgs::VehicleCommand :datatype-) "autoware_vehicle_msgs/VehicleCommand")
(setf (get autoware_vehicle_msgs::VehicleCommand :definition-)
      "std_msgs/Header header
autoware_control_msgs/ControlCommand control
autoware_vehicle_msgs/Shift shift
int32 emergency
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: autoware_control_msgs/ControlCommand
float64 steering_angle
float64 steering_angle_velocity
float64 velocity
float64 acceleration
================================================================================
MSG: autoware_vehicle_msgs/Shift
uint8 NONE=0
uint8 PARKING=1
uint8 REVERSE=2
uint8 NEUTRAL=3
uint8 DRIVE=4
uint8 LOW=5

int32 data
")



(provide :autoware_vehicle_msgs/VehicleCommand "bbb7dc630dc29a8a183cf780a04b2cb9")


