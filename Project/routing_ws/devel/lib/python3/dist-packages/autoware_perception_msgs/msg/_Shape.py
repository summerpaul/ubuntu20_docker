# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_perception_msgs/Shape.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Shape(genpy.Message):
  _md5sum = "4d17401cc8cf3df1a70f0cb6ccdc143a"
  _type = "autoware_perception_msgs/Shape"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 BOUNDING_BOX=0
uint8 CYLINDER=1
uint8 POLYGON=2

uint8 type
geometry_msgs/Vector3 dimensions
geometry_msgs/Polygon footprint 

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
float32 z"""
  # Pseudo-constants
  BOUNDING_BOX = 0
  CYLINDER = 1
  POLYGON = 2

  __slots__ = ['type','dimensions','footprint']
  _slot_types = ['uint8','geometry_msgs/Vector3','geometry_msgs/Polygon']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       type,dimensions,footprint

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Shape, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.type is None:
        self.type = 0
      if self.dimensions is None:
        self.dimensions = geometry_msgs.msg.Vector3()
      if self.footprint is None:
        self.footprint = geometry_msgs.msg.Polygon()
    else:
      self.type = 0
      self.dimensions = geometry_msgs.msg.Vector3()
      self.footprint = geometry_msgs.msg.Polygon()

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
      buff.write(_get_struct_B3d().pack(_x.type, _x.dimensions.x, _x.dimensions.y, _x.dimensions.z))
      length = len(self.footprint.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.footprint.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
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
      if self.dimensions is None:
        self.dimensions = geometry_msgs.msg.Vector3()
      if self.footprint is None:
        self.footprint = geometry_msgs.msg.Polygon()
      end = 0
      _x = self
      start = end
      end += 25
      (_x.type, _x.dimensions.x, _x.dimensions.y, _x.dimensions.z,) = _get_struct_B3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.footprint.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.footprint.points.append(val1)
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
      buff.write(_get_struct_B3d().pack(_x.type, _x.dimensions.x, _x.dimensions.y, _x.dimensions.z))
      length = len(self.footprint.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.footprint.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
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
      if self.dimensions is None:
        self.dimensions = geometry_msgs.msg.Vector3()
      if self.footprint is None:
        self.footprint = geometry_msgs.msg.Polygon()
      end = 0
      _x = self
      start = end
      end += 25
      (_x.type, _x.dimensions.x, _x.dimensions.y, _x.dimensions.z,) = _get_struct_B3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.footprint.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.footprint.points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_B3d = None
def _get_struct_B3d():
    global _struct_B3d
    if _struct_B3d is None:
        _struct_B3d = struct.Struct("<B3d")
    return _struct_B3d
