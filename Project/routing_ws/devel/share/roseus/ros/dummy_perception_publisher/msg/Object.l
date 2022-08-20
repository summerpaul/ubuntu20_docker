;; Auto-generated. Do not edit!


(when (boundp 'dummy_perception_publisher::Object)
  (if (not (find-package "DUMMY_PERCEPTION_PUBLISHER"))
    (make-package "DUMMY_PERCEPTION_PUBLISHER"))
  (shadow 'Object (find-package "DUMMY_PERCEPTION_PUBLISHER")))
(unless (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT")
  (make-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "AUTOWARE_PERCEPTION_MSGS"))
  (ros::roseus-add-msgs "autoware_perception_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(intern "*ADD*" (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(shadow '*ADD* (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(defconstant dummy_perception_publisher::Object::*ADD* 0)
(intern "*MODIFY*" (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(shadow '*MODIFY* (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(defconstant dummy_perception_publisher::Object::*MODIFY* 1)
(intern "*DELETE*" (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(shadow '*DELETE* (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(defconstant dummy_perception_publisher::Object::*DELETE* 2)
(intern "*DELETEALL*" (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(shadow '*DELETEALL* (find-package "DUMMY_PERCEPTION_PUBLISHER::OBJECT"))
(defconstant dummy_perception_publisher::Object::*DELETEALL* 3)

(defun dummy_perception_publisher::Object-to-symbol (const)
  (cond
        ((= const 0) 'dummy_perception_publisher::Object::*ADD*)
        ((= const 1) 'dummy_perception_publisher::Object::*MODIFY*)
        ((= const 2) 'dummy_perception_publisher::Object::*DELETE*)
        ((= const 3) 'dummy_perception_publisher::Object::*DELETEALL*)
        (t nil)))

(defclass dummy_perception_publisher::Object
  :super ros::object
  :slots (_header _id _initial_state _semantic _shape _action ))

(defmethod dummy_perception_publisher::Object
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:initial_state __initial_state) (instance dummy_perception_publisher::InitialState :init))
    ((:semantic __semantic) (instance autoware_perception_msgs::Semantic :init))
    ((:shape __shape) (instance autoware_perception_msgs::Shape :init))
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id __id)
   (setq _initial_state __initial_state)
   (setq _semantic __semantic)
   (setq _shape __shape)
   (setq _action (round __action))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:initial_state
   (&rest __initial_state)
   (if (keywordp (car __initial_state))
       (send* _initial_state __initial_state)
     (progn
       (if __initial_state (setq _initial_state (car __initial_state)))
       _initial_state)))
  (:semantic
   (&rest __semantic)
   (if (keywordp (car __semantic))
       (send* _semantic __semantic)
     (progn
       (if __semantic (setq _semantic (car __semantic)))
       _semantic)))
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; dummy_perception_publisher/InitialState _initial_state
    (send _initial_state :serialization-length)
    ;; autoware_perception_msgs/Semantic _semantic
    (send _semantic :serialization-length)
    ;; autoware_perception_msgs/Shape _shape
    (send _shape :serialization-length)
    ;; int32 _action
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; dummy_perception_publisher/InitialState _initial_state
       (send _initial_state :serialize s)
     ;; autoware_perception_msgs/Semantic _semantic
       (send _semantic :serialize s)
     ;; autoware_perception_msgs/Shape _shape
       (send _shape :serialize s)
     ;; int32 _action
       (write-long _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; dummy_perception_publisher/InitialState _initial_state
     (send _initial_state :deserialize buf ptr-) (incf ptr- (send _initial_state :serialization-length))
   ;; autoware_perception_msgs/Semantic _semantic
     (send _semantic :deserialize buf ptr-) (incf ptr- (send _semantic :serialization-length))
   ;; autoware_perception_msgs/Shape _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dummy_perception_publisher::Object :md5sum-) "94b91837e276c90bb55c99d5cd13f705")
(setf (get dummy_perception_publisher::Object :datatype-) "dummy_perception_publisher/Object")
(setf (get dummy_perception_publisher::Object :definition-)
      "std_msgs/Header header
uuid_msgs/UniqueID id
dummy_perception_publisher/InitialState initial_state
autoware_perception_msgs/Semantic semantic
autoware_perception_msgs/Shape shape

uint8 ADD=0
uint8 MODIFY=1
uint8 DELETE=2
uint8 DELETEALL=3
int32 action
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: dummy_perception_publisher/InitialState
geometry_msgs/PoseWithCovariance pose_covariance
geometry_msgs/TwistWithCovariance twist_covariance
================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: autoware_perception_msgs/Semantic
uint8 UNKNOWN=0
uint8 CAR=1
uint8 TRUCK=2
uint8 BUS=3
uint8 BICYCLE=4
uint8 MOTORBIKE=5
uint8 PEDESTRIAN=6
uint8 ANIMAL=7
uint32 type
float64 confidence
================================================================================
MSG: autoware_perception_msgs/Shape
uint8 BOUNDING_BOX=0
uint8 CYLINDER=1
uint8 POLYGON=2

uint8 type
geometry_msgs/Vector3 dimensions
geometry_msgs/Polygon footprint 

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :dummy_perception_publisher/Object "94b91837e276c90bb55c99d5cd13f705")


