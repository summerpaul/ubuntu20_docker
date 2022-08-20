; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude TrafficLightStateArray.msg.html

(cl:defclass <TrafficLightStateArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (states
    :reader states
    :initarg :states
    :type (cl:vector autoware_perception_msgs-msg:TrafficLightState)
   :initform (cl:make-array 0 :element-type 'autoware_perception_msgs-msg:TrafficLightState :initial-element (cl:make-instance 'autoware_perception_msgs-msg:TrafficLightState))))
)

(cl:defclass TrafficLightStateArray (<TrafficLightStateArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightStateArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightStateArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<TrafficLightStateArray> is deprecated: use autoware_perception_msgs-msg:TrafficLightStateArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficLightStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:header-val is deprecated.  Use autoware_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <TrafficLightStateArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:states-val is deprecated.  Use autoware_perception_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightStateArray>) ostream)
  "Serializes a message object of type '<TrafficLightStateArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightStateArray>) istream)
  "Deserializes a message object of type '<TrafficLightStateArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_perception_msgs-msg:TrafficLightState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightStateArray>)))
  "Returns string type for a message object of type '<TrafficLightStateArray>"
  "autoware_perception_msgs/TrafficLightStateArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightStateArray)))
  "Returns string type for a message object of type 'TrafficLightStateArray"
  "autoware_perception_msgs/TrafficLightStateArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightStateArray>)))
  "Returns md5sum for a message object of type '<TrafficLightStateArray>"
  "222d53a44e10b32a97b360149fb3e9b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightStateArray)))
  "Returns md5sum for a message object of type 'TrafficLightStateArray"
  "222d53a44e10b32a97b360149fb3e9b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightStateArray>)))
  "Returns full string definition for message of type '<TrafficLightStateArray>"
  (cl:format cl:nil "std_msgs/Header header~%autoware_perception_msgs/TrafficLightState[] states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/TrafficLightState~%autoware_perception_msgs/LampState[] lamp_states~%int32 id~%================================================================================~%MSG: autoware_perception_msgs/LampState~%uint8 UNKNOWN=0~%uint8 RED=1~%uint8 GREEN=2~%uint8 YELLOW=3~%uint8 LEFT=4~%uint8 RIGHT=5~%uint8 UP=6~%uint8 DOWN=7~%uint32 type~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightStateArray)))
  "Returns full string definition for message of type 'TrafficLightStateArray"
  (cl:format cl:nil "std_msgs/Header header~%autoware_perception_msgs/TrafficLightState[] states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/TrafficLightState~%autoware_perception_msgs/LampState[] lamp_states~%int32 id~%================================================================================~%MSG: autoware_perception_msgs/LampState~%uint8 UNKNOWN=0~%uint8 RED=1~%uint8 GREEN=2~%uint8 YELLOW=3~%uint8 LEFT=4~%uint8 RIGHT=5~%uint8 UP=6~%uint8 DOWN=7~%uint32 type~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightStateArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightStateArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightStateArray
    (cl:cons ':header (header msg))
    (cl:cons ':states (states msg))
))
