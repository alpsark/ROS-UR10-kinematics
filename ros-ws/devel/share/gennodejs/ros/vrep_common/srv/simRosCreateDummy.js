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

class simRosCreateDummyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.size = null;
      this.colors = null;
    }
    else {
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('colors')) {
        this.colors = initObj.colors
      }
      else {
        this.colors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosCreateDummyRequest
    // Serialize message field [size]
    bufferOffset = _serializer.float32(obj.size, buffer, bufferOffset);
    // Serialize message field [colors]
    bufferOffset = _arraySerializer.int8(obj.colors, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosCreateDummyRequest
    let len;
    let data = new simRosCreateDummyRequest(null);
    // Deserialize message field [size]
    data.size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [colors]
    data.colors = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.colors.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosCreateDummyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b8d31e0e18b916960ddd10248b87e65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    float32 size
    int8[] colors
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosCreateDummyRequest(null);
    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.colors !== undefined) {
      resolved.colors = msg.colors;
    }
    else {
      resolved.colors = []
    }

    return resolved;
    }
};

class simRosCreateDummyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dummyHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('dummyHandle')) {
        this.dummyHandle = initObj.dummyHandle
      }
      else {
        this.dummyHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosCreateDummyResponse
    // Serialize message field [dummyHandle]
    bufferOffset = _serializer.int32(obj.dummyHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosCreateDummyResponse
    let len;
    let data = new simRosCreateDummyResponse(null);
    // Deserialize message field [dummyHandle]
    data.dummyHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosCreateDummyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fce6fe642297751ba64c68708ffe9e6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 dummyHandle
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosCreateDummyResponse(null);
    if (msg.dummyHandle !== undefined) {
      resolved.dummyHandle = msg.dummyHandle;
    }
    else {
      resolved.dummyHandle = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosCreateDummyRequest,
  Response: simRosCreateDummyResponse,
  md5sum() { return 'ca160749088e63e26f75d439232c561a'; },
  datatype() { return 'vrep_common/simRosCreateDummy'; }
};
