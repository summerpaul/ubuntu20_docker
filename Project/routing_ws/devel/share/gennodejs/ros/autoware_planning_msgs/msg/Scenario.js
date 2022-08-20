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

class Scenario {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_scenario = null;
      this.activating_scenarios = null;
    }
    else {
      if (initObj.hasOwnProperty('current_scenario')) {
        this.current_scenario = initObj.current_scenario
      }
      else {
        this.current_scenario = '';
      }
      if (initObj.hasOwnProperty('activating_scenarios')) {
        this.activating_scenarios = initObj.activating_scenarios
      }
      else {
        this.activating_scenarios = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Scenario
    // Serialize message field [current_scenario]
    bufferOffset = _serializer.string(obj.current_scenario, buffer, bufferOffset);
    // Serialize message field [activating_scenarios]
    bufferOffset = _arraySerializer.string(obj.activating_scenarios, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Scenario
    let len;
    let data = new Scenario(null);
    // Deserialize message field [current_scenario]
    data.current_scenario = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [activating_scenarios]
    data.activating_scenarios = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_scenario);
    object.activating_scenarios.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_planning_msgs/Scenario';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e42802502551bee186fe00316732f56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Empty=Empty
    string LaneDriving=LaneDriving
    string Parking=Parking
    
    string current_scenario
    string[] activating_scenarios
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Scenario(null);
    if (msg.current_scenario !== undefined) {
      resolved.current_scenario = msg.current_scenario;
    }
    else {
      resolved.current_scenario = ''
    }

    if (msg.activating_scenarios !== undefined) {
      resolved.activating_scenarios = msg.activating_scenarios;
    }
    else {
      resolved.activating_scenarios = []
    }

    return resolved;
    }
};

// Constants for message
Scenario.Constants = {
  EMPTY: 'Empty',
  LANEDRIVING: 'LaneDriving',
  PARKING: 'Parking',
}

module.exports = Scenario;
