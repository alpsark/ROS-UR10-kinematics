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

class simRosReadCollisionRequest {
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
    // Serializes a message object of type simRosReadCollisionRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosReadCollisionRequest
    let len;
    let data = new simRosReadCollisionRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosReadCollisionRequest';
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
    const resolved = new simRosReadCollisionRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    return resolved;
    }
};

class simRosReadCollisionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collisionState = null;
    }
    else {
      if (initObj.hasOwnProperty('collisionState')) {
        this.collisionState = initObj.collisionState
      }
      else {
        this.collisionState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosReadCollisionResponse
    // Serialize message field [collisionState]
    bufferOffset = _serializer.int32(obj.collisionState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosReadCollisionResponse
    let len;
    let data = new simRosReadCollisionResponse(null);
    // Deserialize message field [collisionState]
    data.collisionState = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosReadCollisionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2907c10b125ac1a987b8b14c578e5f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 collisionState
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosReadCollisionResponse(null);
    if (msg.collisionState !== undefined) {
      resolved.collisionState = msg.collisionState;
    }
    else {
      resolved.collisionState = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosReadCollisionRequest,
  Response: simRosReadCollisionResponse,
  md5sum() { return '37515f25a62d19573a6222165e612868'; },
  datatype() { return 'vrep_common/simRosReadCollision'; }
};
