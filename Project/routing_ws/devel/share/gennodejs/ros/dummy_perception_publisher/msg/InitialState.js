// Auto-generated. Do not edit!

// (in-package dummy_perception_publisher.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class InitialState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_covariance = null;
      this.twist_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_covariance')) {
        this.pose_covariance = initObj.pose_covariance
      }
      else {
        this.pose_covariance = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('twist_covariance')) {
        this.twist_covariance = initObj.twist_covariance
      }
      else {
        this.twist_covariance = new geometry_msgs.msg.TwistWithCovariance();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitialState
    // Serialize message field [pose_covariance]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose_covariance, buffer, bufferOffset);
    // Serialize message field [twist_covariance]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.twist_covariance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitialState
    let len;
    let data = new InitialState(null);
    // Deserialize message field [pose_covariance]
    data.pose_covariance = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_covariance]
    data.twist_covariance = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 680;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dummy_perception_publisher/InitialState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95005958cfeaf8d17bca5017f302d25c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseWithCovariance pose_covariance
    geometry_msgs/TwistWithCovariance twist_covariance
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    const resolved = new InitialState(null);
    if (msg.pose_covariance !== undefined) {
      resolved.pose_covariance = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose_covariance)
    }
    else {
      resolved.pose_covariance = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.twist_covariance !== undefined) {
      resolved.twist_covariance = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.twist_covariance)
    }
    else {
      resolved.twist_covariance = new geometry_msgs.msg.TwistWithCovariance()
    }

    return resolved;
    }
};

module.exports = InitialState;
