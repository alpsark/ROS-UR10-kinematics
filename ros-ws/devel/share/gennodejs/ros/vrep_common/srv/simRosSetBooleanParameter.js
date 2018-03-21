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

class simRosSetBooleanParameterRequest {
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
        this.parameterValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetBooleanParameterRequest
    // Serialize message field [parameter]
    bufferOffset = _serializer.int32(obj.parameter, buffer, bufferOffset);
    // Serialize message field [parameterValue]
    bufferOffset = _serializer.uint8(obj.parameterValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetBooleanParameterRequest
    let len;
    let data = new simRosSetBooleanParameterRequest(null);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameterValue]
    data.parameterValue = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetBooleanParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10fa8f42f19dd4cbb2be19bb12f6a724';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 parameter
    uint8 parameterValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetBooleanParameterRequest(null);
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

class simRosSetBooleanParameterResponse {
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
    // Serializes a message object of type simRosSetBooleanParameterResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetBooleanParameterResponse
    let len;
    let data = new simRosSetBooleanParameterResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetBooleanParameterResponse';
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
    const resolved = new simRosSetBooleanParameterResponse(null);
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
  Request: simRosSetBooleanParameterRequest,
  Response: simRosSetBooleanParameterResponse,
  md5sum() { return '48226e7166296d8d45f6626e588efb5a'; },
  datatype() { return 'vrep_common/simRosSetBooleanParameter'; }
};
