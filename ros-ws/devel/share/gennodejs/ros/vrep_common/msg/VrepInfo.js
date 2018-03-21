// Auto-generated. Do not edit!

// (in-package vrep_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VrepInfo {
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
        this.simulatorState = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('simulationTime')) {
        this.simulationTime = initObj.simulationTime
      }
      else {
        this.simulationTime = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('timeStep')) {
        this.timeStep = initObj.timeStep
      }
      else {
        this.timeStep = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VrepInfo
    // Serialize message field [headerInfo]
    bufferOffset = std_msgs.msg.Header.serialize(obj.headerInfo, buffer, bufferOffset);
    // Serialize message field [simulatorState]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.simulatorState, buffer, bufferOffset);
    // Serialize message field [simulationTime]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.simulationTime, buffer, bufferOffset);
    // Serialize message field [timeStep]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.timeStep, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VrepInfo
    let len;
    let data = new VrepInfo(null);
    // Deserialize message field [headerInfo]
    data.headerInfo = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [simulatorState]
    data.simulatorState = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [simulationTime]
    data.simulationTime = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeStep]
    data.timeStep = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.headerInfo);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrep_common/VrepInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66334ab2212d3c89226a89b7a37b2f95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header headerInfo
    std_msgs/Int32 simulatorState
    std_msgs/Float32 simulationTime
    std_msgs/Float32 timeStep
    
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
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VrepInfo(null);
    if (msg.headerInfo !== undefined) {
      resolved.headerInfo = std_msgs.msg.Header.Resolve(msg.headerInfo)
    }
    else {
      resolved.headerInfo = new std_msgs.msg.Header()
    }

    if (msg.simulatorState !== undefined) {
      resolved.simulatorState = std_msgs.msg.Int32.Resolve(msg.simulatorState)
    }
    else {
      resolved.simulatorState = new std_msgs.msg.Int32()
    }

    if (msg.simulationTime !== undefined) {
      resolved.simulationTime = std_msgs.msg.Float32.Resolve(msg.simulationTime)
    }
    else {
      resolved.simulationTime = new std_msgs.msg.Float32()
    }

    if (msg.timeStep !== undefined) {
      resolved.timeStep = std_msgs.msg.Float32.Resolve(msg.timeStep)
    }
    else {
      resolved.timeStep = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = VrepInfo;
