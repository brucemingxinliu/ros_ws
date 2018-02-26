# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from object_finder/objectFinderGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class objectFinderGoal(genpy.Message):
  _md5sum = "8657c16ee27b175765f0d86cc8f66fbd"
  _type = "object_finder/objectFinderGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#objectFinder.action
#goal:
#get object ID codes from <object_manipulation_properties/object_ID_codes.h>

#goal fields to fill in:
int32 object_id

#boolean to declare if object is on a horizontal surface of known height:
bool known_surface_ht

#if surface ht is known, fill it in
float32 surface_ht

"""
  __slots__ = ['object_id','known_surface_ht','surface_ht']
  _slot_types = ['int32','bool','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       object_id,known_surface_ht,surface_ht

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(objectFinderGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.object_id is None:
        self.object_id = 0
      if self.known_surface_ht is None:
        self.known_surface_ht = False
      if self.surface_ht is None:
        self.surface_ht = 0.
    else:
      self.object_id = 0
      self.known_surface_ht = False
      self.surface_ht = 0.

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
      buff.write(_struct_iBf.pack(_x.object_id, _x.known_surface_ht, _x.surface_ht))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.object_id, _x.known_surface_ht, _x.surface_ht,) = _struct_iBf.unpack(str[start:end])
      self.known_surface_ht = bool(self.known_surface_ht)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_iBf.pack(_x.object_id, _x.known_surface_ht, _x.surface_ht))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.object_id, _x.known_surface_ht, _x.surface_ht,) = _struct_iBf.unpack(str[start:end])
      self.known_surface_ht = bool(self.known_surface_ht)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_iBf = struct.Struct("<iBf")