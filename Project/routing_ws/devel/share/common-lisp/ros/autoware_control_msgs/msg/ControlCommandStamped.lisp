; Auto-generated. Do not edit!


(cl:in-package autoware_control_msgs-msg)


;//! \htmlinclude ControlCommandStamped.msg.html

(cl:defclass <ControlCommandStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control
    :reader control
    :initarg :control
    :type autoware_control_msgs-msg:ControlCommand
    :initform (cl:make-instance 'autoware_control_msgs-msg:ControlCommand)))
)

(cl:defclass ControlCommandStamped (<ControlCommandStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommandStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommandStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_control_msgs-msg:<ControlCommandStamped> is deprecated: use autoware_control_msgs-msg:ControlCommandStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlCommandStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_control_msgs-msg:header-val is deprecated.  Use autoware_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <ControlCommandStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_control_msgs-msg:control-val is deprecated.  Use autoware_control_msgs-msg:control instead.")
  (control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommandStamped>) ostream)
  "Serializes a message object of type '<ControlCommandStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommandStamped>) istream)
  "Deserializes a message object of type '<ControlCommandStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommandStamped>)))
  "Returns string type for a message object of type '<ControlCommandStamped>"
  "autoware_control_msgs/ControlCommandStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommandStamped)))
  "Returns string type for a message object of type 'ControlCommandStamped"
  "autoware_control_msgs/ControlCommandStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommandStamped>)))
  "Returns md5sum for a message object of type '<ControlCommandStamped>"
  "6cfe21cd566778564e42651227ec479d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommandStamped)))
  "Returns md5sum for a message object of type 'ControlCommandStamped"
  "6cfe21cd566778564e42651227ec479d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommandStamped>)))
  "Returns full string definition for message of type '<ControlCommandStamped>"
  (cl:format cl:nil "Header header~%autoware_control_msgs/ControlCommand control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_control_msgs/ControlCommand~%float64 steering_angle~%float64 steering_angle_velocity~%float64 velocity~%float64 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommandStamped)))
  "Returns full string definition for message of type 'ControlCommandStamped"
  (cl:format cl:nil "Header header~%autoware_control_msgs/ControlCommand control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_control_msgs/ControlCommand~%float64 steering_angle~%float64 steering_angle_velocity~%float64 velocity~%float64 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommandStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommandStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommandStamped
    (cl:cons ':header (header msg))
    (cl:cons ':control (control msg))
))
