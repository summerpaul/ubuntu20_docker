// Auto-generated. Do not edit!

// (in-package autoware_vehicle_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RawControlCommand = require('./RawControlCommand.js');
let Shift = require('./Shift.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RawVehicleCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.control = null;
      this.shift = null;
      this.emergency = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('control')) {
        this.control = initObj.control
      }
      else {
        this.control = new RawControlCommand();
      }
      if (initObj.hasOwnProperty('shift')) {
        this.shift = initObj.shift
      }
      else {
        this.shift = new Shift();
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawVehicleCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [control]
    bufferOffset = RawControlCommand.serialize(obj.control, buffer, bufferOffset);
    // Serialize message field [shift]
    bufferOffset = Shift.serialize(obj.shift, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.int32(obj.emergency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawVehicleCommand
    let len;
    let data = new RawVehicleCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [control]
    data.control = RawControlCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [shift]
    data.shift = Shift.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_vehicle_msgs/RawVehicleCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2dfe6af16f948ae41186c0fd4b4d9275';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    autoware_vehicle_msgs/RawControlCommand control
    autoware_vehicle_msgs/Shift shift
    int32 emergency
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
    MSG: autoware_vehicle_msgs/RawControlCommand
    float64 steering_angle
    float64 steering_angle_velocity
    float64 throttle
    float64 brake
    ================================================================================
    MSG: autoware_vehicle_msgs/Shift
    uint8 NONE=0
    uint8 PARKING=1
    uint8 REVERSE=2
    uint8 NEUTRAL=3
    uint8 DRIVE=4
    uint8 LOW=5
    
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RawVehicleCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.control !== undefined) {
      resolved.control = RawControlCommand.Resolve(msg.control)
    }
    else {
      resolved.control = new RawControlCommand()
    }

    if (msg.shift !== undefined) {
      resolved.shift = Shift.Resolve(msg.shift)
    }
    else {
      resolved.shift = new Shift()
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = 0
    }

    return resolved;
    }
};

module.exports = RawVehicleCommand;
