// Auto-generated. Do not edit!

// (in-package vrep_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class simRosGetObjectPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handle = null;
      this.relativeToObjectHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('handle')) {
        this.handle = initObj.handle
      }
      else {
        this.handle = 0;
      }
      if (initObj.hasOwnProperty('relativeToObjectHandle')) {
        this.relativeToObjectHandle = initObj.relativeToObjectHandle
      }
      else {
        this.relativeToObjectHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectPoseRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    // Serialize message field [relativeToObjectHandle]
    bufferOffset = _serializer.int32(obj.relativeToObjectHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectPoseRequest
    let len;
    let data = new simRosGetObjectPoseRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [relativeToObjectHandle]
    data.relativeToObjectHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f089c181599d2dcbd1172f3eff51abb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 handle
    int32 relativeToObjectHandle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectPoseRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    if (msg.relativeToObjectHandle !== undefined) {
      resolved.relativeToObjectHandle = msg.relativeToObjectHandle;
    }
    else {
      resolved.relativeToObjectHandle = 0
    }

    return resolved;
    }
};

class simRosGetObjectPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectPoseResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectPoseResponse
    let len;
    let data = new simRosGetObjectPoseResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'beb984372af50548a529c62446caa7d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    geometry_msgs/PoseStamped pose
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectPoseResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetObjectPoseRequest,
  Response: simRosGetObjectPoseResponse,
  md5sum() { return 'dcc153fe8e4754d793983e414eb1b664'; },
  datatype() { return 'vrep_common/simRosGetObjectPose'; }
};
