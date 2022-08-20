; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude Semantic.msg.html

(cl:defclass <Semantic> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Semantic (<Semantic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Semantic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Semantic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<Semantic> is deprecated: use autoware_perception_msgs-msg:Semantic instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Semantic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:type-val is deprecated.  Use autoware_perception_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Semantic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:confidence-val is deprecated.  Use autoware_perception_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Semantic>)))
    "Constants for message type '<Semantic>"
  '((:UNKNOWN . 0)
    (:CAR . 1)
    (:TRUCK . 2)
    (:BUS . 3)
    (:BICYCLE . 4)
    (:MOTORBIKE . 5)
    (:PEDESTRIAN . 6)
    (:ANIMAL . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Semantic)))
    "Constants for message type 'Semantic"
  '((:UNKNOWN . 0)
    (:CAR . 1)
    (:TRUCK . 2)
    (:BUS . 3)
    (:BICYCLE . 4)
    (:MOTORBIKE . 5)
    (:PEDESTRIAN . 6)
    (:ANIMAL . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Semantic>) ostream)
  "Serializes a message object of type '<Semantic>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Semantic>) istream)
  "Deserializes a message object of type '<Semantic>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Semantic>)))
  "Returns string type for a message object of type '<Semantic>"
  "autoware_perception_msgs/Semantic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Semantic)))
  "Returns string type for a message object of type 'Semantic"
  "autoware_perception_msgs/Semantic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Semantic>)))
  "Returns md5sum for a message object of type '<Semantic>"
  "85935a638bcee21ffab8d8590b4222d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Semantic)))
  "Returns md5sum for a message object of type 'Semantic"
  "85935a638bcee21ffab8d8590b4222d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Semantic>)))
  "Returns full string definition for message of type '<Semantic>"
  (cl:format cl:nil "uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Semantic)))
  "Returns full string definition for message of type 'Semantic"
  (cl:format cl:nil "uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Semantic>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Semantic>))
  "Converts a ROS message object to a list"
  (cl:list 'Semantic
    (cl:cons ':type (type msg))
    (cl:cons ':confidence (confidence msg))
))
