; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude TrafficLightState.msg.html

(cl:defclass <TrafficLightState> (roslisp-msg-protocol:ros-message)
  ((lamp_states
    :reader lamp_states
    :initarg :lamp_states
    :type (cl:vector autoware_perception_msgs-msg:LampState)
   :initform (cl:make-array 0 :element-type 'autoware_perception_msgs-msg:LampState :initial-element (cl:make-instance 'autoware_perception_msgs-msg:LampState)))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass TrafficLightState (<TrafficLightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<TrafficLightState> is deprecated: use autoware_perception_msgs-msg:TrafficLightState instead.")))

(cl:ensure-generic-function 'lamp_states-val :lambda-list '(m))
(cl:defmethod lamp_states-val ((m <TrafficLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:lamp_states-val is deprecated.  Use autoware_perception_msgs-msg:lamp_states instead.")
  (lamp_states m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrafficLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:id-val is deprecated.  Use autoware_perception_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightState>) ostream)
  "Serializes a message object of type '<TrafficLightState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lamp_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lamp_states))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightState>) istream)
  "Deserializes a message object of type '<TrafficLightState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lamp_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lamp_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_perception_msgs-msg:LampState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightState>)))
  "Returns string type for a message object of type '<TrafficLightState>"
  "autoware_perception_msgs/TrafficLightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightState)))
  "Returns string type for a message object of type 'TrafficLightState"
  "autoware_perception_msgs/TrafficLightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightState>)))
  "Returns md5sum for a message object of type '<TrafficLightState>"
  "e8e13d98ab9da18d92f4dd32e357fa36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightState)))
  "Returns md5sum for a message object of type 'TrafficLightState"
  "e8e13d98ab9da18d92f4dd32e357fa36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightState>)))
  "Returns full string definition for message of type '<TrafficLightState>"
  (cl:format cl:nil "autoware_perception_msgs/LampState[] lamp_states~%int32 id~%================================================================================~%MSG: autoware_perception_msgs/LampState~%uint8 UNKNOWN=0~%uint8 RED=1~%uint8 GREEN=2~%uint8 YELLOW=3~%uint8 LEFT=4~%uint8 RIGHT=5~%uint8 UP=6~%uint8 DOWN=7~%uint32 type~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightState)))
  "Returns full string definition for message of type 'TrafficLightState"
  (cl:format cl:nil "autoware_perception_msgs/LampState[] lamp_states~%int32 id~%================================================================================~%MSG: autoware_perception_msgs/LampState~%uint8 UNKNOWN=0~%uint8 RED=1~%uint8 GREEN=2~%uint8 YELLOW=3~%uint8 LEFT=4~%uint8 RIGHT=5~%uint8 UP=6~%uint8 DOWN=7~%uint32 type~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lamp_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightState>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightState
    (cl:cons ':lamp_states (lamp_states msg))
    (cl:cons ':id (id msg))
))
