; Auto-generated. Do not edit!


(cl:in-package autoware_planning_msgs-msg)


;//! \htmlinclude PathPointWithLaneId.msg.html

(cl:defclass <PathPointWithLaneId> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type autoware_planning_msgs-msg:PathPoint
    :initform (cl:make-instance 'autoware_planning_msgs-msg:PathPoint))
   (lane_ids
    :reader lane_ids
    :initarg :lane_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass PathPointWithLaneId (<PathPointWithLaneId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPointWithLaneId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPointWithLaneId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_planning_msgs-msg:<PathPointWithLaneId> is deprecated: use autoware_planning_msgs-msg:PathPointWithLaneId instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <PathPointWithLaneId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:point-val is deprecated.  Use autoware_planning_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'lane_ids-val :lambda-list '(m))
(cl:defmethod lane_ids-val ((m <PathPointWithLaneId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:lane_ids-val is deprecated.  Use autoware_planning_msgs-msg:lane_ids instead.")
  (lane_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPointWithLaneId>) ostream)
  "Serializes a message object of type '<PathPointWithLaneId>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPointWithLaneId>) istream)
  "Deserializes a message object of type '<PathPointWithLaneId>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPointWithLaneId>)))
  "Returns string type for a message object of type '<PathPointWithLaneId>"
  "autoware_planning_msgs/PathPointWithLaneId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPointWithLaneId)))
  "Returns string type for a message object of type 'PathPointWithLaneId"
  "autoware_planning_msgs/PathPointWithLaneId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPointWithLaneId>)))
  "Returns md5sum for a message object of type '<PathPointWithLaneId>"
  "76ff2694b5d561459dd969c578f7a19d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPointWithLaneId)))
  "Returns md5sum for a message object of type 'PathPointWithLaneId"
  "76ff2694b5d561459dd969c578f7a19d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPointWithLaneId>)))
  "Returns full string definition for message of type '<PathPointWithLaneId>"
  (cl:format cl:nil "autoware_planning_msgs/PathPoint point~%int64[] lane_ids~%================================================================================~%MSG: autoware_planning_msgs/PathPoint~%uint8 REFFERENCE=0~%uint8 FIXED=1~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%uint8 type~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPointWithLaneId)))
  "Returns full string definition for message of type 'PathPointWithLaneId"
  (cl:format cl:nil "autoware_planning_msgs/PathPoint point~%int64[] lane_ids~%================================================================================~%MSG: autoware_planning_msgs/PathPoint~%uint8 REFFERENCE=0~%uint8 FIXED=1~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%uint8 type~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPointWithLaneId>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPointWithLaneId>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPointWithLaneId
    (cl:cons ':point (point msg))
    (cl:cons ':lane_ids (lane_ids msg))
))
