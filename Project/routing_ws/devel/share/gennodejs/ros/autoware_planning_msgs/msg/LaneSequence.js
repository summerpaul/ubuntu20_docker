// Auto-generated. Do not edit!

// (in-package autoware_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneSequence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_ids')) {
        this.lane_ids = initObj.lane_ids
      }
      else {
        this.lane_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneSequence
    // Serialize message field [lane_ids]
    bufferOffset = _arraySerializer.int64(obj.lane_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSequence
    let len;
    let data = new LaneSequence(null);
    // Deserialize message field [lane_ids]
    data.lane_ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.lane_ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_planning_msgs/LaneSequence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ff2c02f553be6713a6038a7d7d22b99';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] lane_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneSequence(null);
    if (msg.lane_ids !== undefined) {
      resolved.lane_ids = msg.lane_ids;
    }
    else {
      resolved.lane_ids = []
    }

    return resolved;
    }
};

module.exports = LaneSequence;
