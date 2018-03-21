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

class simRosAuxiliaryConsoleCloseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.consoleHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('consoleHandle')) {
        this.consoleHandle = initObj.consoleHandle
      }
      else {
        this.consoleHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosAuxiliaryConsoleCloseRequest
    // Serialize message field [consoleHandle]
    bufferOffset = _serializer.int32(obj.consoleHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAuxiliaryConsoleCloseRequest
    let len;
    let data = new simRosAuxiliaryConsoleCloseRequest(null);
    // Deserialize message field [consoleHandle]
    data.consoleHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAuxiliaryConsoleCloseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0712f8f971970cd49793e7755140f018';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 consoleHandle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosAuxiliaryConsoleCloseRequest(null);
    if (msg.consoleHandle !== undefined) {
      resolved.consoleHandle = msg.consoleHandle;
    }
    else {
      resolved.consoleHandle = 0
    }

    return resolved;
    }
};

class simRosAuxiliaryConsoleCloseResponse {
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
    // Serializes a message object of type simRosAuxiliaryConsoleCloseResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAuxiliaryConsoleCloseResponse
    let len;
    let data = new simRosAuxiliaryConsoleCloseResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAuxiliaryConsoleCloseResponse';
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
    const resolved = new simRosAuxiliaryConsoleCloseResponse(null);
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
  Request: simRosAuxiliaryConsoleCloseRequest,
  Response: simRosAuxiliaryConsoleCloseResponse,
  md5sum() { return 'fd2ff093438c8e1568be839b91a17ca1'; },
  datatype() { return 'vrep_common/simRosAuxiliaryConsoleClose'; }
};
