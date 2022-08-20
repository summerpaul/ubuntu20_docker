; Auto-generated. Do not edit!


(cl:in-package autoware_vehicle_msgs-msg)


;//! \htmlinclude ShiftStamped.msg.html

(cl:defclass <ShiftStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (shift
    :reader shift
    :initarg :shift
    :type autoware_vehicle_msgs-msg:Shift
    :initform (cl:make-instance 'autoware_vehicle_msgs-msg:Shift)))
)

(cl:defclass ShiftStamped (<ShiftStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShiftStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShiftStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_vehicle_msgs-msg:<ShiftStamped> is deprecated: use autoware_vehicle_msgs-msg:ShiftStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ShiftStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:header-val is deprecated.  Use autoware_vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'shift-val :lambda-list '(m))
(cl:defmethod shift-val ((m <ShiftStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:shift-val is deprecated.  Use autoware_vehicle_msgs-msg:shift instead.")
  (shift m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShiftStamped>) ostream)
  "Serializes a message object of type '<ShiftStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shift) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShiftStamped>) istream)
  "Deserializes a message object of type '<ShiftStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shift) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShiftStamped>)))
  "Returns string type for a message object of type '<ShiftStamped>"
  "autoware_vehicle_msgs/ShiftStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShiftStamped)))
  "Returns string type for a message object of type 'ShiftStamped"
  "autoware_vehicle_msgs/ShiftStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShiftStamped>)))
  "Returns md5sum for a message object of type '<ShiftStamped>"
  "f22613f797e09e8010076f27026bcc5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShiftStamped)))
  "Returns md5sum for a message object of type 'ShiftStamped"
  "f22613f797e09e8010076f27026bcc5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShiftStamped>)))
  "Returns full string definition for message of type '<ShiftStamped>"
  (cl:format cl:nil "std_msgs/Header header~%autoware_vehicle_msgs/Shift shift~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_vehicle_msgs/Shift~%uint8 NONE=0~%uint8 PARKING=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShiftStamped)))
  "Returns full string definition for message of type 'ShiftStamped"
  (cl:format cl:nil "std_msgs/Header header~%autoware_vehicle_msgs/Shift shift~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_vehicle_msgs/Shift~%uint8 NONE=0~%uint8 PARKING=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShiftStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shift))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShiftStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ShiftStamped
    (cl:cons ':header (header msg))
    (cl:cons ':shift (shift msg))
))
