# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_control_msgs/ControlCommand.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ControlCommand(genpy.Message):
  _md5sum = "beac3f978f000d5cd26de68de9ebce17"
  _type = "autoware_control_msgs/ControlCommand"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 steering_angle
float64 steering_angle_velocity
float64 velocity
float64 acceleration"""
  __slots__ = ['steering_angle','steering_angle_velocity','velocity','acceleration']
  _slot_types = ['float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       steering_angle,steering_angle_velocity,velocity,acceleration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ControlCommand, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.steering_angle is None:
        self.steering_angle = 0.
      if self.steering_angle_velocity is None:
        self.steering_angle_velocity = 0.
      if self.velocity is None:
        self.velocity = 0.
      if self.acceleration is None:
        self.acceleration = 0.
    else:
      self.steering_angle = 0.
      self.steering_angle_velocity = 0.
      self.velocity = 0.
      self.acceleration = 0.

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
      buff.write(_get_struct_4d().pack(_x.steering_angle, _x.steering_angle_velocity, _x.velocity, _x.acceleration))
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
      end = 0
      _x = self
      start = end
      end += 32
      (_x.steering_angle, _x.steering_angle_velocity, _x.velocity, _x.acceleration,) = _get_struct_4d().unpack(str[start:end])
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
      buff.write(_get_struct_4d().pack(_x.steering_angle, _x.steering_angle_velocity, _x.velocity, _x.acceleration))
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
      end = 0
      _x = self
      start = end
      end += 32
      (_x.steering_angle, _x.steering_angle_velocity, _x.velocity, _x.acceleration,) = _get_struct_4d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d