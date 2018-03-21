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

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class simRosGetInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetInfoRequest
    let len;
    let data = new simRosGetInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetInfoRequest(null);
    return resolved;
    }
};

class simRosGetInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.headerInfo = null;
      this.simulatorState = null;
      this.simulationTime = null;
      this.timeStep = null;
    }
    else {
      if (initObj.hasOwnProperty('headerInfo')) {
        this.headerInfo = initObj.headerInfo
      }
      else {
        this.headerInfo = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('simulatorState')) {
        this.simulatorState = initObj.simulatorState
      }
      else {
        this.simulatorState = 0;
      }
      if (initObj.hasOwnProperty('simulationTime')) {
        this.simulationTime = initObj.simulationTime
      }
      else {
        this.simulationTime = 0.0;
      }
      if (initObj.hasOwnProperty('timeStep')) {
        this.timeStep = initObj.timeStep
      }
      else {
        this.timeStep = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetInfoResponse
    // Serialize message field [headerInfo]
    bufferOffset = std_msgs.msg.Header.serialize(obj.headerInfo, buffer, bufferOffset);
    // Serialize message field [simulatorState]
    bufferOffset = _serializer.int32(obj.simulatorState, buffer, bufferOffset);
    // Serialize message field [simulationTime]
    bufferOffset = _serializer.float32(obj.simulationTime, buffer, bufferOffset);
    // Serialize message field [timeStep]
    bufferOffset = _serializer.float32(obj.timeStep, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetInfoResponse
    let len;
    let data = new simRosGetInfoResponse(null);
    // Deserialize message field [headerInfo]
    data.headerInfo = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [simulatorState]
    data.simulatorState = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [simulationTime]
    data.simulationTime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeStep]
    data.timeStep = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.headerInfo);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ab24cc264f8f17af7e013147c57dbc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header headerInfo
    int32 simulatorState
    float32 simulationTime
    float32 timeStep
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetInfoResponse(null);
    if (msg.headerInfo !== undefined) {
      resolved.headerInfo = std_msgs.msg.Header.Resolve(msg.headerInfo)
    }
    else {
      resolved.headerInfo = new std_msgs.msg.Header()
    }

    if (msg.simulatorState !== undefined) {
      resolved.simulatorState = msg.simulatorState;
    }
    else {
      resolved.simulatorState = 0
    }

    if (msg.simulationTime !== undefined) {
      resolved.simulationTime = msg.simulationTime;
    }
    else {
      resolved.simulationTime = 0.0
    }

    if (msg.timeStep !== undefined) {
      resolved.timeStep = msg.timeStep;
    }
    else {
      resolved.timeStep = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetInfoRequest,
  Response: simRosGetInfoResponse,
  md5sum() { return '2ab24cc264f8f17af7e013147c57dbc0'; },
  datatype() { return 'vrep_common/simRosGetInfo'; }
};
