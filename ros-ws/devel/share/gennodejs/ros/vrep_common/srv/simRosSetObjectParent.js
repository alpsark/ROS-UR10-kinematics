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

class simRosSetObjectParentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handle = null;
      this.parentHandle = null;
      this.keepInPlace = null;
    }
    else {
      if (initObj.hasOwnProperty('handle')) {
        this.handle = initObj.handle
      }
      else {
        this.handle = 0;
      }
      if (initObj.hasOwnProperty('parentHandle')) {
        this.parentHandle = initObj.parentHandle
      }
      else {
        this.parentHandle = 0;
      }
      if (initObj.hasOwnProperty('keepInPlace')) {
        this.keepInPlace = initObj.keepInPlace
      }
      else {
        this.keepInPlace = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetObjectParentRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    // Serialize message field [parentHandle]
    bufferOffset = _serializer.int32(obj.parentHandle, buffer, bufferOffset);
    // Serialize message field [keepInPlace]
    bufferOffset = _serializer.uint8(obj.keepInPlace, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetObjectParentRequest
    let len;
    let data = new simRosSetObjectParentRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parentHandle]
    data.parentHandle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [keepInPlace]
    data.keepInPlace = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetObjectParentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '057df40a9de4d47ccec6ccbbf3e67baa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 handle
    int32 parentHandle
    uint8 keepInPlace
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetObjectParentRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    if (msg.parentHandle !== undefined) {
      resolved.parentHandle = msg.parentHandle;
    }
    else {
      resolved.parentHandle = 0
    }

    if (msg.keepInPlace !== undefined) {
      resolved.keepInPlace = msg.keepInPlace;
    }
    else {
      resolved.keepInPlace = 0
    }

    return resolved;
    }
};

class simRosSetObjectParentResponse {
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
    // Serializes a message object of type simRosSetObjectParentResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetObjectParentResponse
    let len;
    let data = new simRosSetObjectParentResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetObjectParentResponse';
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
    const resolved = new simRosSetObjectParentResponse(null);
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
  Request: simRosSetObjectParentRequest,
  Response: simRosSetObjectParentResponse,
  md5sum() { return '3fe38263068d68ac8ee5d5462c95bf28'; },
  datatype() { return 'vrep_common/simRosSetObjectParent'; }
};
