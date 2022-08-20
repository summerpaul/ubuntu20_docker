# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_perception_msgs/DynamicObjectWithFeature.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import autoware_perception_msgs.msg
import geometry_msgs.msg
import sensor_msgs.msg
import std_msgs.msg
import uuid_msgs.msg

class DynamicObjectWithFeature(genpy.Message):
  _md5sum = "f7e030d28ca36879f5c65a8a058fd7f2"
  _type = "autoware_perception_msgs/DynamicObjectWithFeature"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """DynamicObject object
Feature feature
================================================================================
MSG: autoware_perception_msgs/DynamicObject
uuid_msgs/UniqueID id
Semantic semantic
State state
Shape shape
================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

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
MSG: autoware_perception_msgs/State
geometry_msgs/PoseWithCovariance pose_covariance
bool orientation_reliable
geometry_msgs/TwistWithCovariance twist_covariance
bool twist_reliable
geometry_msgs/AccelWithCovariance acceleration_covariance
bool acceleration_reliable
PredictedPath[] predicted_paths

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
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: autoware_perception_msgs/PredictedPath
geometry_msgs/PoseWithCovarianceStamped[] path
float64 confidence

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
================================================================================
MSG: autoware_perception_msgs/Feature
sensor_msgs/PointCloud2 cluster
sensor_msgs/RegionOfInterest roi
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the "fields" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the "raw"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
"""
  __slots__ = ['object','feature']
  _slot_types = ['autoware_perception_msgs/DynamicObject','autoware_perception_msgs/Feature']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       object,feature

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DynamicObjectWithFeature, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.object is None:
        self.object = autoware_perception_msgs.msg.DynamicObject()
      if self.feature is None:
        self.feature = autoware_perception_msgs.msg.Feature()
    else:
      self.object = autoware_perception_msgs.msg.DynamicObject()
      self.feature = autoware_perception_msgs.msg.Feature()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.object.id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self
      buff.write(_get_struct_I8d().pack(_x.object.semantic.type, _x.object.semantic.confidence, _x.object.state.pose_covariance.pose.position.x, _x.object.state.pose_covariance.pose.position.y, _x.object.state.pose_covariance.pose.position.z, _x.object.state.pose_covariance.pose.orientation.x, _x.object.state.pose_covariance.pose.orientation.y, _x.object.state.pose_covariance.pose.orientation.z, _x.object.state.pose_covariance.pose.orientation.w))
      buff.write(_get_struct_36d().pack(*self.object.state.pose_covariance.covariance))
      _x = self
      buff.write(_get_struct_B6d().pack(_x.object.state.orientation_reliable, _x.object.state.twist_covariance.twist.linear.x, _x.object.state.twist_covariance.twist.linear.y, _x.object.state.twist_covariance.twist.linear.z, _x.object.state.twist_covariance.twist.angular.x, _x.object.state.twist_covariance.twist.angular.y, _x.object.state.twist_covariance.twist.angular.z))
      buff.write(_get_struct_36d().pack(*self.object.state.twist_covariance.covariance))
      _x = self
      buff.write(_get_struct_B6d().pack(_x.object.state.twist_reliable, _x.object.state.acceleration_covariance.accel.linear.x, _x.object.state.acceleration_covariance.accel.linear.y, _x.object.state.acceleration_covariance.accel.linear.z, _x.object.state.acceleration_covariance.accel.angular.x, _x.object.state.acceleration_covariance.accel.angular.y, _x.object.state.acceleration_covariance.accel.angular.z))
      buff.write(_get_struct_36d().pack(*self.object.state.acceleration_covariance.covariance))
      _x = self.object.state.acceleration_reliable
      buff.write(_get_struct_B().pack(_x))
      length = len(self.object.state.predicted_paths)
      buff.write(_struct_I.pack(length))
      for val1 in self.object.state.predicted_paths:
        length = len(val1.path)
        buff.write(_struct_I.pack(length))
        for val2 in val1.path:
          _v1 = val2.header
          _x = _v1.seq
          buff.write(_get_struct_I().pack(_x))
          _v2 = _v1.stamp
          _x = _v2
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v1.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _v3 = val2.pose
          _v4 = _v3.pose
          _v5 = _v4.position
          _x = _v5
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v6 = _v4.orientation
          _x = _v6
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          buff.write(_get_struct_36d().pack(*_v3.covariance))
        _x = val1.confidence
        buff.write(_get_struct_d().pack(_x))
      _x = self
      buff.write(_get_struct_B3d().pack(_x.object.shape.type, _x.object.shape.dimensions.x, _x.object.shape.dimensions.y, _x.object.shape.dimensions.z))
      length = len(self.object.shape.footprint.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.object.shape.footprint.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3I().pack(_x.feature.cluster.header.seq, _x.feature.cluster.header.stamp.secs, _x.feature.cluster.header.stamp.nsecs))
      _x = self.feature.cluster.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.feature.cluster.height, _x.feature.cluster.width))
      length = len(self.feature.cluster.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.feature.cluster.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.feature.cluster.is_bigendian, _x.feature.cluster.point_step, _x.feature.cluster.row_step))
      _x = self.feature.cluster.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_B4IB().pack(_x.feature.cluster.is_dense, _x.feature.roi.x_offset, _x.feature.roi.y_offset, _x.feature.roi.height, _x.feature.roi.width, _x.feature.roi.do_rectify))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.object is None:
        self.object = autoware_perception_msgs.msg.DynamicObject()
      if self.feature is None:
        self.feature = autoware_perception_msgs.msg.Feature()
      end = 0
      start = end
      end += 16
      self.object.id.uuid = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.object.semantic.type, _x.object.semantic.confidence, _x.object.state.pose_covariance.pose.position.x, _x.object.state.pose_covariance.pose.position.y, _x.object.state.pose_covariance.pose.position.z, _x.object.state.pose_covariance.pose.orientation.x, _x.object.state.pose_covariance.pose.orientation.y, _x.object.state.pose_covariance.pose.orientation.z, _x.object.state.pose_covariance.pose.orientation.w,) = _get_struct_I8d().unpack(str[start:end])
      start = end
      end += 288
      self.object.state.pose_covariance.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 49
      (_x.object.state.orientation_reliable, _x.object.state.twist_covariance.twist.linear.x, _x.object.state.twist_covariance.twist.linear.y, _x.object.state.twist_covariance.twist.linear.z, _x.object.state.twist_covariance.twist.angular.x, _x.object.state.twist_covariance.twist.angular.y, _x.object.state.twist_covariance.twist.angular.z,) = _get_struct_B6d().unpack(str[start:end])
      self.object.state.orientation_reliable = bool(self.object.state.orientation_reliable)
      start = end
      end += 288
      self.object.state.twist_covariance.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 49
      (_x.object.state.twist_reliable, _x.object.state.acceleration_covariance.accel.linear.x, _x.object.state.acceleration_covariance.accel.linear.y, _x.object.state.acceleration_covariance.accel.linear.z, _x.object.state.acceleration_covariance.accel.angular.x, _x.object.state.acceleration_covariance.accel.angular.y, _x.object.state.acceleration_covariance.accel.angular.z,) = _get_struct_B6d().unpack(str[start:end])
      self.object.state.twist_reliable = bool(self.object.state.twist_reliable)
      start = end
      end += 288
      self.object.state.acceleration_covariance.covariance = _get_struct_36d().unpack(str[start:end])
      start = end
      end += 1
      (self.object.state.acceleration_reliable,) = _get_struct_B().unpack(str[start:end])
      self.object.state.acceleration_reliable = bool(self.object.state.acceleration_reliable)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.object.state.predicted_paths = []
      for i in range(0, length):
        val1 = autoware_perception_msgs.msg.PredictedPath()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.path = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.PoseWithCovarianceStamped()
          _v7 = val2.header
          start = end
          end += 4
          (_v7.seq,) = _get_struct_I().unpack(str[start:end])
          _v8 = _v7.stamp
          _x = _v8
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v7.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v7.frame_id = str[start:end]
          _v9 = val2.pose
          _v10 = _v9.pose
          _v11 = _v10.position
          _x = _v11
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v12 = _v10.orientation
          _x = _v12
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          start = end
          end += 288
          _v9.covariance = _get_struct_36d().unpack(str[start:end])
          val1.path.append(val2)
        start = end
        end += 8
        (val1.confidence,) = _get_struct_d().unpack(str[start:end])
        self.object.state.predicted_paths.append(val1)
      _x = self
      start = end
      end += 25
      (_x.object.shape.type, _x.object.shape.dimensions.x, _x.object.shape.dimensions.y, _x.object.shape.dimensions.z,) = _get_struct_B3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.object.shape.footprint.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.object.shape.footprint.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.feature.cluster.header.seq, _x.feature.cluster.header.stamp.secs, _x.feature.cluster.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feature.cluster.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.feature.cluster.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.feature.cluster.height, _x.feature.cluster.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feature.cluster.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.feature.cluster.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.feature.cluster.is_bigendian, _x.feature.cluster.point_step, _x.feature.cluster.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.feature.cluster.is_bigendian = bool(self.feature.cluster.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.feature.cluster.data = str[start:end]
      _x = self
      start = end
      end += 18
      (_x.feature.cluster.is_dense, _x.feature.roi.x_offset, _x.feature.roi.y_offset, _x.feature.roi.height, _x.feature.roi.width, _x.feature.roi.do_rectify,) = _get_struct_B4IB().unpack(str[start:end])
      self.feature.cluster.is_dense = bool(self.feature.cluster.is_dense)
      self.feature.roi.do_rectify = bool(self.feature.roi.do_rectify)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.object.id.uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self
      buff.write(_get_struct_I8d().pack(_x.object.semantic.type, _x.object.semantic.confidence, _x.object.state.pose_covariance.pose.position.x, _x.object.state.pose_covariance.pose.position.y, _x.object.state.pose_covariance.pose.position.z, _x.object.state.pose_covariance.pose.orientation.x, _x.object.state.pose_covariance.pose.orientation.y, _x.object.state.pose_covariance.pose.orientation.z, _x.object.state.pose_covariance.pose.orientation.w))
      buff.write(self.object.state.pose_covariance.covariance.tostring())
      _x = self
      buff.write(_get_struct_B6d().pack(_x.object.state.orientation_reliable, _x.object.state.twist_covariance.twist.linear.x, _x.object.state.twist_covariance.twist.linear.y, _x.object.state.twist_covariance.twist.linear.z, _x.object.state.twist_covariance.twist.angular.x, _x.object.state.twist_covariance.twist.angular.y, _x.object.state.twist_covariance.twist.angular.z))
      buff.write(self.object.state.twist_covariance.covariance.tostring())
      _x = self
      buff.write(_get_struct_B6d().pack(_x.object.state.twist_reliable, _x.object.state.acceleration_covariance.accel.linear.x, _x.object.state.acceleration_covariance.accel.linear.y, _x.object.state.acceleration_covariance.accel.linear.z, _x.object.state.acceleration_covariance.accel.angular.x, _x.object.state.acceleration_covariance.accel.angular.y, _x.object.state.acceleration_covariance.accel.angular.z))
      buff.write(self.object.state.acceleration_covariance.covariance.tostring())
      _x = self.object.state.acceleration_reliable
      buff.write(_get_struct_B().pack(_x))
      length = len(self.object.state.predicted_paths)
      buff.write(_struct_I.pack(length))
      for val1 in self.object.state.predicted_paths:
        length = len(val1.path)
        buff.write(_struct_I.pack(length))
        for val2 in val1.path:
          _v13 = val2.header
          _x = _v13.seq
          buff.write(_get_struct_I().pack(_x))
          _v14 = _v13.stamp
          _x = _v14
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v13.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _v15 = val2.pose
          _v16 = _v15.pose
          _v17 = _v16.position
          _x = _v17
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v18 = _v16.orientation
          _x = _v18
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          buff.write(_v15.covariance.tostring())
        _x = val1.confidence
        buff.write(_get_struct_d().pack(_x))
      _x = self
      buff.write(_get_struct_B3d().pack(_x.object.shape.type, _x.object.shape.dimensions.x, _x.object.shape.dimensions.y, _x.object.shape.dimensions.z))
      length = len(self.object.shape.footprint.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.object.shape.footprint.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3I().pack(_x.feature.cluster.header.seq, _x.feature.cluster.header.stamp.secs, _x.feature.cluster.header.stamp.nsecs))
      _x = self.feature.cluster.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.feature.cluster.height, _x.feature.cluster.width))
      length = len(self.feature.cluster.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.feature.cluster.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.feature.cluster.is_bigendian, _x.feature.cluster.point_step, _x.feature.cluster.row_step))
      _x = self.feature.cluster.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_B4IB().pack(_x.feature.cluster.is_dense, _x.feature.roi.x_offset, _x.feature.roi.y_offset, _x.feature.roi.height, _x.feature.roi.width, _x.feature.roi.do_rectify))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.object is None:
        self.object = autoware_perception_msgs.msg.DynamicObject()
      if self.feature is None:
        self.feature = autoware_perception_msgs.msg.Feature()
      end = 0
      start = end
      end += 16
      self.object.id.uuid = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.object.semantic.type, _x.object.semantic.confidence, _x.object.state.pose_covariance.pose.position.x, _x.object.state.pose_covariance.pose.position.y, _x.object.state.pose_covariance.pose.position.z, _x.object.state.pose_covariance.pose.orientation.x, _x.object.state.pose_covariance.pose.orientation.y, _x.object.state.pose_covariance.pose.orientation.z, _x.object.state.pose_covariance.pose.orientation.w,) = _get_struct_I8d().unpack(str[start:end])
      start = end
      end += 288
      self.object.state.pose_covariance.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 49
      (_x.object.state.orientation_reliable, _x.object.state.twist_covariance.twist.linear.x, _x.object.state.twist_covariance.twist.linear.y, _x.object.state.twist_covariance.twist.linear.z, _x.object.state.twist_covariance.twist.angular.x, _x.object.state.twist_covariance.twist.angular.y, _x.object.state.twist_covariance.twist.angular.z,) = _get_struct_B6d().unpack(str[start:end])
      self.object.state.orientation_reliable = bool(self.object.state.orientation_reliable)
      start = end
      end += 288
      self.object.state.twist_covariance.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 49
      (_x.object.state.twist_reliable, _x.object.state.acceleration_covariance.accel.linear.x, _x.object.state.acceleration_covariance.accel.linear.y, _x.object.state.acceleration_covariance.accel.linear.z, _x.object.state.acceleration_covariance.accel.angular.x, _x.object.state.acceleration_covariance.accel.angular.y, _x.object.state.acceleration_covariance.accel.angular.z,) = _get_struct_B6d().unpack(str[start:end])
      self.object.state.twist_reliable = bool(self.object.state.twist_reliable)
      start = end
      end += 288
      self.object.state.acceleration_covariance.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      start = end
      end += 1
      (self.object.state.acceleration_reliable,) = _get_struct_B().unpack(str[start:end])
      self.object.state.acceleration_reliable = bool(self.object.state.acceleration_reliable)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.object.state.predicted_paths = []
      for i in range(0, length):
        val1 = autoware_perception_msgs.msg.PredictedPath()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.path = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.PoseWithCovarianceStamped()
          _v19 = val2.header
          start = end
          end += 4
          (_v19.seq,) = _get_struct_I().unpack(str[start:end])
          _v20 = _v19.stamp
          _x = _v20
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v19.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v19.frame_id = str[start:end]
          _v21 = val2.pose
          _v22 = _v21.pose
          _v23 = _v22.position
          _x = _v23
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v24 = _v22.orientation
          _x = _v24
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          start = end
          end += 288
          _v21.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
          val1.path.append(val2)
        start = end
        end += 8
        (val1.confidence,) = _get_struct_d().unpack(str[start:end])
        self.object.state.predicted_paths.append(val1)
      _x = self
      start = end
      end += 25
      (_x.object.shape.type, _x.object.shape.dimensions.x, _x.object.shape.dimensions.y, _x.object.shape.dimensions.z,) = _get_struct_B3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.object.shape.footprint.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.object.shape.footprint.points.append(val1)
      _x = self
      start = end
      end += 12
      (_x.feature.cluster.header.seq, _x.feature.cluster.header.stamp.secs, _x.feature.cluster.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.feature.cluster.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.feature.cluster.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.feature.cluster.height, _x.feature.cluster.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feature.cluster.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.feature.cluster.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.feature.cluster.is_bigendian, _x.feature.cluster.point_step, _x.feature.cluster.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.feature.cluster.is_bigendian = bool(self.feature.cluster.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.feature.cluster.data = str[start:end]
      _x = self
      start = end
      end += 18
      (_x.feature.cluster.is_dense, _x.feature.roi.x_offset, _x.feature.roi.y_offset, _x.feature.roi.height, _x.feature.roi.width, _x.feature.roi.do_rectify,) = _get_struct_B4IB().unpack(str[start:end])
      self.feature.cluster.is_dense = bool(self.feature.cluster.is_dense)
      self.feature.roi.do_rectify = bool(self.feature.roi.do_rectify)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_16B = None
def _get_struct_16B():
    global _struct_16B
    if _struct_16B is None:
        _struct_16B = struct.Struct("<16B")
    return _struct_16B
_struct_16s = None
def _get_struct_16s():
    global _struct_16s
    if _struct_16s is None:
        _struct_16s = struct.Struct("<16s")
    return _struct_16s
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_B2I = None
def _get_struct_B2I():
    global _struct_B2I
    if _struct_B2I is None:
        _struct_B2I = struct.Struct("<B2I")
    return _struct_B2I
_struct_B3d = None
def _get_struct_B3d():
    global _struct_B3d
    if _struct_B3d is None:
        _struct_B3d = struct.Struct("<B3d")
    return _struct_B3d
_struct_B4IB = None
def _get_struct_B4IB():
    global _struct_B4IB
    if _struct_B4IB is None:
        _struct_B4IB = struct.Struct("<B4IB")
    return _struct_B4IB
_struct_B6d = None
def _get_struct_B6d():
    global _struct_B6d
    if _struct_B6d is None:
        _struct_B6d = struct.Struct("<B6d")
    return _struct_B6d
_struct_I8d = None
def _get_struct_I8d():
    global _struct_I8d
    if _struct_I8d is None:
        _struct_I8d = struct.Struct("<I8d")
    return _struct_I8d
_struct_IBI = None
def _get_struct_IBI():
    global _struct_IBI
    if _struct_IBI is None:
        _struct_IBI = struct.Struct("<IBI")
    return _struct_IBI
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
