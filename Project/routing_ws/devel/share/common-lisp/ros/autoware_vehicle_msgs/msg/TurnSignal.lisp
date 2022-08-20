; Auto-generated. Do not edit!


(cl:in-package autoware_vehicle_msgs-msg)


;//! \htmlinclude TurnSignal.msg.html

(cl:defclass <TurnSignal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass TurnSignal (<TurnSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_vehicle_msgs-msg:<TurnSignal> is deprecated: use autoware_vehicle_msgs-msg:TurnSignal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TurnSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:header-val is deprecated.  Use autoware_vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TurnSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:data-val is deprecated.  Use autoware_vehicle_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TurnSignal>)))
    "Constants for message type '<TurnSignal>"
  '((:NONE . 0)
    (:LEFT . 1)
    (:RIGHT . 2)
    (:HAZARD . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TurnSignal)))
    "Constants for message type 'TurnSignal"
  '((:NONE . 0)
    (:LEFT . 1)
    (:RIGHT . 2)
    (:HAZARD . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnSignal>) ostream)
  "Serializes a message object of type '<TurnSignal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnSignal>) istream)
  "Deserializes a message object of type '<TurnSignal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnSignal>)))
  "Returns string type for a message object of type '<TurnSignal>"
  "autoware_vehicle_msgs/TurnSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnSignal)))
  "Returns string type for a message object of type 'TurnSignal"
  "autoware_vehicle_msgs/TurnSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnSignal>)))
  "Returns md5sum for a message object of type '<TurnSignal>"
  "d085122414481a8d849d2a54a80f6680")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnSignal)))
  "Returns md5sum for a message object of type 'TurnSignal"
  "d085122414481a8d849d2a54a80f6680")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnSignal>)))
  "Returns full string definition for message of type '<TurnSignal>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARD = 3~%~%int32 data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnSignal)))
  "Returns full string definition for message of type 'TurnSignal"
  (cl:format cl:nil "std_msgs/Header header~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARD = 3~%~%int32 data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnSignal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnSignal
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
