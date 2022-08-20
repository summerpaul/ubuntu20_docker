; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude DynamicObject.msg.html

(cl:defclass <DynamicObject> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (semantic
    :reader semantic
    :initarg :semantic
    :type autoware_perception_msgs-msg:Semantic
    :initform (cl:make-instance 'autoware_perception_msgs-msg:Semantic))
   (state
    :reader state
    :initarg :state
    :type autoware_perception_msgs-msg:State
    :initform (cl:make-instance 'autoware_perception_msgs-msg:State))
   (shape
    :reader shape
    :initarg :shape
    :type autoware_perception_msgs-msg:Shape
    :initform (cl:make-instance 'autoware_perception_msgs-msg:Shape)))
)

(cl:defclass DynamicObject (<DynamicObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<DynamicObject> is deprecated: use autoware_perception_msgs-msg:DynamicObject instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DynamicObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:id-val is deprecated.  Use autoware_perception_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'semantic-val :lambda-list '(m))
(cl:defmethod semantic-val ((m <DynamicObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:semantic-val is deprecated.  Use autoware_perception_msgs-msg:semantic instead.")
  (semantic m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DynamicObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:state-val is deprecated.  Use autoware_perception_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <DynamicObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:shape-val is deprecated.  Use autoware_perception_msgs-msg:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicObject>) ostream)
  "Serializes a message object of type '<DynamicObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'semantic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicObject>) istream)
  "Deserializes a message object of type '<DynamicObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'semantic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicObject>)))
  "Returns string type for a message object of type '<DynamicObject>"
  "autoware_perception_msgs/DynamicObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicObject)))
  "Returns string type for a message object of type 'DynamicObject"
  "autoware_perception_msgs/DynamicObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicObject>)))
  "Returns md5sum for a message object of type '<DynamicObject>"
  "06b99420afc220a7a51342bd8ed4afe8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicObject)))
  "Returns md5sum for a message object of type 'DynamicObject"
  "06b99420afc220a7a51342bd8ed4afe8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicObject>)))
  "Returns full string definition for message of type '<DynamicObject>"
  (cl:format cl:nil "uuid_msgs/UniqueID id~%Semantic semantic~%State state~%Shape shape~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: autoware_perception_msgs/Semantic~%uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%================================================================================~%MSG: autoware_perception_msgs/State~%geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/Shape~%uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicObject)))
  "Returns full string definition for message of type 'DynamicObject"
  (cl:format cl:nil "uuid_msgs/UniqueID id~%Semantic semantic~%State state~%Shape shape~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: autoware_perception_msgs/Semantic~%uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%================================================================================~%MSG: autoware_perception_msgs/State~%geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/Shape~%uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'semantic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicObject>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicObject
    (cl:cons ':id (id msg))
    (cl:cons ':semantic (semantic msg))
    (cl:cons ':state (state msg))
    (cl:cons ':shape (shape msg))
))
