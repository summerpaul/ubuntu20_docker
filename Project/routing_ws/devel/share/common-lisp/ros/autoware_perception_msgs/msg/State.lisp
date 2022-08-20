; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((pose_covariance
    :reader pose_covariance
    :initarg :pose_covariance
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (orientation_reliable
    :reader orientation_reliable
    :initarg :orientation_reliable
    :type cl:boolean
    :initform cl:nil)
   (twist_covariance
    :reader twist_covariance
    :initarg :twist_covariance
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (twist_reliable
    :reader twist_reliable
    :initarg :twist_reliable
    :type cl:boolean
    :initform cl:nil)
   (acceleration_covariance
    :reader acceleration_covariance
    :initarg :acceleration_covariance
    :type geometry_msgs-msg:AccelWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:AccelWithCovariance))
   (acceleration_reliable
    :reader acceleration_reliable
    :initarg :acceleration_reliable
    :type cl:boolean
    :initform cl:nil)
   (predicted_paths
    :reader predicted_paths
    :initarg :predicted_paths
    :type (cl:vector autoware_perception_msgs-msg:PredictedPath)
   :initform (cl:make-array 0 :element-type 'autoware_perception_msgs-msg:PredictedPath :initial-element (cl:make-instance 'autoware_perception_msgs-msg:PredictedPath))))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<State> is deprecated: use autoware_perception_msgs-msg:State instead.")))

(cl:ensure-generic-function 'pose_covariance-val :lambda-list '(m))
(cl:defmethod pose_covariance-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:pose_covariance-val is deprecated.  Use autoware_perception_msgs-msg:pose_covariance instead.")
  (pose_covariance m))

(cl:ensure-generic-function 'orientation_reliable-val :lambda-list '(m))
(cl:defmethod orientation_reliable-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:orientation_reliable-val is deprecated.  Use autoware_perception_msgs-msg:orientation_reliable instead.")
  (orientation_reliable m))

(cl:ensure-generic-function 'twist_covariance-val :lambda-list '(m))
(cl:defmethod twist_covariance-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:twist_covariance-val is deprecated.  Use autoware_perception_msgs-msg:twist_covariance instead.")
  (twist_covariance m))

(cl:ensure-generic-function 'twist_reliable-val :lambda-list '(m))
(cl:defmethod twist_reliable-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:twist_reliable-val is deprecated.  Use autoware_perception_msgs-msg:twist_reliable instead.")
  (twist_reliable m))

(cl:ensure-generic-function 'acceleration_covariance-val :lambda-list '(m))
(cl:defmethod acceleration_covariance-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:acceleration_covariance-val is deprecated.  Use autoware_perception_msgs-msg:acceleration_covariance instead.")
  (acceleration_covariance m))

(cl:ensure-generic-function 'acceleration_reliable-val :lambda-list '(m))
(cl:defmethod acceleration_reliable-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:acceleration_reliable-val is deprecated.  Use autoware_perception_msgs-msg:acceleration_reliable instead.")
  (acceleration_reliable m))

(cl:ensure-generic-function 'predicted_paths-val :lambda-list '(m))
(cl:defmethod predicted_paths-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:predicted_paths-val is deprecated.  Use autoware_perception_msgs-msg:predicted_paths instead.")
  (predicted_paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_covariance) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'orientation_reliable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist_covariance) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'twist_reliable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_covariance) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'acceleration_reliable) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predicted_paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'predicted_paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_covariance) istream)
    (cl:setf (cl:slot-value msg 'orientation_reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist_covariance) istream)
    (cl:setf (cl:slot-value msg 'twist_reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_covariance) istream)
    (cl:setf (cl:slot-value msg 'acceleration_reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predicted_paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predicted_paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_perception_msgs-msg:PredictedPath))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "autoware_perception_msgs/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "autoware_perception_msgs/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "adee6436156f6f80a5204905e49c421d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "adee6436156f6f80a5204905e49c421d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_covariance))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist_covariance))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_covariance))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predicted_paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':pose_covariance (pose_covariance msg))
    (cl:cons ':orientation_reliable (orientation_reliable msg))
    (cl:cons ':twist_covariance (twist_covariance msg))
    (cl:cons ':twist_reliable (twist_reliable msg))
    (cl:cons ':acceleration_covariance (acceleration_covariance msg))
    (cl:cons ':acceleration_reliable (acceleration_reliable msg))
    (cl:cons ':predicted_paths (predicted_paths msg))
))
