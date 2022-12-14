# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_planning_msgs/PathPointWithLaneId.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import autoware_planning_msgs.msg
import geometry_msgs.msg

class PathPointWithLaneId(genpy.Message):
  _md5sum = "76ff2694b5d561459dd969c578f7a19d"
  _type = "autoware_planning_msgs/PathPointWithLaneId"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """autoware_planning_msgs/PathPoint point
int64[] lane_ids
================================================================================
MSG: autoware_planning_msgs/PathPoint
uint8 REFFERENCE=0
uint8 FIXED=1
geometry_msgs/Pose pose
geometry_msgs/Twist twist
uint8 type
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
float64 z"""
  __slots__ = ['point','lane_ids']
  _slot_types = ['autoware_planning_msgs/PathPoint','int64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       point,lane_ids

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PathPointWithLaneId, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.point is None:
        self.point = autoware_planning_msgs.msg.PathPoint()
      if self.lane_ids is None:
        self.lane_ids = []
    else:
      self.point = autoware_planning_msgs.msg.PathPoint()
      self.lane_ids = []

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
      _x = self
      buff.write(_get_struct_13dB().pack(_x.point.pose.position.x, _x.point.pose.position.y, _x.point.pose.position.z, _x.point.pose.orientation.x, _x.point.pose.orientation.y, _x.point.pose.orientation.z, _x.point.pose.orientation.w, _x.point.twist.linear.x, _x.point.twist.linear.y, _x.point.twist.linear.z, _x.point.twist.angular.x, _x.point.twist.angular.y, _x.point.twist.angular.z, _x.point.type))
      length = len(self.lane_ids)
      buff.write(_struct_I.pack(length))
      pattern = '<%sq'%length
      buff.write(struct.Struct(pattern).pack(*self.lane_ids))
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
      if self.point is None:
        self.point = autoware_planning_msgs.msg.PathPoint()
      end = 0
      _x = self
      start = end
      end += 105
      (_x.point.pose.position.x, _x.point.pose.position.y, _x.point.pose.position.z, _x.point.pose.orientation.x, _x.point.pose.orientation.y, _x.point.pose.orientation.z, _x.point.pose.orientation.w, _x.point.twist.linear.x, _x.point.twist.linear.y, _x.point.twist.linear.z, _x.point.twist.angular.x, _x.point.twist.angular.y, _x.point.twist.angular.z, _x.point.type,) = _get_struct_13dB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sq'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lane_ids = s.unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_13dB().pack(_x.point.pose.position.x, _x.point.pose.position.y, _x.point.pose.position.z, _x.point.pose.orientation.x, _x.point.pose.orientation.y, _x.point.pose.orientation.z, _x.point.pose.orientation.w, _x.point.twist.linear.x, _x.point.twist.linear.y, _x.point.twist.linear.z, _x.point.twist.angular.x, _x.point.twist.angular.y, _x.point.twist.angular.z, _x.point.type))
      length = len(self.lane_ids)
      buff.write(_struct_I.pack(length))
      pattern = '<%sq'%length
      buff.write(self.lane_ids.tostring())
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
      if self.point is None:
        self.point = autoware_planning_msgs.msg.PathPoint()
      end = 0
      _x = self
      start = end
      end += 105
      (_x.point.pose.position.x, _x.point.pose.position.y, _x.point.pose.position.z, _x.point.pose.orientation.x, _x.point.pose.orientation.y, _x.point.pose.orientation.z, _x.point.pose.orientation.w, _x.point.twist.linear.x, _x.point.twist.linear.y, _x.point.twist.linear.z, _x.point.twist.angular.x, _x.point.twist.angular.y, _x.point.twist.angular.z, _x.point.type,) = _get_struct_13dB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sq'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lane_ids = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_13dB = None
def _get_struct_13dB():
    global _struct_13dB
    if _struct_13dB is None:
        _struct_13dB = struct.Struct("<13dB")
    return _struct_13dB
