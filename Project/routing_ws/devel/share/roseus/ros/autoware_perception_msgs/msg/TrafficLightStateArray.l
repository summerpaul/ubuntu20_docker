;; Auto-generated. Do not edit!


(when (boundp 'autoware_perception_msgs::TrafficLightStateArray)
  (if (not (find-package "AUTOWARE_PERCEPTION_MSGS"))
    (make-package "AUTOWARE_PERCEPTION_MSGS"))
  (shadow 'TrafficLightStateArray (find-package "AUTOWARE_PERCEPTION_MSGS")))
(unless (find-package "AUTOWARE_PERCEPTION_MSGS::TRAFFICLIGHTSTATEARRAY")
  (make-package "AUTOWARE_PERCEPTION_MSGS::TRAFFICLIGHTSTATEARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightStateArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_perception_msgs::TrafficLightStateArray
  :super ros::object
  :slots (_header _states ))

(defmethod autoware_perception_msgs::TrafficLightStateArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:states __states) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _states __states)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; autoware_perception_msgs/TrafficLightState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_perception_msgs/TrafficLightState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; autoware_perception_msgs/TrafficLightState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance autoware_perception_msgs::TrafficLightState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_perception_msgs::TrafficLightStateArray :md5sum-) "222d53a44e10b32a97b360149fb3e9b1")
(setf (get autoware_perception_msgs::TrafficLightStateArray :datatype-) "autoware_perception_msgs/TrafficLightStateArray")
(setf (get autoware_perception_msgs::TrafficLightStateArray :definition-)
      "std_msgs/Header header
autoware_perception_msgs/TrafficLightState[] states
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
MSG: autoware_perception_msgs/TrafficLightState
autoware_perception_msgs/LampState[] lamp_states
int32 id
================================================================================
MSG: autoware_perception_msgs/LampState
uint8 UNKNOWN=0
uint8 RED=1
uint8 GREEN=2
uint8 YELLOW=3
uint8 LEFT=4
uint8 RIGHT=5
uint8 UP=6
uint8 DOWN=7
uint32 type
float32 confidence
")



(provide :autoware_perception_msgs/TrafficLightStateArray "222d53a44e10b32a97b360149fb3e9b1")


