; Auto-generated. Do not edit!


(cl:in-package autoware_vehicle_msgs-msg)


;//! \htmlinclude Shift.msg.html

(cl:defclass <Shift> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass Shift (<Shift>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shift>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shift)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_vehicle_msgs-msg:<Shift> is deprecated: use autoware_vehicle_msgs-msg:Shift instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Shift>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_vehicle_msgs-msg:data-val is deprecated.  Use autoware_vehicle_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Shift>)))
    "Constants for message type '<Shift>"
  '((:NONE . 0)
    (:PARKING . 1)
    (:REVERSE . 2)
    (:NEUTRAL . 3)
    (:DRIVE . 4)
    (:LOW . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Shift)))
    "Constants for message type 'Shift"
  '((:NONE . 0)
    (:PARKING . 1)
    (:REVERSE . 2)
    (:NEUTRAL . 3)
    (:DRIVE . 4)
    (:LOW . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shift>) ostream)
  "Serializes a message object of type '<Shift>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shift>) istream)
  "Deserializes a message object of type '<Shift>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shift>)))
  "Returns string type for a message object of type '<Shift>"
  "autoware_vehicle_msgs/Shift")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shift)))
  "Returns string type for a message object of type 'Shift"
  "autoware_vehicle_msgs/Shift")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shift>)))
  "Returns md5sum for a message object of type '<Shift>"
  "2fd0e3a838050b8d14292e38efefcee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shift)))
  "Returns md5sum for a message object of type 'Shift"
  "2fd0e3a838050b8d14292e38efefcee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shift>)))
  "Returns full string definition for message of type '<Shift>"
  (cl:format cl:nil "uint8 NONE=0~%uint8 PARKING=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shift)))
  "Returns full string definition for message of type 'Shift"
  (cl:format cl:nil "uint8 NONE=0~%uint8 PARKING=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shift>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shift>))
  "Converts a ROS message object to a list"
  (cl:list 'Shift
    (cl:cons ':data (data msg))
))
