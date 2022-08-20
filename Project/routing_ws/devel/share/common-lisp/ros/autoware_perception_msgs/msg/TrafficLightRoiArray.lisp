; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude TrafficLightRoiArray.msg.html

(cl:defclass <TrafficLightRoiArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rois
    :reader rois
    :initarg :rois
    :type (cl:vector autoware_perception_msgs-msg:TrafficLightRoi)
   :initform (cl:make-array 0 :element-type 'autoware_perception_msgs-msg:TrafficLightRoi :initial-element (cl:make-instance 'autoware_perception_msgs-msg:TrafficLightRoi))))
)

(cl:defclass TrafficLightRoiArray (<TrafficLightRoiArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightRoiArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightRoiArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<TrafficLightRoiArray> is deprecated: use autoware_perception_msgs-msg:TrafficLightRoiArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficLightRoiArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:header-val is deprecated.  Use autoware_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rois-val :lambda-list '(m))
(cl:defmethod rois-val ((m <TrafficLightRoiArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:rois-val is deprecated.  Use autoware_perception_msgs-msg:rois instead.")
  (rois m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightRoiArray>) ostream)
  "Serializes a message object of type '<TrafficLightRoiArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rois))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rois))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightRoiArray>) istream)
  "Deserializes a message object of type '<TrafficLightRoiArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rois) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rois)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_perception_msgs-msg:TrafficLightRoi))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightRoiArray>)))
  "Returns string type for a message object of type '<TrafficLightRoiArray>"
  "autoware_perception_msgs/TrafficLightRoiArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightRoiArray)))
  "Returns string type for a message object of type 'TrafficLightRoiArray"
  "autoware_perception_msgs/TrafficLightRoiArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightRoiArray>)))
  "Returns md5sum for a message object of type '<TrafficLightRoiArray>"
  "bcca094be32c25baf7286433b647e484")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightRoiArray)))
  "Returns md5sum for a message object of type 'TrafficLightRoiArray"
  "bcca094be32c25baf7286433b647e484")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightRoiArray>)))
  "Returns full string definition for message of type '<TrafficLightRoiArray>"
  (cl:format cl:nil "std_msgs/Header header~%autoware_perception_msgs/TrafficLightRoi[] rois~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/TrafficLightRoi~%sensor_msgs/RegionOfInterest roi~%int32 id~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightRoiArray)))
  "Returns full string definition for message of type 'TrafficLightRoiArray"
  (cl:format cl:nil "std_msgs/Header header~%autoware_perception_msgs/TrafficLightRoi[] rois~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_perception_msgs/TrafficLightRoi~%sensor_msgs/RegionOfInterest roi~%int32 id~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightRoiArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rois) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightRoiArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightRoiArray
    (cl:cons ':header (header msg))
    (cl:cons ':rois (rois msg))
))
