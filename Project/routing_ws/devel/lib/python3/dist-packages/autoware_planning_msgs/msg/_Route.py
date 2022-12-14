# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_planning_msgs/Route.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import autoware_planning_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class Route(genpy.Message):
  _md5sum = "a97cc0d08212f1aeb6ccf49a5a9f422b"
  _type = "autoware_planning_msgs/Route"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
geometry_msgs/Pose goal_pose
autoware_planning_msgs/RouteSection[] route_sections
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
MSG: autoware_planning_msgs/RouteSection
int64[] lane_ids
int64 preferred_lane_id
int64[] continued_lane_ids
"""
  __slots__ = ['header','goal_pose','route_sections']
  _slot_types = ['std_msgs/Header','geometry_msgs/Pose','autoware_planning_msgs/RouteSection[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,goal_pose,route_sections

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Route, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_pose is None:
        self.goal_pose = geometry_msgs.msg.Pose()
      if self.route_sections is None:
        self.route_sections = []
    else:
      self.header = std_msgs.msg.Header()
      self.goal_pose = geometry_msgs.msg.Pose()
      self.route_sections = []

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.goal_pose.position.x, _x.goal_pose.position.y, _x.goal_pose.position.z, _x.goal_pose.orientation.x, _x.goal_pose.orientation.y, _x.goal_pose.orientation.z, _x.goal_pose.orientation.w))
      length = len(self.route_sections)
      buff.write(_struct_I.pack(length))
      for val1 in self.route_sections:
        length = len(val1.lane_ids)
        buff.write(_struct_I.pack(length))
        pattern = '<%sq'%length
        buff.write(struct.Struct(pattern).pack(*val1.lane_ids))
        _x = val1.preferred_lane_id
        buff.write(_get_struct_q().pack(_x))
        length = len(val1.continued_lane_ids)
        buff.write(_struct_I.pack(length))
        pattern = '<%sq'%length
        buff.write(struct.Struct(pattern).pack(*val1.continued_lane_ids))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_pose is None:
        self.goal_pose = geometry_msgs.msg.Pose()
      if self.route_sections is None:
        self.route_sections = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.goal_pose.position.x, _x.goal_pose.position.y, _x.goal_pose.position.z, _x.goal_pose.orientation.x, _x.goal_pose.orientation.y, _x.goal_pose.orientation.z, _x.goal_pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.route_sections = []
      for i in range(0, length):
        val1 = autoware_planning_msgs.msg.RouteSection()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sq'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.lane_ids = s.unpack(str[start:end])
        start = end
        end += 8
        (val1.preferred_lane_id,) = _get_struct_q().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sq'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.continued_lane_ids = s.unpack(str[start:end])
        self.route_sections.append(val1)
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.goal_pose.position.x, _x.goal_pose.position.y, _x.goal_pose.position.z, _x.goal_pose.orientation.x, _x.goal_pose.orientation.y, _x.goal_pose.orientation.z, _x.goal_pose.orientation.w))
      length = len(self.route_sections)
      buff.write(_struct_I.pack(length))
      for val1 in self.route_sections:
        length = len(val1.lane_ids)
        buff.write(_struct_I.pack(length))
        pattern = '<%sq'%length
        buff.write(val1.lane_ids.tostring())
        _x = val1.preferred_lane_id
        buff.write(_get_struct_q().pack(_x))
        length = len(val1.continued_lane_ids)
        buff.write(_struct_I.pack(length))
        pattern = '<%sq'%length
        buff.write(val1.continued_lane_ids.tostring())
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_pose is None:
        self.goal_pose = geometry_msgs.msg.Pose()
      if self.route_sections is None:
        self.route_sections = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.goal_pose.position.x, _x.goal_pose.position.y, _x.goal_pose.position.z, _x.goal_pose.orientation.x, _x.goal_pose.orientation.y, _x.goal_pose.orientation.z, _x.goal_pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.route_sections = []
      for i in range(0, length):
        val1 = autoware_planning_msgs.msg.RouteSection()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sq'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.lane_ids = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=length)
        start = end
        end += 8
        (val1.preferred_lane_id,) = _get_struct_q().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sq'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.continued_lane_ids = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=length)
        self.route_sections.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_q = None
def _get_struct_q():
    global _struct_q
    if _struct_q is None:
        _struct_q = struct.Struct("<q")
    return _struct_q
