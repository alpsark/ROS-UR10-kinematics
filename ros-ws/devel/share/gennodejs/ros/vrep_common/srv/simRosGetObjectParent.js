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

class simRosGetObjectParentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handle = null;
    }
    else {
      if (initObj.hasOwnProperty('handle')) {
        this.handle = initObj.handle
      }
      else {
        this.handle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectParentRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectParentRequest
    let len;
    let data = new simRosGetObjectParentRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectParentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92535b678299d2bdda959704e78c275e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 handle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectParentRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    return resolved;
    }
};

class simRosGetObjectParentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parentHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('parentHandle')) {
        this.parentHandle = initObj.parentHandle
      }
      else {
        this.parentHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectParentResponse
    // Serialize message field [parentHandle]
    bufferOffset = _serializer.int32(obj.parentHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectParentResponse
    let len;
    let data = new simRosGetObjectParentResponse(null);
    // Deserialize message field [parentHandle]
    data.parentHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectParentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3297095044ad4bf50ba768911050d931';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 parentHandle
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectParentResponse(null);
    if (msg.parentHandle !== undefined) {
      resolved.parentHandle = msg.parentHandle;
    }
    else {
      resolved.parentHandle = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetObjectParentRequest,
  Response: simRosGetObjectParentResponse,
  md5sum() { return '854ff03c655805cf1e8924bdf3e10531'; },
  datatype() { return 'vrep_common/simRosGetObjectParent'; }
};
