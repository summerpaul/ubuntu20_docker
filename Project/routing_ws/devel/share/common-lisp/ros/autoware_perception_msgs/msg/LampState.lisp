; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude LampState.msg.html

(cl:defclass <LampState> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass LampState (<LampState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LampState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LampState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<LampState> is deprecated: use autoware_perception_msgs-msg:LampState instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LampState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:type-val is deprecated.  Use autoware_perception_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LampState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:confidence-val is deprecated.  Use autoware_perception_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LampState>)))
    "Constants for message type '<LampState>"
  '((:UNKNOWN . 0)
    (:RED . 1)
    (:GREEN . 2)
    (:YELLOW . 3)
    (:LEFT . 4)
    (:RIGHT . 5)
    (:UP . 6)
    (:DOWN . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LampState)))
    "Constants for message type 'LampState"
  '((:UNKNOWN . 0)
    (:RED . 1)
    (:GREEN . 2)
    (:YELLOW . 3)
    (:LEFT . 4)
    (:RIGHT . 5)
    (:UP . 6)
    (:DOWN . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LampState>) ostream)
  "Serializes a message object of type '<LampState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LampState>) istream)
  "Deserializes a message object of type '<LampState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LampState>)))
  "Returns string type for a message object of type '<LampState>"
  "autoware_perception_msgs/LampState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LampState)))
  "Returns string type for a message object of type 'LampState"
  "autoware_perception_msgs/LampState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LampState>)))
  "Returns md5sum for a message object of type '<LampState>"
  "f8cad4711cafcd7eacf519c83ac882e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LampState)))
  "Returns md5sum for a message object of type 'LampState"
  "f8cad4711cafcd7eacf519c83ac882e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LampState>)))
  "Returns full string definition for message of type '<LampState>"
  (cl:format cl:nil "uint8 UNKNOWN=0~%uint8 RED=1~%uint8 GREEN=2~%uint8 YELLOW=3~%uint8 LEFT=4~%uint8 RIGHT=5~%uint8 UP=6~%uint8 DOWN=7~%uint32 type~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LampState)))
  "Returns full string definition for message of type 'LampState"
  (cl:format cl:nil "uint8 UNKNOWN=0~%uint8 RED=1~%uint8 GREEN=2~%uint8 YELLOW=3~%uint8 LEFT=4~%uint8 RIGHT=5~%uint8 UP=6~%uint8 DOWN=7~%uint32 type~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LampState>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LampState>))
  "Converts a ROS message object to a list"
  (cl:list 'LampState
    (cl:cons ':type (type msg))
    (cl:cons ':confidence (confidence msg))
))
