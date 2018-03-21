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

class simRosAuxiliaryConsoleShowRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.consoleHandle = null;
      this.showState = null;
    }
    else {
      if (initObj.hasOwnProperty('consoleHandle')) {
        this.consoleHandle = initObj.consoleHandle
      }
      else {
        this.consoleHandle = 0;
      }
      if (initObj.hasOwnProperty('showState')) {
        this.showState = initObj.showState
      }
      else {
        this.showState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosAuxiliaryConsoleShowRequest
    // Serialize message field [consoleHandle]
    bufferOffset = _serializer.int32(obj.consoleHandle, buffer, bufferOffset);
    // Serialize message field [showState]
    bufferOffset = _serializer.uint8(obj.showState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAuxiliaryConsoleShowRequest
    let len;
    let data = new simRosAuxiliaryConsoleShowRequest(null);
    // Deserialize message field [consoleHandle]
    data.consoleHandle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [showState]
    data.showState = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAuxiliaryConsoleShowRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33c6dd3e6b401d1a7bd21ef7d25dc9e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 consoleHandle
    uint8 showState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosAuxiliaryConsoleShowRequest(null);
    if (msg.consoleHandle !== undefined) {
      resolved.consoleHandle = msg.consoleHandle;
    }
    else {
      resolved.consoleHandle = 0
    }

    if (msg.showState !== undefined) {
      resolved.showState = msg.showState;
    }
    else {
      resolved.showState = 0
    }

    return resolved;
    }
};

class simRosAuxiliaryConsoleShowResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosAuxiliaryConsoleShowResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAuxiliaryConsoleShowResponse
    let len;
    let data = new simRosAuxiliaryConsoleShowResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAuxiliaryConsoleShowResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034a8e20d6a306665e3a5b340fab3f09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosAuxiliaryConsoleShowResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosAuxiliaryConsoleShowRequest,
  Response: simRosAuxiliaryConsoleShowResponse,
  md5sum() { return '0441070f5e93cc5cd766aa59d6093443'; },
  datatype() { return 'vrep_common/simRosAuxiliaryConsoleShow'; }
};
