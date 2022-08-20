; Auto-generated. Do not edit!


(cl:in-package autoware_planning_msgs-msg)


;//! \htmlinclude LaneSequence.msg.html

(cl:defclass <LaneSequence> (roslisp-msg-protocol:ros-message)
  ((lane_ids
    :reader lane_ids
    :initarg :lane_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LaneSequence (<LaneSequence>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneSequence>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneSequence)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_planning_msgs-msg:<LaneSequence> is deprecated: use autoware_planning_msgs-msg:LaneSequence instead.")))

(cl:ensure-generic-function 'lane_ids-val :lambda-list '(m))
(cl:defmethod lane_ids-val ((m <LaneSequence>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:lane_ids-val is deprecated.  Use autoware_planning_msgs-msg:lane_ids instead.")
  (lane_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneSequence>) ostream)
  "Serializes a message object of type '<LaneSequence>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'lane_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneSequence>) istream)
  "Deserializes a message object of type '<LaneSequence>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneSequence>)))
  "Returns string type for a message object of type '<LaneSequence>"
  "autoware_planning_msgs/LaneSequence")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneSequence)))
  "Returns string type for a message object of type 'LaneSequence"
  "autoware_planning_msgs/LaneSequence")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneSequence>)))
  "Returns md5sum for a message object of type '<LaneSequence>"
  "8ff2c02f553be6713a6038a7d7d22b99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneSequence)))
  "Returns md5sum for a message object of type 'LaneSequence"
  "8ff2c02f553be6713a6038a7d7d22b99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneSequence>)))
  "Returns full string definition for message of type '<LaneSequence>"
  (cl:format cl:nil "int64[] lane_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneSequence)))
  "Returns full string definition for message of type 'LaneSequence"
  (cl:format cl:nil "int64[] lane_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneSequence>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneSequence>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneSequence
    (cl:cons ':lane_ids (lane_ids msg))
))
