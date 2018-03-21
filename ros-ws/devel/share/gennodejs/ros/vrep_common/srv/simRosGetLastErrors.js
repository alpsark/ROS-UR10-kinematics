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

class simRosGetLastErrorsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetLastErrorsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetLastErrorsRequest
    let len;
    let data = new simRosGetLastErrorsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetLastErrorsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetLastErrorsRequest(null);
    return resolved;
    }
};

class simRosGetLastErrorsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.errorCnt = null;
      this.errorStrings = null;
    }
    else {
      if (initObj.hasOwnProperty('errorCnt')) {
        this.errorCnt = initObj.errorCnt
      }
      else {
        this.errorCnt = 0;
      }
      if (initObj.hasOwnProperty('errorStrings')) {
        this.errorStrings = initObj.errorStrings
      }
      else {
        this.errorStrings = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetLastErrorsResponse
    // Serialize message field [errorCnt]
    bufferOffset = _serializer.int32(obj.errorCnt, buffer, bufferOffset);
    // Serialize message field [errorStrings]
    bufferOffset = _serializer.string(obj.errorStrings, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetLastErrorsResponse
    let len;
    let data = new simRosGetLastErrorsResponse(null);
    // Deserialize message field [errorCnt]
    data.errorCnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [errorStrings]
    data.errorStrings = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.errorStrings.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetLastErrorsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '165502f1a9cdf7b50941ef103382dea5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 errorCnt
    string errorStrings
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetLastErrorsResponse(null);
    if (msg.errorCnt !== undefined) {
      resolved.errorCnt = msg.errorCnt;
    }
    else {
      resolved.errorCnt = 0
    }

    if (msg.errorStrings !== undefined) {
      resolved.errorStrings = msg.errorStrings;
    }
    else {
      resolved.errorStrings = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetLastErrorsRequest,
  Response: simRosGetLastErrorsResponse,
  md5sum() { return '165502f1a9cdf7b50941ef103382dea5'; },
  datatype() { return 'vrep_common/simRosGetLastErrors'; }
};
