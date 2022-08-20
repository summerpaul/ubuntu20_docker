; Auto-generated. Do not edit!


(cl:in-package autoware_planning_msgs-msg)


;//! \htmlinclude PathPoint.msg.html

(cl:defclass <PathPoint> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PathPoint (<PathPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_planning_msgs-msg:<PathPoint> is deprecated: use autoware_planning_msgs-msg:PathPoint instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:pose-val is deprecated.  Use autoware_planning_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <PathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:twist-val is deprecated.  Use autoware_planning_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:type-val is deprecated.  Use autoware_planning_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PathPoint>)))
    "Constants for message type '<PathPoint>"
  '((:REFFERENCE . 0)
    (:FIXED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PathPoint)))
    "Constants for message type 'PathPoint"
  '((:REFFERENCE . 0)
    (:FIXED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPoint>) ostream)
  "Serializes a message object of type '<PathPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPoint>) istream)
  "Deserializes a message object of type '<PathPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPoint>)))
  "Returns string type for a message object of type '<PathPoint>"
  "autoware_planning_msgs/PathPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPoint)))
  "Returns string type for a message object of type 'PathPoint"
  "autoware_planning_msgs/PathPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPoint>)))
  "Returns md5sum for a message object of type '<PathPoint>"
  "e48252d5946ba8f4e2250819f89ca6a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPoint)))
  "Returns md5sum for a message object of type 'PathPoint"
  "e48252d5946ba8f4e2250819f89ca6a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPoint>)))
  "Returns full string definition for message of type '<PathPoint>"
  (cl:format cl:nil "uint8 REFFERENCE=0~%uint8 FIXED=1~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%uint8 type~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPoint)))
  "Returns full string definition for message of type 'PathPoint"
  (cl:format cl:nil "uint8 REFFERENCE=0~%uint8 FIXED=1~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%uint8 type~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPoint
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':type (type msg))
))
