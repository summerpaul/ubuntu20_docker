// Auto-generated. Do not edit!

// (in-package autoware_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficLightRoi = require('./TrafficLightRoi.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrafficLightRoiArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rois = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rois')) {
        this.rois = initObj.rois
      }
      else {
        this.rois = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightRoiArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rois]
    // Serialize the length for message field [rois]
    bufferOffset = _serializer.uint32(obj.rois.length, buffer, bufferOffset);
    obj.rois.forEach((val) => {
      bufferOffset = TrafficLightRoi.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightRoiArray
    let len;
    let data = new TrafficLightRoiArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rois]
    // Deserialize array length for message field [rois]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rois = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rois[i] = TrafficLightRoi.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 21 * object.rois.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_perception_msgs/TrafficLightRoiArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcca094be32c25baf7286433b647e484';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    autoware_perception_msgs/TrafficLightRoi[] rois
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
    MSG: autoware_perception_msgs/TrafficLightRoi
    sensor_msgs/RegionOfInterest roi
    int32 id
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightRoiArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rois !== undefined) {
      resolved.rois = new Array(msg.rois.length);
      for (let i = 0; i < resolved.rois.length; ++i) {
        resolved.rois[i] = TrafficLightRoi.Resolve(msg.rois[i]);
      }
    }
    else {
      resolved.rois = []
    }

    return resolved;
    }
};

module.exports = TrafficLightRoiArray;
