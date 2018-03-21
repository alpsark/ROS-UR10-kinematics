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

class simRosSetObjectIntParameterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handle = null;
      this.parameter = null;
      this.parameterValue = null;
    }
    else {
      if (initObj.hasOwnProperty('handle')) {
        this.handle = initObj.handle
      }
      else {
        this.handle = 0;
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = 0;
      }
      if (initObj.hasOwnProperty('parameterValue')) {
        this.parameterValue = initObj.parameterValue
      }
      else {
        this.parameterValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetObjectIntParameterRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = _serializer.int32(obj.parameter, buffer, bufferOffset);
    // Serialize message field [parameterValue]
    bufferOffset = _serializer.int32(obj.parameterValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetObjectIntParameterRequest
    let len;
    let data = new simRosSetObjectIntParameterRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameterValue]
    data.parameterValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetObjectIntParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31bdad5c2b1f7cc8b85b4047431fdd27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 handle
    int32 parameter
    int32 parameterValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetObjectIntParameterRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = 0
    }

    if (msg.parameterValue !== undefined) {
      resolved.parameterValue = msg.parameterValue;
    }
    else {
      resolved.parameterValue = 0
    }

    return resolved;
    }
};

class simRosSetObjectIntParameterResponse {
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
    // Serializes a message object of type simRosSetObjectIntParameterResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetObjectIntParameterResponse
    let len;
    let data = new simRosSetObjectIntParameterResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetObjectIntParameterResponse';
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
    const resolved = new simRosSetObjectIntParameterResponse(null);
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
  Request: simRosSetObjectIntParameterRequest,
  Response: simRosSetObjectIntParameterResponse,
  md5sum() { return 'fd6c30a0a0bb1198c016550800028a13'; },
  datatype() { return 'vrep_common/simRosSetObjectIntParameter'; }
};
