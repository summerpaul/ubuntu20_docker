; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude DynamicObjectWithFeatureArray.msg.html

(cl:defclass <DynamicObjectWithFeatureArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (feature_objects
    :reader feature_objects
    :initarg :feature_objects
    :type (cl:vector autoware_perception_msgs-msg:DynamicObjectWithFeature)
   :initform (cl:make-array 0 :element-type 'autoware_perception_msgs-msg:DynamicObjectWithFeature :initial-element (cl:make-instance 'autoware_perception_msgs-msg:DynamicObjectWithFeature))))
)

(cl:defclass DynamicObjectWithFeatureArray (<DynamicObjectWithFeatureArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicObjectWithFeatureArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicObjectWithFeatureArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<DynamicObjectWithFeatureArray> is deprecated: use autoware_perception_msgs-msg:DynamicObjectWithFeatureArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DynamicObjectWithFeatureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:header-val is deprecated.  Use autoware_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'feature_objects-val :lambda-list '(m))
(cl:defmethod feature_objects-val ((m <DynamicObjectWithFeatureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:feature_objects-val is deprecated.  Use autoware_perception_msgs-msg:feature_objects instead.")
  (feature_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicObjectWithFeatureArray>) ostream)
  "Serializes a message object of type '<DynamicObjectWithFeatureArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'feature_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicObjectWithFeatureArray>) istream)
  "Deserializes a message object of type '<DynamicObjectWithFeatureArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_perception_msgs-msg:DynamicObjectWithFeature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicObjectWithFeatureArray>)))
  "Returns string type for a message object of type '<DynamicObjectWithFeatureArray>"
  "autoware_perception_msgs/DynamicObjectWithFeatureArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicObjectWithFeatureArray)))
  "Returns string type for a message object of type 'DynamicObjectWithFeatureArray"
  "autoware_perception_msgs/DynamicObjectWithFeatureArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicObjectWithFeatureArray>)))
  "Returns md5sum for a message object of type '<DynamicObjectWithFeatureArray>"
  "c1b66575b35e5e8fbcbd4e2135be49f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicObjectWithFeatureArray)))
  "Returns md5sum for a message object of type 'DynamicObjectWithFeatureArray"
  "c1b66575b35e5e8fbcbd4e2135be49f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicObjectWithFeatureArray>)))
  "Returns full string definition for message of type '<DynamicObjectWithFeatureArray>"
  (cl:format cl:nil "std_msgs/Header header~%DynamicObjectWithFeature[] feature_objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/DynamicObjectWithFeature~%DynamicObject object~%Feature feature~%================================================================================~%MSG: autoware_perception_msgs/DynamicObject~%uuid_msgs/UniqueID id~%Semantic semantic~%State state~%Shape shape~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: autoware_perception_msgs/Semantic~%uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%================================================================================~%MSG: autoware_perception_msgs/State~%geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: autoware_perception_msgs/Shape~%uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: autoware_perception_msgs/Feature~%sensor_msgs/PointCloud2 cluster~%sensor_msgs/RegionOfInterest roi~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicObjectWithFeatureArray)))
  "Returns full string definition for message of type 'DynamicObjectWithFeatureArray"
  (cl:format cl:nil "std_msgs/Header header~%DynamicObjectWithFeature[] feature_objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/DynamicObjectWithFeature~%DynamicObject object~%Feature feature~%================================================================================~%MSG: autoware_perception_msgs/DynamicObject~%uuid_msgs/UniqueID id~%Semantic semantic~%State state~%Shape shape~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: autoware_perception_msgs/Semantic~%uint8 UNKNOWN=0~%uint8 CAR=1~%uint8 TRUCK=2~%uint8 BUS=3~%uint8 BICYCLE=4~%uint8 MOTORBIKE=5~%uint8 PEDESTRIAN=6~%uint8 ANIMAL=7~%uint32 type~%float64 confidence~%================================================================================~%MSG: autoware_perception_msgs/State~%geometry_msgs/PoseWithCovariance pose_covariance~%bool orientation_reliable~%geometry_msgs/TwistWithCovariance twist_covariance~%bool twist_reliable~%geometry_msgs/AccelWithCovariance acceleration_covariance~%bool acceleration_reliable~%PredictedPath[] predicted_paths~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: autoware_perception_msgs/PredictedPath~%geometry_msgs/PoseWithCovarianceStamped[] path~%float64 confidence~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: autoware_perception_msgs/Shape~%uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: autoware_perception_msgs/Feature~%sensor_msgs/PointCloud2 cluster~%sensor_msgs/RegionOfInterest roi~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicObjectWithFeatureArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicObjectWithFeatureArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicObjectWithFeatureArray
    (cl:cons ':header (header msg))
    (cl:cons ':feature_objects (feature_objects msg))
))