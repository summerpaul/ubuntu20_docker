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

class RouteSection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_ids = null;
      this.preferred_lane_id = null;
      this.continued_lane_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_ids')) {
        this.lane_ids = initObj.lane_ids
      }
      else {
        this.lane_ids = [];
      }
      if (initObj.hasOwnProperty('preferred_lane_id')) {
        this.preferred_lane_id = initObj.preferred_lane_id
      }
      else {
        this.preferred_lane_id = 0;
      }
      if (initObj.hasOwnProperty('continued_lane_ids')) {
        this.continued_lane_ids = initObj.continued_lane_ids
      }
      else {
        this.continued_lane_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteSection
    // Serialize message field [lane_ids]
    bufferOffset = _arraySerializer.int64(obj.lane_ids, buffer, bufferOffset, null);
    // Serialize message field [preferred_lane_id]
    bufferOffset = _serializer.int64(obj.preferred_lane_id, buffer, bufferOffset);
    // Serialize message field [continued_lane_ids]
    bufferOffset = _arraySerializer.int64(obj.continued_lane_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteSection
    let len;
    let data = new RouteSection(null);
    // Deserialize message field [lane_ids]
    data.lane_ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [preferred_lane_id]
    data.preferred_lane_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [continued_lane_ids]
    data.continued_lane_ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.lane_ids.length;
    length += 8 * object.continued_lane_ids.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_planning_msgs/RouteSection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2f5aadafa97ec1dda39866d5941c987';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] lane_ids
    int64 preferred_lane_id
    int64[] continued_lane_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteSection(null);
    if (msg.lane_ids !== undefined) {
      resolved.lane_ids = msg.lane_ids;
    }
    else {
      resolved.lane_ids = []
    }

    if (msg.preferred_lane_id !== undefined) {
      resolved.preferred_lane_id = msg.preferred_lane_id;
    }
    else {
      resolved.preferred_lane_id = 0
    }

    if (msg.continued_lane_ids !== undefined) {
      resolved.continued_lane_ids = msg.continued_lane_ids;
    }
    else {
      resolved.continued_lane_ids = []
    }

    return resolved;
    }
};

module.exports = RouteSection;
