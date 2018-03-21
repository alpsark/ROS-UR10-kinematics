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

class simRosGetModelPropertyRequest {
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
    // Serializes a message object of type simRosGetModelPropertyRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetModelPropertyRequest
    let len;
    let data = new simRosGetModelPropertyRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetModelPropertyRequest';
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
    const resolved = new simRosGetModelPropertyRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    return resolved;
    }
};

class simRosGetModelPropertyResponse {
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
    // Serializes a message object of type simRosGetModelPropertyResponse
    // Serialize message field [propertyValue]
    bufferOffset = _serializer.int32(obj.propertyValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetModelPropertyResponse
    let len;
    let data = new simRosGetModelPropertyResponse(null);
    // Deserialize message field [propertyValue]
    data.propertyValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetModelPropertyResponse';
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
    const resolved = new simRosGetModelPropertyResponse(null);
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
  Request: simRosGetModelPropertyRequest,
  Response: simRosGetModelPropertyResponse,
  md5sum() { return 'a54fb13fa756ea26f936de88d4121319'; },
  datatype() { return 'vrep_common/simRosGetModelProperty'; }
};
