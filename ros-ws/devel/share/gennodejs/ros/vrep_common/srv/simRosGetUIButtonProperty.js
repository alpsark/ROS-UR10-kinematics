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

class simRosGetUIButtonPropertyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uiHandle = null;
      this.buttonID = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetUIButtonPropertyRequest
    // Serialize message field [uiHandle]
    bufferOffset = _serializer.int32(obj.uiHandle, buffer, bufferOffset);
    // Serialize message field [buttonID]
    bufferOffset = _serializer.int32(obj.buttonID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetUIButtonPropertyRequest
    let len;
    let data = new simRosGetUIButtonPropertyRequest(null);
    // Deserialize message field [uiHandle]
    data.uiHandle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [buttonID]
    data.buttonID = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetUIButtonPropertyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3237fb7c1b11a9bf71b5bb80da60a11a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 uiHandle
    int32 buttonID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetUIButtonPropertyRequest(null);
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

    return resolved;
    }
};

class simRosGetUIButtonPropertyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.propertyValue = null;
    }
    else {
      if (initObj.hasOwnProperty('propertyValue')) {
        this.propertyValue = initObj.propertyValue
      }
      else {
        this.propertyValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetUIButtonPropertyResponse
    // Serialize message field [propertyValue]
    bufferOffset = _serializer.int32(obj.propertyValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetUIButtonPropertyResponse
    let len;
    let data = new simRosGetUIButtonPropertyResponse(null);
    // Deserialize message field [propertyValue]
    data.propertyValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetUIButtonPropertyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3ff7a3737260dba8d61537cf18cc60a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 propertyValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetUIButtonPropertyResponse(null);
    if (msg.propertyValue !== undefined) {
      resolved.propertyValue = msg.propertyValue;
    }
    else {
      resolved.propertyValue = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetUIButtonPropertyRequest,
  Response: simRosGetUIButtonPropertyResponse,
  md5sum() { return '3c5af3530571fd8a5d18090795eb3f0c'; },
  datatype() { return 'vrep_common/simRosGetUIButtonProperty'; }
};
