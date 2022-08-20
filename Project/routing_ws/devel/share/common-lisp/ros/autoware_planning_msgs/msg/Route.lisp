; Auto-generated. Do not edit!


(cl:in-package autoware_planning_msgs-msg)


;//! \htmlinclude Route.msg.html

(cl:defclass <Route> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (route_sections
    :reader route_sections
    :initarg :route_sections
    :type (cl:vector autoware_planning_msgs-msg:RouteSection)
   :initform (cl:make-array 0 :element-type 'autoware_planning_msgs-msg:RouteSection :initial-element (cl:make-instance 'autoware_planning_msgs-msg:RouteSection))))
)

(cl:defclass Route (<Route>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Route>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Route)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_planning_msgs-msg:<Route> is deprecated: use autoware_planning_msgs-msg:Route instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:header-val is deprecated.  Use autoware_planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <Route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:goal_pose-val is deprecated.  Use autoware_planning_msgs-msg:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'route_sections-val :lambda-list '(m))
(cl:defmethod route_sections-val ((m <Route>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:route_sections-val is deprecated.  Use autoware_planning_msgs-msg:route_sections instead.")
  (route_sections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Route>) ostream)
  "Serializes a message object of type '<Route>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'route_sections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'route_sections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Route>) istream)
  "Deserializes a message object of type '<Route>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'route_sections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'route_sections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_planning_msgs-msg:RouteSection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Route>)))
  "Returns string type for a message object of type '<Route>"
  "autoware_planning_msgs/Route")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Route)))
  "Returns string type for a message object of type 'Route"
  "autoware_planning_msgs/Route")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Route>)))
  "Returns md5sum for a message object of type '<Route>"
  "a97cc0d08212f1aeb6ccf49a5a9f422b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Route)))
  "Returns md5sum for a message object of type 'Route"
  "a97cc0d08212f1aeb6ccf49a5a9f422b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Route>)))
  "Returns full string definition for message of type '<Route>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose goal_pose~%autoware_planning_msgs/RouteSection[] route_sections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: autoware_planning_msgs/RouteSection~%int64[] lane_ids~%int64 preferred_lane_id~%int64[] continued_lane_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Route)))
  "Returns full string definition for message of type 'Route"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose goal_pose~%autoware_planning_msgs/RouteSection[] route_sections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: autoware_planning_msgs/RouteSection~%int64[] lane_ids~%int64 preferred_lane_id~%int64[] continued_lane_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Route>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'route_sections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Route>))
  "Converts a ROS message object to a list"
  (cl:list 'Route
    (cl:cons ':header (header msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':route_sections (route_sections msg))
))
