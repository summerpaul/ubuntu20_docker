; Auto-generated. Do not edit!


(cl:in-package autoware_lanelet2_msgs-msg)


;//! \htmlinclude MapBin.msg.html

(cl:defclass <MapBin> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (format_version
    :reader format_version
    :initarg :format_version
    :type cl:string
    :initform "")
   (map_version
    :reader map_version
    :initarg :map_version
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MapBin (<MapBin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapBin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapBin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_lanelet2_msgs-msg:<MapBin> is deprecated: use autoware_lanelet2_msgs-msg:MapBin instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapBin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_lanelet2_msgs-msg:header-val is deprecated.  Use autoware_lanelet2_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'format_version-val :lambda-list '(m))
(cl:defmethod format_version-val ((m <MapBin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_lanelet2_msgs-msg:format_version-val is deprecated.  Use autoware_lanelet2_msgs-msg:format_version instead.")
  (format_version m))

(cl:ensure-generic-function 'map_version-val :lambda-list '(m))
(cl:defmethod map_version-val ((m <MapBin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_lanelet2_msgs-msg:map_version-val is deprecated.  Use autoware_lanelet2_msgs-msg:map_version instead.")
  (map_version m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MapBin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_lanelet2_msgs-msg:data-val is deprecated.  Use autoware_lanelet2_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapBin>) ostream)
  "Serializes a message object of type '<MapBin>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'format_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'format_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_version))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapBin>) istream)
  "Deserializes a message object of type '<MapBin>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'format_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'format_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapBin>)))
  "Returns string type for a message object of type '<MapBin>"
  "autoware_lanelet2_msgs/MapBin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapBin)))
  "Returns string type for a message object of type 'MapBin"
  "autoware_lanelet2_msgs/MapBin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapBin>)))
  "Returns md5sum for a message object of type '<MapBin>"
  "9d7c66d4c8e6e3f95a20131a6e37fe22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapBin)))
  "Returns md5sum for a message object of type 'MapBin"
  "9d7c66d4c8e6e3f95a20131a6e37fe22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapBin>)))
  "Returns full string definition for message of type '<MapBin>"
  (cl:format cl:nil "# This contains the lanelet map in binary format.~%~%# Timestamp and frame_id of the map~%Header header~%~%# version of map format. keep this as empty string if unnecessary~%string format_version~%~%# version of map version. keep this as empty string if unnecessary~%string map_version~%~%# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapBin)))
  "Returns full string definition for message of type 'MapBin"
  (cl:format cl:nil "# This contains the lanelet map in binary format.~%~%# Timestamp and frame_id of the map~%Header header~%~%# version of map format. keep this as empty string if unnecessary~%string format_version~%~%# version of map version. keep this as empty string if unnecessary~%string map_version~%~%# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapBin>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'format_version))
     4 (cl:length (cl:slot-value msg 'map_version))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapBin>))
  "Converts a ROS message object to a list"
  (cl:list 'MapBin
    (cl:cons ':header (header msg))
    (cl:cons ':format_version (format_version msg))
    (cl:cons ':map_version (map_version msg))
    (cl:cons ':data (data msg))
))
