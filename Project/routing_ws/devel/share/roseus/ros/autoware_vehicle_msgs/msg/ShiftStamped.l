;; Auto-generated. Do not edit!


(when (boundp 'autoware_vehicle_msgs::ShiftStamped)
  (if (not (find-package "AUTOWARE_VEHICLE_MSGS"))
    (make-package "AUTOWARE_VEHICLE_MSGS"))
  (shadow 'ShiftStamped (find-package "AUTOWARE_VEHICLE_MSGS")))
(unless (find-package "AUTOWARE_VEHICLE_MSGS::SHIFTSTAMPED")
  (make-package "AUTOWARE_VEHICLE_MSGS::SHIFTSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ShiftStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_vehicle_msgs::ShiftStamped
  :super ros::object
  :slots (_header _shift ))

(defmethod autoware_vehicle_msgs::ShiftStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:shift __shift) (instance autoware_vehicle_msgs::Shift :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _shift __shift)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:shift
   (&rest __shift)
   (if (keywordp (car __shift))
       (send* _shift __shift)
     (progn
       (if __shift (setq _shift (car __shift)))
       _shift)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; autoware_vehicle_msgs/Shift _shift
    (send _shift :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_vehicle_msgs/Shift _shift
       (send _shift :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; autoware_vehicle_msgs/Shift _shift
     (send _shift :deserialize buf ptr-) (incf ptr- (send _shift :serialization-length))
   ;;
   self)
  )

(setf (get autoware_vehicle_msgs::ShiftStamped :md5sum-) "f22613f797e09e8010076f27026bcc5a")
(setf (get autoware_vehicle_msgs::ShiftStamped :datatype-) "autoware_vehicle_msgs/ShiftStamped")
(setf (get autoware_vehicle_msgs::ShiftStamped :definition-)
      "std_msgs/Header header
autoware_vehicle_msgs/Shift shift
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
MSG: autoware_vehicle_msgs/Shift
uint8 NONE=0
uint8 PARKING=1
uint8 REVERSE=2
uint8 NEUTRAL=3
uint8 DRIVE=4
uint8 LOW=5

int32 data
")



(provide :autoware_vehicle_msgs/ShiftStamped "f22613f797e09e8010076f27026bcc5a")


