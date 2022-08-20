// Auto-generated. Do not edit!

// (in-package autoware_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictedPath = require('./PredictedPath.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_covariance = null;
      this.orientation_reliable = null;
      this.twist_covariance = null;
      this.twist_reliable = null;
      this.acceleration_covariance = null;
      this.acceleration_reliable = null;
      this.predicted_paths = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_covariance')) {
        this.pose_covariance = initObj.pose_covariance
      }
      else {
        this.pose_covariance = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('orientation_reliable')) {
        this.orientation_reliable = initObj.orientation_reliable
      }
      else {
        this.orientation_reliable = false;
      }
      if (initObj.hasOwnProperty('twist_covariance')) {
        this.twist_covariance = initObj.twist_covariance
      }
      else {
        this.twist_covariance = new geometry_msgs.msg.TwistWithCovariance();
      }
      if (initObj.hasOwnProperty('twist_reliable')) {
        this.twist_reliable = initObj.twist_reliable
      }
      else {
        this.twist_reliable = false;
      }
      if (initObj.hasOwnProperty('acceleration_covariance')) {
        this.acceleration_covariance = initObj.acceleration_covariance
      }
      else {
        this.acceleration_covariance = new geometry_msgs.msg.AccelWithCovariance();
      }
      if (initObj.hasOwnProperty('acceleration_reliable')) {
        this.acceleration_reliable = initObj.acceleration_reliable
      }
      else {
        this.acceleration_reliable = false;
      }
      if (initObj.hasOwnProperty('predicted_paths')) {
        this.predicted_paths = initObj.predicted_paths
      }
      else {
        this.predicted_paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [pose_covariance]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose_covariance, buffer, bufferOffset);
    // Serialize message field [orientation_reliable]
    bufferOffset = _serializer.bool(obj.orientation_reliable, buffer, bufferOffset);
    // Serialize message field [twist_covariance]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.twist_covariance, buffer, bufferOffset);
    // Serialize message field [twist_reliable]
    bufferOffset = _serializer.bool(obj.twist_reliable, buffer, bufferOffset);
    // Serialize message field [acceleration_covariance]
    bufferOffset = geometry_msgs.msg.AccelWithCovariance.serialize(obj.acceleration_covariance, buffer, bufferOffset);
    // Serialize message field [acceleration_reliable]
    bufferOffset = _serializer.bool(obj.acceleration_reliable, buffer, bufferOffset);
    // Serialize message field [predicted_paths]
    // Serialize the length for message field [predicted_paths]
    bufferOffset = _serializer.uint32(obj.predicted_paths.length, buffer, bufferOffset);
    obj.predicted_paths.forEach((val) => {
      bufferOffset = PredictedPath.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [pose_covariance]
    data.pose_covariance = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_reliable]
    data.orientation_reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [twist_covariance]
    data.twist_covariance = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist_reliable]
    data.twist_reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [acceleration_covariance]
    data.acceleration_covariance = geometry_msgs.msg.AccelWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_reliable]
    data.acceleration_reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [predicted_paths]
    // Deserialize array length for message field [predicted_paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predicted_paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predicted_paths[i] = PredictedPath.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.predicted_paths.forEach((val) => {
      length += PredictedPath.getMessageSize(val);
    });
    return length + 1023;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_perception_msgs/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adee6436156f6f80a5204905e49c421d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseWithCovariance pose_covariance
    bool orientation_reliable
    geometry_msgs/TwistWithCovariance twist_covariance
    bool twist_reliable
    geometry_msgs/AccelWithCovariance acceleration_covariance
    bool acceleration_reliable
    PredictedPath[] predicted_paths
    
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
    ================================================================================
    MSG: geometry_msgs/AccelWithCovariance
    # This expresses acceleration in free space with uncertainty.
    
    Accel accel
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: autoware_perception_msgs/PredictedPath
    geometry_msgs/PoseWithCovarianceStamped[] path
    float64 confidence
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovarianceStamped
    # This expresses an estimated pose with a reference coordinate frame and timestamp
    
    Header header
    PoseWithCovariance pose
    
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
    const resolved = new State(null);
    if (msg.pose_covariance !== undefined) {
      resolved.pose_covariance = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose_covariance)
    }
    else {
      resolved.pose_covariance = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.orientation_reliable !== undefined) {
      resolved.orientation_reliable = msg.orientation_reliable;
    }
    else {
      resolved.orientation_reliable = false
    }

    if (msg.twist_covariance !== undefined) {
      resolved.twist_covariance = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.twist_covariance)
    }
    else {
      resolved.twist_covariance = new geometry_msgs.msg.TwistWithCovariance()
    }

    if (msg.twist_reliable !== undefined) {
      resolved.twist_reliable = msg.twist_reliable;
    }
    else {
      resolved.twist_reliable = false
    }

    if (msg.acceleration_covariance !== undefined) {
      resolved.acceleration_covariance = geometry_msgs.msg.AccelWithCovariance.Resolve(msg.acceleration_covariance)
    }
    else {
      resolved.acceleration_covariance = new geometry_msgs.msg.AccelWithCovariance()
    }

    if (msg.acceleration_reliable !== undefined) {
      resolved.acceleration_reliable = msg.acceleration_reliable;
    }
    else {
      resolved.acceleration_reliable = false
    }

    if (msg.predicted_paths !== undefined) {
      resolved.predicted_paths = new Array(msg.predicted_paths.length);
      for (let i = 0; i < resolved.predicted_paths.length; ++i) {
        resolved.predicted_paths[i] = PredictedPath.Resolve(msg.predicted_paths[i]);
      }
    }
    else {
      resolved.predicted_paths = []
    }

    return resolved;
    }
};

module.exports = State;
