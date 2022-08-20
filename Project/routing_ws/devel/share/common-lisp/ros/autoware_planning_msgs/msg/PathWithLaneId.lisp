; Auto-generated. Do not edit!


(cl:in-package autoware_planning_msgs-msg)


;//! \htmlinclude PathWithLaneId.msg.html

(cl:defclass <PathWithLaneId> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector autoware_planning_msgs-msg:PathPointWithLaneId)
   :initform (cl:make-array 0 :element-type 'autoware_planning_msgs-msg:PathPointWithLaneId :initial-element (cl:make-instance 'autoware_planning_msgs-msg:PathPointWithLaneId)))
   (drivable_area
    :reader drivable_area
    :initarg :drivable_area
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass PathWithLaneId (<PathWithLaneId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathWithLaneId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathWithLaneId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_planning_msgs-msg:<PathWithLaneId> is deprecated: use autoware_planning_msgs-msg:PathWithLaneId instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathWithLaneId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:header-val is deprecated.  Use autoware_planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PathWithLaneId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:points-val is deprecated.  Use autoware_planning_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'drivable_area-val :lambda-list '(m))
(cl:defmethod drivable_area-val ((m <PathWithLaneId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:drivable_area-val is deprecated.  Use autoware_planning_msgs-msg:drivable_area instead.")
  (drivable_area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathWithLaneId>) ostream)
  "Serializes a message object of type '<PathWithLaneId>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drivable_area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathWithLaneId>) istream)
  "Deserializes a message object of type '<PathWithLaneId>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_planning_msgs-msg:PathPointWithLaneId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drivable_area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathWithLaneId>)))
  "Returns string type for a message object of type '<PathWithLaneId>"
  "autoware_planning_msgs/PathWithLaneId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathWithLaneId)))
  "Returns string type for a message object of type 'PathWithLaneId"
  "autoware_planning_msgs/PathWithLaneId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathWithLaneId>)))
  "Returns md5sum for a message object of type '<PathWithLaneId>"
  "96253f4cd9f527a5fc96a075341910d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathWithLaneId)))
  "Returns md5sum for a message object of type 'PathWithLaneId"
  "96253f4cd9f527a5fc96a075341910d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathWithLaneId>)))
  "Returns full string definition for message of type '<PathWithLaneId>"
  (cl:format cl:nil "std_msgs/Header header~%autoware_planning_msgs/PathPointWithLaneId[] points~%nav_msgs/OccupancyGrid drivable_area~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_planning_msgs/PathPointWithLaneId~%autoware_planning_msgs/PathPoint point~%int64[] lane_ids~%================================================================================~%MSG: autoware_planning_msgs/PathPoint~%uint8 REFFERENCE=0~%uint8 FIXED=1~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%uint8 type~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathWithLaneId)))
  "Returns full string definition for message of type 'PathWithLaneId"
  (cl:format cl:nil "std_msgs/Header header~%autoware_planning_msgs/PathPointWithLaneId[] points~%nav_msgs/OccupancyGrid drivable_area~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_planning_msgs/PathPointWithLaneId~%autoware_planning_msgs/PathPoint point~%int64[] lane_ids~%================================================================================~%MSG: autoware_planning_msgs/PathPoint~%uint8 REFFERENCE=0~%uint8 FIXED=1~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%uint8 type~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathWithLaneId>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drivable_area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathWithLaneId>))
  "Converts a ROS message object to a list"
  (cl:list 'PathWithLaneId
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
    (cl:cons ':drivable_area (drivable_area msg))
))
