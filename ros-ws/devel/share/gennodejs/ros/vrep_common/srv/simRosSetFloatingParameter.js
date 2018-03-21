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

class simRosSetFloatingParameterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameter = null;
      this.parameterValue = null;
    }
    else {
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
        this.parameterValue = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetFloatingParameterRequest
    // Serialize message field [parameter]
    bufferOffset = _serializer.int32(obj.parameter, buffer, bufferOffset);
    // Serialize message field [parameterValue]
    bufferOffset = _serializer.float32(obj.parameterValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetFloatingParameterRequest
    let len;
    let data = new simRosSetFloatingParameterRequest(null);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameterValue]
    data.parameterValue = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetFloatingParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '570e61d21d53bf62d540d6da5ff10ceb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 parameter
    float32 parameterValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetFloatingParameterRequest(null);
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
      resolved.parameterValue = 0.0
    }

    return resolved;
    }
};

class simRosSetFloatingParameterResponse {
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
    // Serializes a message object of type simRosSetFloatingParameterResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetFloatingParameterResponse
    let len;
    let data = new simRosSetFloatingParameterResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetFloatingParameterResponse';
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
    const resolved = new simRosSetFloatingParameterResponse(null);
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
  Request: simRosSetFloatingParameterRequest,
  Response: simRosSetFloatingParameterResponse,
  md5sum() { return 'c31639a7b964ac493003ab10b05585ed'; },
  datatype() { return 'vrep_common/simRosSetFloatingParameter'; }
};
