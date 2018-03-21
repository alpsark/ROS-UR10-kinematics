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

class simRosGetObjectFloatParameterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handle = null;
      this.parameterID = null;
    }
    else {
      if (initObj.hasOwnProperty('handle')) {
        this.handle = initObj.handle
      }
      else {
        this.handle = 0;
      }
      if (initObj.hasOwnProperty('parameterID')) {
        this.parameterID = initObj.parameterID
      }
      else {
        this.parameterID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectFloatParameterRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    // Serialize message field [parameterID]
    bufferOffset = _serializer.int32(obj.parameterID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectFloatParameterRequest
    let len;
    let data = new simRosGetObjectFloatParameterRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameterID]
    data.parameterID = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectFloatParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '233ddb8f8f3678af5672087de7d603db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 handle
    int32 parameterID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectFloatParameterRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    if (msg.parameterID !== undefined) {
      resolved.parameterID = msg.parameterID;
    }
    else {
      resolved.parameterID = 0
    }

    return resolved;
    }
};

class simRosGetObjectFloatParameterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.parameterValue = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('parameterValue')) {
        this.parameterValue = initObj.parameterValue
      }
      else {
        this.parameterValue = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectFloatParameterResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [parameterValue]
    bufferOffset = _serializer.float32(obj.parameterValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectFloatParameterResponse
    let len;
    let data = new simRosGetObjectFloatParameterResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameterValue]
    data.parameterValue = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectFloatParameterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f3b3d2d178d987bbf7b54667db48dc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32 parameterValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectFloatParameterResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.parameterValue !== undefined) {
      resolved.parameterValue = msg.parameterValue;
    }
    else {
      resolved.parameterValue = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetObjectFloatParameterRequest,
  Response: simRosGetObjectFloatParameterResponse,
  md5sum() { return 'edd72a73282db218f389ebdcac7cbdd8'; },
  datatype() { return 'vrep_common/simRosGetObjectFloatParameter'; }
};
