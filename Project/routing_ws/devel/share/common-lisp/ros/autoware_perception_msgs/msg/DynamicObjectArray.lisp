; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude DynamicObjectArray.msg.html

(cl:defclass <DynamicObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector autoware_perception_msgs-msg:DynamicObject)
   :initform (cl:make-array 0 :element-type 'autoware_perception_msgs-msg:DynamicObject :initial-element (cl:make-instance 'autoware_perception_msgs-msg:DynamicObject))))
)

(cl:defclass DynamicObjectArray (<DynamicObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<DynamicObjectArray> is deprecated: use autoware_perception_msgs-msg:DynamicObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DynamicObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:header-val is deprecated.  Use autoware_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <DynamicObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:objects-val is deprecated.  Use autoware_perception_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicObjectArray>) ostream)
  "Serializes a message object of type '<DynamicObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicObjectArray>) istream)
  "Deserializes a message object of type '<DynamicObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_perception_msgs-msg:DynamicObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicObjectArray>)))
  "Returns string type for a message object of type '<DynamicObjectArray>"
  "autoware_perception_msgs/DynamicObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicObjectArray)))
  "Returns string type for a message object of type 'DynamicObjectArray"
  "autoware_perception_msgs/DynamicObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicObjectArray>)))
  "Returns md5sum for a message object of type '<DynamicObjectArray>"
  "a2e86adc1395807cc48f59093e5ef421")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicObjectArray)))
  "Returns md5sum for a message object of type 'DynamicObjectArray"
  "a2e86adc1395807cc48f59093e5ef421")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicObjectArray>)))
  "Returns full string definition for message of type '<DynamicObjectArray>"
  (cl:format cl:nil "std_msgs/Header header~%DynamicObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/DynamicObject~%uuid_msgs/UniqueID id~%Semantic semantic~%State state~%Shape shape~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: autoware_perception_msgs/Semantic~%uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%================================================================================~%MSG: autoware_perception_msgs/State~%geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: autoware_perception_msgs/Shape~%uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicObjectArray)))
  "Returns full string definition for message of type 'DynamicObjectArray"
  (cl:format cl:nil "std_msgs/Header header~%DynamicObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/DynamicObject~%uuid_msgs/UniqueID id~%Semantic semantic~%State state~%Shape shape~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: autoware_perception_msgs/Semantic~%uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%================================================================================~%MSG: autoware_perception_msgs/State~%geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: autoware_perception_msgs/Shape~%uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
