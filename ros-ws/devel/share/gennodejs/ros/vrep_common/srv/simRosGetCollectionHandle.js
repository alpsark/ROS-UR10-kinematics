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

class simRosGetCollectionHandleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collectionName = null;
    }
    else {
      if (initObj.hasOwnProperty('collectionName')) {
        this.collectionName = initObj.collectionName
      }
      else {
        this.collectionName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetCollectionHandleRequest
    // Serialize message field [collectionName]
    bufferOffset = _serializer.string(obj.collectionName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetCollectionHandleRequest
    let len;
    let data = new simRosGetCollectionHandleRequest(null);
    // Deserialize message field [collectionName]
    data.collectionName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.collectionName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetCollectionHandleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d3c7fc7ea894a7db97f5e243e4bf308';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string collectionName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetCollectionHandleRequest(null);
    if (msg.collectionName !== undefined) {
      resolved.collectionName = msg.collectionName;
    }
    else {
      resolved.collectionName = ''
    }

    return resolved;
    }
};

class simRosGetCollectionHandleResponse {
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
    // Serializes a message object of type simRosGetCollectionHandleResponse
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetCollectionHandleResponse
    let len;
    let data = new simRosGetCollectionHandleResponse(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetCollectionHandleResponse';
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
    const resolved = new simRosGetCollectionHandleResponse(null);
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
  Request: simRosGetCollectionHandleRequest,
  Response: simRosGetCollectionHandleResponse,
  md5sum() { return '9a88cbc3c0b9dc318a5ae82846bcf63b'; },
  datatype() { return 'vrep_common/simRosGetCollectionHandle'; }
};
