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

class simRosAppendStringSignalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signalName = null;
      this.signalValue = null;
    }
    else {
      if (initObj.hasOwnProperty('signalName')) {
        this.signalName = initObj.signalName
      }
      else {
        this.signalName = '';
      }
      if (initObj.hasOwnProperty('signalValue')) {
        this.signalValue = initObj.signalValue
      }
      else {
        this.signalValue = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosAppendStringSignalRequest
    // Serialize message field [signalName]
    bufferOffset = _serializer.string(obj.signalName, buffer, bufferOffset);
    // Serialize message field [signalValue]
    bufferOffset = _serializer.string(obj.signalValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAppendStringSignalRequest
    let len;
    let data = new simRosAppendStringSignalRequest(null);
    // Deserialize message field [signalName]
    data.signalName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [signalValue]
    data.signalValue = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.signalName.length;
    length += object.signalValue.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAppendStringSignalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a27f6ed9e44bd0fc3f310d02aeac102f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string signalName
    string signalValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosAppendStringSignalRequest(null);
    if (msg.signalName !== undefined) {
      resolved.signalName = msg.signalName;
    }
    else {
      resolved.signalName = ''
    }

    if (msg.signalValue !== undefined) {
      resolved.signalValue = msg.signalValue;
    }
    else {
      resolved.signalValue = ''
    }

    return resolved;
    }
};

class simRosAppendStringSignalResponse {
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
    // Serializes a message object of type simRosAppendStringSignalResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAppendStringSignalResponse
    let len;
    let data = new simRosAppendStringSignalResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAppendStringSignalResponse';
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
    const resolved = new simRosAppendStringSignalResponse(null);
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
  Request: simRosAppendStringSignalRequest,
  Response: simRosAppendStringSignalResponse,
  md5sum() { return 'c49759e205be8f8195cc764a3a6b6c4d'; },
  datatype() { return 'vrep_common/simRosAppendStringSignal'; }
};
