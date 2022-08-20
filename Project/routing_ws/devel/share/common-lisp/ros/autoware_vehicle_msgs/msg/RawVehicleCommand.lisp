; Auto-generated. Do not edit!


(cl:in-package autoware_vehicle_msgs-msg)


;//! \htmlinclude RawVehicleCommand.msg.html

(cl:defclass <RawVehicleCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control
    :reader control
    :initarg :control
    :type autoware_vehicle_msgs-msg:RawControlCommand
    :initform (cl:make-instance 'autoware_vehicle_msgs-msg:RawControlCommand))
   (shift
    :reader shift
    :initarg :shift
    :type autoware_vehicle_msgs-msg:Shift
    :initform (cl:make-instance 'autoware_vehicle_msgs-msg:Shift))
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:integer
    :initform 0))
)

(cl:defclass RawVehicleCommand (<RawVehicleCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawVehicleCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawVehicleCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_vehicle_msgs-msg:<RawVehicleCommand> is deprecated: use autoware_vehicle_msgs-msg:RawVehicleCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawVehicleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:header-val is deprecated.  Use autoware_vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <RawVehicleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:control-val is deprecated.  Use autoware_vehicle_msgs-msg:control instead.")
  (control m))

(cl:ensure-generic-function 'shift-val :lambda-list '(m))
(cl:defmethod shift-val ((m <RawVehicleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:shift-val is deprecated.  Use autoware_vehicle_msgs-msg:shift instead.")
  (shift m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <RawVehicleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:emergency-val is deprecated.  Use autoware_vehicle_msgs-msg:emergency instead.")
  (emergency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawVehicleCommand>) ostream)
  "Serializes a message object of type '<RawVehicleCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shift) ostream)
  (cl:let* ((signed (cl:slot-value msg 'emergency)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawVehicleCommand>) istream)
  "Deserializes a message object of type '<RawVehicleCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shift) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emergency) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawVehicleCommand>)))
  "Returns string type for a message object of type '<RawVehicleCommand>"
  "autoware_vehicle_msgs/RawVehicleCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawVehicleCommand)))
  "Returns string type for a message object of type 'RawVehicleCommand"
  "autoware_vehicle_msgs/RawVehicleCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawVehicleCommand>)))
  "Returns md5sum for a message object of type '<RawVehicleCommand>"
  "2dfe6af16f948ae41186c0fd4b4d9275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawVehicleCommand)))
  "Returns md5sum for a message object of type 'RawVehicleCommand"
  "2dfe6af16f948ae41186c0fd4b4d9275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawVehicleCommand>)))
  "Returns full string definition for message of type '<RawVehicleCommand>"
  (cl:format cl:nil "std_msgs/Header header~%autoware_vehicle_msgs/RawControlCommand control~%autoware_vehicle_msgs/Shift shift~%int32 emergency~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_vehicle_msgs/RawControlCommand~%float64 steering_angle~%float64 steering_angle_velocity~%float64 throttle~%float64 brake~%================================================================================~%MSG: autoware_vehicle_msgs/Shift~%uint8 NONE=0~%uint8 PARKING=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawVehicleCommand)))
  "Returns full string definition for message of type 'RawVehicleCommand"
  (cl:format cl:nil "std_msgs/Header header~%autoware_vehicle_msgs/RawControlCommand control~%autoware_vehicle_msgs/Shift shift~%int32 emergency~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_vehicle_msgs/RawControlCommand~%float64 steering_angle~%float64 steering_angle_velocity~%float64 throttle~%float64 brake~%================================================================================~%MSG: autoware_vehicle_msgs/Shift~%uint8 NONE=0~%uint8 PARKING=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawVehicleCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shift))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawVehicleCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RawVehicleCommand
    (cl:cons ':header (header msg))
    (cl:cons ':control (control msg))
    (cl:cons ':shift (shift msg))
    (cl:cons ':emergency (emergency msg))
))
