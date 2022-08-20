;; Auto-generated. Do not edit!


(when (boundp 'autoware_vehicle_msgs::TurnSignal)
  (if (not (find-package "AUTOWARE_VEHICLE_MSGS"))
    (make-package "AUTOWARE_VEHICLE_MSGS"))
  (shadow 'TurnSignal (find-package "AUTOWARE_VEHICLE_MSGS")))
(unless (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL")
  (make-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude TurnSignal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NONE*" (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(shadow '*NONE* (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(defconstant autoware_vehicle_msgs::TurnSignal::*NONE* 0)
(intern "*LEFT*" (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(shadow '*LEFT* (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(defconstant autoware_vehicle_msgs::TurnSignal::*LEFT* 1)
(intern "*RIGHT*" (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(shadow '*RIGHT* (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(defconstant autoware_vehicle_msgs::TurnSignal::*RIGHT* 2)
(intern "*HAZARD*" (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(shadow '*HAZARD* (find-package "AUTOWARE_VEHICLE_MSGS::TURNSIGNAL"))
(defconstant autoware_vehicle_msgs::TurnSignal::*HAZARD* 3)

(defun autoware_vehicle_msgs::TurnSignal-to-symbol (const)
  (cond
        ((= const 0) 'autoware_vehicle_msgs::TurnSignal::*NONE*)
        ((= const 1) 'autoware_vehicle_msgs::TurnSignal::*LEFT*)
        ((= const 2) 'autoware_vehicle_msgs::TurnSignal::*RIGHT*)
        ((= const 3) 'autoware_vehicle_msgs::TurnSignal::*HAZARD*)
        (t nil)))

(defclass autoware_vehicle_msgs::TurnSignal
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_vehicle_msgs::TurnSignal
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

(setf (get autoware_vehicle_msgs::TurnSignal :md5sum-) "d085122414481a8d849d2a54a80f6680")
(setf (get autoware_vehicle_msgs::TurnSignal :datatype-) "autoware_vehicle_msgs/TurnSignal")
(setf (get autoware_vehicle_msgs::TurnSignal :definition-)
      "std_msgs/Header header

uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 HAZARD = 3

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



(provide :autoware_vehicle_msgs/TurnSignal "d085122414481a8d849d2a54a80f6680")


