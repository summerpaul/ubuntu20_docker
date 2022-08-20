// Auto-generated. Do not edit!

// (in-package autoware_system_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AutowareState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutowareState
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutowareState
    let len;
    let data = new AutowareState(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state);
    length += _getByteLength(object.msg);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_system_msgs/AutowareState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '856c545234d0e590924921f24d06b690';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Error=Error
    string InitializingVehicle=InitializingVehicle
    string WaitingForRoute=WaitingForRoute
    string Planning=Planning
    string WaitingForEngage=WaitingForEngage
    string Driving=Driving
    string ArrivedGoal=ArrivedGoal
    string FailedToArriveGoal=FailedToArriveGoal
    
    string state
    string msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutowareState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

// Constants for message
AutowareState.Constants = {
  ERROR: 'Error',
  INITIALIZINGVEHICLE: 'InitializingVehicle',
  WAITINGFORROUTE: 'WaitingForRoute',
  PLANNING: 'Planning',
  WAITINGFORENGAGE: 'WaitingForEngage',
  DRIVING: 'Driving',
  ARRIVEDGOAL: 'ArrivedGoal',
  FAILEDTOARRIVEGOAL: 'FailedToArriveGoal',
}

module.exports = AutowareState;
