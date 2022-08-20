// Auto-generated. Do not edit!

// (in-package autoware_lanelet2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MapBin {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.format_version = null;
      this.map_version = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('format_version')) {
        this.format_version = initObj.format_version
      }
      else {
        this.format_version = '';
      }
      if (initObj.hasOwnProperty('map_version')) {
        this.map_version = initObj.map_version
      }
      else {
        this.map_version = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapBin
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [format_version]
    bufferOffset = _serializer.string(obj.format_version, buffer, bufferOffset);
    // Serialize message field [map_version]
    bufferOffset = _serializer.string(obj.map_version, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.int8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapBin
    let len;
    let data = new MapBin(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [format_version]
    data.format_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_version]
    data.map_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.format_version);
    length += _getByteLength(object.map_version);
    length += object.data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_lanelet2_msgs/MapBin';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d7c66d4c8e6e3f95a20131a6e37fe22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This contains the lanelet map in binary format.
    
    # Timestamp and frame_id of the map
    Header header
    
    # version of map format. keep this as empty string if unnecessary
    string format_version
    
    # version of map version. keep this as empty string if unnecessary
    string map_version
    
    # binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library
    int8[] data
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapBin(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.format_version !== undefined) {
      resolved.format_version = msg.format_version;
    }
    else {
      resolved.format_version = ''
    }

    if (msg.map_version !== undefined) {
      resolved.map_version = msg.map_version;
    }
    else {
      resolved.map_version = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = MapBin;
