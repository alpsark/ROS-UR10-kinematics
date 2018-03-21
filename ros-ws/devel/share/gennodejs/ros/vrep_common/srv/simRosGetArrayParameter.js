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

class simRosGetArrayParameterRequest {
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
    // Serializes a message object of type simRosGetArrayParameterRequest
    // Serialize message field [parameter]
    bufferOffset = _serializer.int32(obj.parameter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetArrayParameterRequest
    let len;
    let data = new simRosGetArrayParameterRequest(null);
    // Deserialize message field [parameter]
    data.parameter = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetArrayParameterRequest';
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
    const resolved = new simRosGetArrayParameterRequest(null);
    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = 0
    }

    return resolved;
    }
};

class simRosGetArrayParameterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.parameterValues = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('parameterValues')) {
        this.parameterValues = initObj.parameterValues
      }
      else {
        this.parameterValues = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetArrayParameterResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [parameterValues]
    bufferOffset = _arraySerializer.float32(obj.parameterValues, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetArrayParameterResponse
    let len;
    let data = new simRosGetArrayParameterResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameterValues]
    data.parameterValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.parameterValues.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetArrayParameterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e497cd253c2e34372eda1afd9473563a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32[] parameterValues
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetArrayParameterResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.parameterValues !== undefined) {
      resolved.parameterValues = msg.parameterValues;
    }
    else {
      resolved.parameterValues = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetArrayParameterRequest,
  Response: simRosGetArrayParameterResponse,
  md5sum() { return 'eb14c535a1358defa0617c252d433144'; },
  datatype() { return 'vrep_common/simRosGetArrayParameter'; }
};
