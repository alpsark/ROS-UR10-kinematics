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


//-----------------------------------------------------------

class simRosGetFloatSignalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signalName = null;
    }
    else {
      if (initObj.hasOwnProperty('signalName')) {
        this.signalName = initObj.signalName
      }
      else {
        this.signalName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetFloatSignalRequest
    // Serialize message field [signalName]
    bufferOffset = _serializer.string(obj.signalName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetFloatSignalRequest
    let len;
    let data = new simRosGetFloatSignalRequest(null);
    // Deserialize message field [signalName]
    data.signalName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.signalName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetFloatSignalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00c43203ad474c6ce746089e83166bba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string signalName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetFloatSignalRequest(null);
    if (msg.signalName !== undefined) {
      resolved.signalName = msg.signalName;
    }
    else {
      resolved.signalName = ''
    }

    return resolved;
    }
};

class simRosGetFloatSignalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.signalValue = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('signalValue')) {
        this.signalValue = initObj.signalValue
      }
      else {
        this.signalValue = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetFloatSignalResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [signalValue]
    bufferOffset = _serializer.float32(obj.signalValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetFloatSignalResponse
    let len;
    let data = new simRosGetFloatSignalResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [signalValue]
    data.signalValue = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetFloatSignalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8f2b92b89d5cf88cbffea18b9ddcc7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 signalValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetFloatSignalResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.signalValue !== undefined) {
      resolved.signalValue = msg.signalValue;
    }
    else {
      resolved.signalValue = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetFloatSignalRequest,
  Response: simRosGetFloatSignalResponse,
  md5sum() { return '52ba64366a10126c502d44acd3f25e3a'; },
  datatype() { return 'vrep_common/simRosGetFloatSignal'; }
};
