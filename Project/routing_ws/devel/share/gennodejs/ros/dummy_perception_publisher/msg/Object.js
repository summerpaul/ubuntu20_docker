// Auto-generated. Do not edit!

// (in-package dummy_perception_publisher.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let InitialState = require('./InitialState.js');
let uuid_msgs = _finder('uuid_msgs');
let std_msgs = _finder('std_msgs');
let autoware_perception_msgs = _finder('autoware_perception_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.initial_state = null;
      this.semantic = null;
      this.shape = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('initial_state')) {
        this.initial_state = initObj.initial_state
      }
      else {
        this.initial_state = new InitialState();
      }
      if (initObj.hasOwnProperty('semantic')) {
        this.semantic = initObj.semantic
      }
      else {
        this.semantic = new autoware_perception_msgs.msg.Semantic();
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new autoware_perception_msgs.msg.Shape();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [initial_state]
    bufferOffset = InitialState.serialize(obj.initial_state, buffer, bufferOffset);
    // Serialize message field [semantic]
    bufferOffset = autoware_perception_msgs.msg.Semantic.serialize(obj.semantic, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = autoware_perception_msgs.msg.Shape.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [initial_state]
    data.initial_state = InitialState.deserialize(buffer, bufferOffset);
    // Deserialize message field [semantic]
    data.semantic = autoware_perception_msgs.msg.Semantic.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = autoware_perception_msgs.msg.Shape.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += autoware_perception_msgs.msg.Shape.getMessageSize(object.shape);
    return length + 712;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dummy_perception_publisher/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94b91837e276c90bb55c99d5cd13f705';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uuid_msgs/UniqueID id
    dummy_perception_publisher/InitialState initial_state
    autoware_perception_msgs/Semantic semantic
    autoware_perception_msgs/Shape shape
    
    uint8 ADD=0
    uint8 MODIFY=1
    uint8 DELETE=2
    uint8 DELETEALL=3
    int32 action
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
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: dummy_perception_publisher/InitialState
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
    ================================================================================
    MSG: autoware_perception_msgs/Semantic
    uint8 UNKNOWN=0
    uint8 CAR=1
    uint8 TRUCK=2
    uint8 BUS=3
    uint8 BICYCLE=4
    uint8 MOTORBIKE=5
    uint8 PEDESTRIAN=6
    uint8 ANIMAL=7
    uint32 type
    float64 confidence
    ================================================================================
    MSG: autoware_perception_msgs/Shape
    uint8 BOUNDING_BOX=0
    uint8 CYLINDER=1
    uint8 POLYGON=2
    
    uint8 type
    geometry_msgs/Vector3 dimensions
    geometry_msgs/Polygon footprint 
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.initial_state !== undefined) {
      resolved.initial_state = InitialState.Resolve(msg.initial_state)
    }
    else {
      resolved.initial_state = new InitialState()
    }

    if (msg.semantic !== undefined) {
      resolved.semantic = autoware_perception_msgs.msg.Semantic.Resolve(msg.semantic)
    }
    else {
      resolved.semantic = new autoware_perception_msgs.msg.Semantic()
    }

    if (msg.shape !== undefined) {
      resolved.shape = autoware_perception_msgs.msg.Shape.Resolve(msg.shape)
    }
    else {
      resolved.shape = new autoware_perception_msgs.msg.Shape()
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

// Constants for message
Object.Constants = {
  ADD: 0,
  MODIFY: 1,
  DELETE: 2,
  DELETEALL: 3,
}

module.exports = Object;
