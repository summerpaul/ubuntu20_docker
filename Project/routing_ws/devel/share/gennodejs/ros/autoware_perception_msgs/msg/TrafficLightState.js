// Auto-generated. Do not edit!

// (in-package autoware_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LampState = require('./LampState.js');

//-----------------------------------------------------------

class TrafficLightState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lamp_states = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('lamp_states')) {
        this.lamp_states = initObj.lamp_states
      }
      else {
        this.lamp_states = [];
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightState
    // Serialize message field [lamp_states]
    // Serialize the length for message field [lamp_states]
    bufferOffset = _serializer.uint32(obj.lamp_states.length, buffer, bufferOffset);
    obj.lamp_states.forEach((val) => {
      bufferOffset = LampState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightState
    let len;
    let data = new TrafficLightState(null);
    // Deserialize message field [lamp_states]
    // Deserialize array length for message field [lamp_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lamp_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lamp_states[i] = LampState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.lamp_states.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_perception_msgs/TrafficLightState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8e13d98ab9da18d92f4dd32e357fa36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    float32 confidence
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightState(null);
    if (msg.lamp_states !== undefined) {
      resolved.lamp_states = new Array(msg.lamp_states.length);
      for (let i = 0; i < resolved.lamp_states.length; ++i) {
        resolved.lamp_states[i] = LampState.Resolve(msg.lamp_states[i]);
      }
    }
    else {
      resolved.lamp_states = []
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = TrafficLightState;
