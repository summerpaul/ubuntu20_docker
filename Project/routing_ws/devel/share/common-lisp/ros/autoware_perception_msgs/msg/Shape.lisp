; Auto-generated. Do not edit!


(cl:in-package autoware_perception_msgs-msg)


;//! \htmlinclude Shape.msg.html

(cl:defclass <Shape> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (footprint
    :reader footprint
    :initarg :footprint
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon)))
)

(cl:defclass Shape (<Shape>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shape>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shape)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_perception_msgs-msg:<Shape> is deprecated: use autoware_perception_msgs-msg:Shape instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:type-val is deprecated.  Use autoware_perception_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:dimensions-val is deprecated.  Use autoware_perception_msgs-msg:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_perception_msgs-msg:footprint-val is deprecated.  Use autoware_perception_msgs-msg:footprint instead.")
  (footprint m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Shape>)))
    "Constants for message type '<Shape>"
  '((:BOUNDING_BOX . 0)
    (:CYLINDER . 1)
    (:POLYGON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Shape)))
    "Constants for message type 'Shape"
  '((:BOUNDING_BOX . 0)
    (:CYLINDER . 1)
    (:POLYGON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shape>) ostream)
  "Serializes a message object of type '<Shape>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'footprint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shape>) istream)
  "Deserializes a message object of type '<Shape>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'footprint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shape>)))
  "Returns string type for a message object of type '<Shape>"
  "autoware_perception_msgs/Shape")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shape)))
  "Returns string type for a message object of type 'Shape"
  "autoware_perception_msgs/Shape")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shape>)))
  "Returns md5sum for a message object of type '<Shape>"
  "4d17401cc8cf3df1a70f0cb6ccdc143a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shape)))
  "Returns md5sum for a message object of type 'Shape"
  "4d17401cc8cf3df1a70f0cb6ccdc143a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shape>)))
  "Returns full string definition for message of type '<Shape>"
  (cl:format cl:nil "uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shape)))
  "Returns full string definition for message of type 'Shape"
  (cl:format cl:nil "uint8 BOUNDING_BOX=0~%uint8 CYLINDER=1~%uint8 POLYGON=2~%~%uint8 type~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Polygon footprint ~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shape>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'footprint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shape>))
  "Converts a ROS message object to a list"
  (cl:list 'Shape
    (cl:cons ':type (type msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':footprint (footprint msg))
))
