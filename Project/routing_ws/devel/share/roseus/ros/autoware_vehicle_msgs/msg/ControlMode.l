;; Auto-generated. Do not edit!


(when (boundp 'autoware_vehicle_msgs::ControlMode)
  (if (not (find-package "AUTOWARE_VEHICLE_MSGS"))
    (make-package "AUTOWARE_VEHICLE_MSGS"))
  (shadow 'ControlMode (find-package "AUTOWARE_VEHICLE_MSGS")))
(unless (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE")
  (make-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude ControlMode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MANUAL*" (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(shadow '*MANUAL* (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(defconstant autoware_vehicle_msgs::ControlMode::*MANUAL* 0)
(intern "*AUTO*" (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(shadow '*AUTO* (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(defconstant autoware_vehicle_msgs::ControlMode::*AUTO* 1)
(intern "*AUTO_STEER_ONLY*" (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(shadow '*AUTO_STEER_ONLY* (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(defconstant autoware_vehicle_msgs::ControlMode::*AUTO_STEER_ONLY* 2)
(intern "*AUTO_PEDAL_ONLY*" (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(shadow '*AUTO_PEDAL_ONLY* (find-package "AUTOWARE_VEHICLE_MSGS::CONTROLMODE"))
(defconstant autoware_vehicle_msgs::ControlMode::*AUTO_PEDAL_ONLY* 3)

(defun autoware_vehicle_msgs::ControlMode-to-symbol (const)
  (cond
        ((= const 0) 'autoware_vehicle_msgs::ControlMode::*MANUAL*)
        ((= const 1) 'autoware_vehicle_msgs::ControlMode::*AUTO*)
        ((= const 2) 'autoware_vehicle_msgs::ControlMode::*AUTO_STEER_ONLY*)
        ((= const 3) 'autoware_vehicle_msgs::ControlMode::*AUTO_PEDAL_ONLY*)
        (t nil)))

(defclass autoware_vehicle_msgs::ControlMode
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_vehicle_msgs::ControlMode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data (round __data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_vehicle_msgs::ControlMode :md5sum-) "88e8ae3590252d1a5403cfb378321fe1")
(setf (get autoware_vehicle_msgs::ControlMode :datatype-) "autoware_vehicle_msgs/ControlMode")
(setf (get autoware_vehicle_msgs::ControlMode :definition-)
      "std_msgs/Header header
uint8 MANUAL = 0
uint8 AUTO = 1
uint8 AUTO_STEER_ONLY = 2
uint8 AUTO_PEDAL_ONLY = 3

int32 data
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

")



(provide :autoware_vehicle_msgs/ControlMode "88e8ae3590252d1a5403cfb378321fe1")


