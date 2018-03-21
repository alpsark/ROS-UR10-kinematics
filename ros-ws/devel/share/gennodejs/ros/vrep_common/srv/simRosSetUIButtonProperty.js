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

class simRosSetUIButtonPropertyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uiHandle = null;
      this.buttonID = null;
      this.propertyValue = null;
    }
    else {
      if (initObj.hasOwnProperty('uiHandle')) {
        this.uiHandle = initObj.uiHandle
      }
      else {
        this.uiHandle = 0;
      }
      if (initObj.hasOwnProperty('buttonID')) {
        this.buttonID = initObj.buttonID
      }
      else {
        this.buttonID = 0;
      }
      if (initObj.hasOwnProperty('propertyValue')) {
        this.propertyValue = initObj.propertyValue
      }
      else {
        this.propertyValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetUIButtonPropertyRequest
    // Serialize message field [uiHandle]
    bufferOffset = _serializer.int32(obj.uiHandle, buffer, bufferOffset);
    // Serialize message field [buttonID]
    bufferOffset = _serializer.int32(obj.buttonID, buffer, bufferOffset);
    // Serialize message field [propertyValue]
    bufferOffset = _serializer.int32(obj.propertyValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetUIButtonPropertyRequest
    let len;
    let data = new simRosSetUIButtonPropertyRequest(null);
    // Deserialize message field [uiHandle]
    data.uiHandle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [buttonID]
    data.buttonID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [propertyValue]
    data.propertyValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetUIButtonPropertyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd54461d9cf9c63ea0374c072626f329';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 uiHandle
    int32 buttonID
    int32 propertyValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetUIButtonPropertyRequest(null);
    if (msg.uiHandle !== undefined) {
      resolved.uiHandle = msg.uiHandle;
    }
    else {
      resolved.uiHandle = 0
    }

    if (msg.buttonID !== undefined) {
      resolved.buttonID = msg.buttonID;
    }
    else {
      resolved.buttonID = 0
    }

    if (msg.propertyValue !== undefined) {
      resolved.propertyValue = msg.propertyValue;
    }
    else {
      resolved.propertyValue = 0
    }

    return resolved;
    }
};

class simRosSetUIButtonPropertyResponse {
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
    // Serializes a message object of type simRosSetUIButtonPropertyResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetUIButtonPropertyResponse
    let len;
    let data = new simRosSetUIButtonPropertyResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetUIButtonPropertyResponse';
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
    const resolved = new simRosSetUIButtonPropertyResponse(null);
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
  Request: simRosSetUIButtonPropertyRequest,
  Response: simRosSetUIButtonPropertyResponse,
  md5sum() { return '312d7f2f54e5998963314dbff36626e3'; },
  datatype() { return 'vrep_common/simRosSetUIButtonProperty'; }
};
