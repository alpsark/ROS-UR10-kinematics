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

class simRosGetDistanceHandleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distanceName = null;
    }
    else {
      if (initObj.hasOwnProperty('distanceName')) {
        this.distanceName = initObj.distanceName
      }
      else {
        this.distanceName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetDistanceHandleRequest
    // Serialize message field [distanceName]
    bufferOffset = _serializer.string(obj.distanceName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetDistanceHandleRequest
    let len;
    let data = new simRosGetDistanceHandleRequest(null);
    // Deserialize message field [distanceName]
    data.distanceName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.distanceName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetDistanceHandleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '218566481395d1ececa0c02cd69f99ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string distanceName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetDistanceHandleRequest(null);
    if (msg.distanceName !== undefined) {
      resolved.distanceName = msg.distanceName;
    }
    else {
      resolved.distanceName = ''
    }

    return resolved;
    }
};

class simRosGetDistanceHandleResponse {
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
    // Serializes a message object of type simRosGetDistanceHandleResponse
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetDistanceHandleResponse
    let len;
    let data = new simRosGetDistanceHandleResponse(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetDistanceHandleResponse';
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
    const resolved = new simRosGetDistanceHandleResponse(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetDistanceHandleRequest,
  Response: simRosGetDistanceHandleResponse,
  md5sum() { return '78e0efe06bbf65717f2c9d16dc1a69dc'; },
  datatype() { return 'vrep_common/simRosGetDistanceHandle'; }
};
