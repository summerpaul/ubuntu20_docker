;; Auto-generated. Do not edit!


(when (boundp 'autoware_control_msgs::ControlCommandStamped)
  (if (not (find-package "AUTOWARE_CONTROL_MSGS"))
    (make-package "AUTOWARE_CONTROL_MSGS"))
  (shadow 'ControlCommandStamped (find-package "AUTOWARE_CONTROL_MSGS")))
(unless (find-package "AUTOWARE_CONTROL_MSGS::CONTROLCOMMANDSTAMPED")
  (make-package "AUTOWARE_CONTROL_MSGS::CONTROLCOMMANDSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ControlCommandStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_control_msgs::ControlCommandStamped
  :super ros::object
  :slots (_header _control ))

(defmethod autoware_control_msgs::ControlCommandStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control __control) (instance autoware_control_msgs::ControlCommand :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _control __control)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; autoware_control_msgs/ControlCommand _control
    (send _control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_control_msgs/ControlCommand _control
       (send _control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; autoware_control_msgs/ControlCommand _control
     (send _control :deserialize buf ptr-) (incf ptr- (send _control :serialization-length))
   ;;
   self)
  )

(setf (get autoware_control_msgs::ControlCommandStamped :md5sum-) "6cfe21cd566778564e42651227ec479d")
(setf (get autoware_control_msgs::ControlCommandStamped :datatype-) "autoware_control_msgs/ControlCommandStamped")
(setf (get autoware_control_msgs::ControlCommandStamped :definition-)
      "Header header
autoware_control_msgs/ControlCommand control

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
")



(provide :autoware_control_msgs/ControlCommandStamped "6cfe21cd566778564e42651227ec479d")


