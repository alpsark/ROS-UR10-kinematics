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

class simRosGetCollisionHandleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collisionName = null;
    }
    else {
      if (initObj.hasOwnProperty('collisionName')) {
        this.collisionName = initObj.collisionName
      }
      else {
        this.collisionName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetCollisionHandleRequest
    // Serialize message field [collisionName]
    bufferOffset = _serializer.string(obj.collisionName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetCollisionHandleRequest
    let len;
    let data = new simRosGetCollisionHandleRequest(null);
    // Deserialize message field [collisionName]
    data.collisionName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.collisionName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetCollisionHandleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf86508d9f797a77ca9b0cab99fc61ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string collisionName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetCollisionHandleRequest(null);
    if (msg.collisionName !== undefined) {
      resolved.collisionName = msg.collisionName;
    }
    else {
      resolved.collisionName = ''
    }

    return resolved;
    }
};

class simRosGetCollisionHandleResponse {
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
    // Serializes a message object of type simRosGetCollisionHandleResponse
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetCollisionHandleResponse
    let len;
    let data = new simRosGetCollisionHandleResponse(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetCollisionHandleResponse';
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
    const resolved = new simRosGetCollisionHandleResponse(null);
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
  Request: simRosGetCollisionHandleRequest,
  Response: simRosGetCollisionHandleResponse,
  md5sum() { return 'c921683644719c386866fcd63b2e041d'; },
  datatype() { return 'vrep_common/simRosGetCollisionHandle'; }
};
