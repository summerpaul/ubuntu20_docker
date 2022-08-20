; Auto-generated. Do not edit!


(cl:in-package dummy_perception_publisher-msg)


;//! \htmlinclude InitialState.msg.html

(cl:defclass <InitialState> (roslisp-msg-protocol:ros-message)
  ((pose_covariance
    :reader pose_covariance
    :initarg :pose_covariance
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (twist_covariance
    :reader twist_covariance
    :initarg :twist_covariance
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance)))
)

(cl:defclass InitialState (<InitialState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitialState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitialState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dummy_perception_publisher-msg:<InitialState> is deprecated: use dummy_perception_publisher-msg:InitialState instead.")))

(cl:ensure-generic-function 'pose_covariance-val :lambda-list '(m))
(cl:defmethod pose_covariance-val ((m <InitialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dummy_perception_publisher-msg:pose_covariance-val is deprecated.  Use dummy_perception_publisher-msg:pose_covariance instead.")
  (pose_covariance m))

(cl:ensure-generic-function 'twist_covariance-val :lambda-list '(m))
(cl:defmethod twist_covariance-val ((m <InitialState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dummy_perception_publisher-msg:twist_covariance-val is deprecated.  Use dummy_perception_publisher-msg:twist_covariance instead.")
  (twist_covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitialState>) ostream)
  "Serializes a message object of type '<InitialState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_covariance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_covariance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitialState>) istream)
  "Deserializes a message object of type '<InitialState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_covariance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_covariance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitialState>)))
  "Returns string type for a message object of type '<InitialState>"
  "dummy_perception_publisher/InitialState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitialState)))
  "Returns string type for a message object of type 'InitialState"
  "dummy_perception_publisher/InitialState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitialState>)))
  "Returns md5sum for a message object of type '<InitialState>"
  "95005958cfeaf8d17bca5017f302d25c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitialState)))
  "Returns md5sum for a message object of type 'InitialState"
  "95005958cfeaf8d17bca5017f302d25c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitialState>)))
  "Returns full string definition for message of type '<InitialState>"
  (cl:format cl:nil "geometry_msgs/PoseWithCovariance pose_covariance~%geometry_msgs/TwistWithCovariance twist_covariance~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitialState)))
  "Returns full string definition for message of type 'InitialState"
  (cl:format cl:nil "geometry_msgs/PoseWithCovariance pose_covariance~%geometry_msgs/TwistWithCovariance twist_covariance~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitialState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_covariance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_covariance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitialState>))
  "Converts a ROS message object to a list"
  (cl:list 'InitialState
    (cl:cons ':pose_covariance (pose_covariance msg))
    (cl:cons ':twist_covariance (twist_covariance msg))
))
