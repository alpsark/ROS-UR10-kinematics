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

class simRosGetBooleanParameterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetBooleanParameterRequest
    // Serialize message field [parameter]
    bufferOffset = _serializer.int32(obj.parameter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetBooleanParameterRequest
    let len;
    let data = new simRosGetBooleanParameterRequest(null);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetBooleanParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b5e34835331aac7a9065c5abd204e3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 parameter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetBooleanParameterRequest(null);
    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = 0
    }

    return resolved;
    }
};

class simRosGetBooleanParameterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameterValue = null;
    }
    else {
      if (initObj.hasOwnProperty('parameterValue')) {
        this.parameterValue = initObj.parameterValue
      }
      else {
        this.parameterValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetBooleanParameterResponse
    // Serialize message field [parameterValue]
    bufferOffset = _serializer.int32(obj.parameterValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetBooleanParameterResponse
    let len;
    let data = new simRosGetBooleanParameterResponse(null);
    // Deserialize message field [parameterValue]
    data.parameterValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetBooleanParameterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27eb22d33b5c07abc8d72f26edb19395';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 parameterValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetBooleanParameterResponse(null);
    if (msg.parameterValue !== undefined) {
      resolved.parameterValue = msg.parameterValue;
    }
    else {
      resolved.parameterValue = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetBooleanParameterRequest,
  Response: simRosGetBooleanParameterResponse,
  md5sum() { return '1d1aabce3fe70da836b3bf46393e4896'; },
  datatype() { return 'vrep_common/simRosGetBooleanParameter'; }
};
