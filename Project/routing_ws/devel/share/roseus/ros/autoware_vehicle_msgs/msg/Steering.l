;; Auto-generated. Do not edit!


(when (boundp 'autoware_vehicle_msgs::Steering)
  (if (not (find-package "AUTOWARE_VEHICLE_MSGS"))
    (make-package "AUTOWARE_VEHICLE_MSGS"))
  (shadow 'Steering (find-package "AUTOWARE_VEHICLE_MSGS")))
(unless (find-package "AUTOWARE_VEHICLE_MSGS::STEERING")
  (make-package "AUTOWARE_VEHICLE_MSGS::STEERING"))

(in-package "ROS")
;;//! \htmlinclude Steering.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_vehicle_msgs::Steering
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_vehicle_msgs::Steering
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data (float __data))
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
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_vehicle_msgs::Steering :md5sum-) "ef848af8cf12f6df11682cc76fba477b")
(setf (get autoware_vehicle_msgs::Steering :datatype-) "autoware_vehicle_msgs/Steering")
(setf (get autoware_vehicle_msgs::Steering :definition-)
      "std_msgs/Header header
float32 data
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



(provide :autoware_vehicle_msgs/Steering "ef848af8cf12f6df11682cc76fba477b")


