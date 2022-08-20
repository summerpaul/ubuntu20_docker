// Auto-generated. Do not edit!

// (in-package autoware_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPoint = require('./PathPoint.js');

//-----------------------------------------------------------

class PathPointWithLaneId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
      this.lane_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new PathPoint();
      }
      if (initObj.hasOwnProperty('lane_ids')) {
        this.lane_ids = initObj.lane_ids
      }
      else {
        this.lane_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPointWithLaneId
    // Serialize message field [point]
    bufferOffset = PathPoint.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [lane_ids]
    bufferOffset = _arraySerializer.int64(obj.lane_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPointWithLaneId
    let len;
    let data = new PathPointWithLaneId(null);
    // Deserialize message field [point]
    data.point = PathPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_ids]
    data.lane_ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.lane_ids.length;
    return length + 109;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_planning_msgs/PathPointWithLaneId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76ff2694b5d561459dd969c578f7a19d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    autoware_planning_msgs/PathPoint point
    int64[] lane_ids
    ================================================================================
    MSG: autoware_planning_msgs/PathPoint
    uint8 REFFERENCE=0
    uint8 FIXED=1
    geometry_msgs/Pose pose
    geometry_msgs/Twist twist
    uint8 type
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathPointWithLaneId(null);
    if (msg.point !== undefined) {
      resolved.point = PathPoint.Resolve(msg.point)
    }
    else {
      resolved.point = new PathPoint()
    }

    if (msg.lane_ids !== undefined) {
      resolved.lane_ids = msg.lane_ids;
    }
    else {
      resolved.lane_ids = []
    }

    return resolved;
    }
};

module.exports = PathPointWithLaneId;
