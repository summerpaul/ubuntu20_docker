# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_perception_msgs/TrafficLightStateArray.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import autoware_perception_msgs.msg
import std_msgs.msg

class TrafficLightStateArray(genpy.Message):
  _md5sum = "222d53a44e10b32a97b360149fb3e9b1"
  _type = "autoware_perception_msgs/TrafficLightStateArray"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
autoware_perception_msgs/TrafficLightState[] states
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
MSG: autoware_perception_msgs/TrafficLightState
autoware_perception_msgs/LampState[] lamp_states
int32 id
================================================================================
MSG: autoware_perception_msgs/LampState
uint8 UNKNOWN=0
uint8 RED=1
uint8 GREEN=2
uint8 YELLOW=3
uint8 LEFT=4
uint8 RIGHT=5
uint8 UP=6
uint8 DOWN=7
uint32 type
float32 confidence"""
  __slots__ = ['header','states']
  _slot_types = ['std_msgs/Header','autoware_perception_msgs/TrafficLightState[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,states

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrafficLightStateArray, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.states is None:
        self.states = []
    else:
      self.header = std_msgs.msg.Header()
      self.states = []

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
      length = len(self.states)
      buff.write(_struct_I.pack(length))
      for val1 in self.states:
        length = len(val1.lamp_states)
        buff.write(_struct_I.pack(length))
        for val2 in val1.lamp_states:
          _x = val2
          buff.write(_get_struct_If().pack(_x.type, _x.confidence))
        _x = val1.id
        buff.write(_get_struct_i().pack(_x))
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
      if self.states is None:
        self.states = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.states = []
      for i in range(0, length):
        val1 = autoware_perception_msgs.msg.TrafficLightState()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.lamp_states = []
        for i in range(0, length):
          val2 = autoware_perception_msgs.msg.LampState()
          _x = val2
          start = end
          end += 8
          (_x.type, _x.confidence,) = _get_struct_If().unpack(str[start:end])
          val1.lamp_states.append(val2)
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        self.states.append(val1)
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
      length = len(self.states)
      buff.write(_struct_I.pack(length))
      for val1 in self.states:
        length = len(val1.lamp_states)
        buff.write(_struct_I.pack(length))
        for val2 in val1.lamp_states:
          _x = val2
          buff.write(_get_struct_If().pack(_x.type, _x.confidence))
        _x = val1.id
        buff.write(_get_struct_i().pack(_x))
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
      if self.states is None:
        self.states = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.states = []
      for i in range(0, length):
        val1 = autoware_perception_msgs.msg.TrafficLightState()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.lamp_states = []
        for i in range(0, length):
          val2 = autoware_perception_msgs.msg.LampState()
          _x = val2
          start = end
          end += 8
          (_x.type, _x.confidence,) = _get_struct_If().unpack(str[start:end])
          val1.lamp_states.append(val2)
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        self.states.append(val1)
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
_struct_If = None
def _get_struct_If():
    global _struct_If
    if _struct_If is None:
        _struct_If = struct.Struct("<If")
    return _struct_If
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
