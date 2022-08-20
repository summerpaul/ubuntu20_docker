; Auto-generated. Do not edit!


(cl:in-package autoware_vehicle_msgs-msg)


;//! \htmlinclude Steering.msg.html

(cl:defclass <Steering> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass Steering (<Steering>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Steering>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Steering)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_vehicle_msgs-msg:<Steering> is deprecated: use autoware_vehicle_msgs-msg:Steering instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Steering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:header-val is deprecated.  Use autoware_vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Steering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:data-val is deprecated.  Use autoware_vehicle_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Steering>) ostream)
  "Serializes a message object of type '<Steering>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Steering>) istream)
  "Deserializes a message object of type '<Steering>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Steering>)))
  "Returns string type for a message object of type '<Steering>"
  "autoware_vehicle_msgs/Steering")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Steering)))
  "Returns string type for a message object of type 'Steering"
  "autoware_vehicle_msgs/Steering")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Steering>)))
  "Returns md5sum for a message object of type '<Steering>"
  "ef848af8cf12f6df11682cc76fba477b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Steering)))
  "Returns md5sum for a message object of type 'Steering"
  "ef848af8cf12f6df11682cc76fba477b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Steering>)))
  "Returns full string definition for message of type '<Steering>"
  (cl:format cl:nil "std_msgs/Header header~%float32 data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Steering)))
  "Returns full string definition for message of type 'Steering"
  (cl:format cl:nil "std_msgs/Header header~%float32 data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Steering>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Steering>))
  "Converts a ROS message object to a list"
  (cl:list 'Steering
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
