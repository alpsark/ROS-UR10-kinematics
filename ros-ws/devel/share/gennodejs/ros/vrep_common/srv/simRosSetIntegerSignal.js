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

class simRosSetIntegerSignalRequest {
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
        this.signalValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetIntegerSignalRequest
    // Serialize message field [signalName]
    bufferOffset = _serializer.string(obj.signalName, buffer, bufferOffset);
    // Serialize message field [signalValue]
    bufferOffset = _serializer.int32(obj.signalValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetIntegerSignalRequest
    let len;
    let data = new simRosSetIntegerSignalRequest(null);
    // Deserialize message field [signalName]
    data.signalName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [signalValue]
    data.signalValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.signalName.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetIntegerSignalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70abbfe43fc78e6558d58b762827146c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string signalName
    int32 signalValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetIntegerSignalRequest(null);
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
      resolved.signalValue = 0
    }

    return resolved;
    }
};

class simRosSetIntegerSignalResponse {
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
    // Serializes a message object of type simRosSetIntegerSignalResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetIntegerSignalResponse
    let len;
    let data = new simRosSetIntegerSignalResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetIntegerSignalResponse';
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
    const resolved = new simRosSetIntegerSignalResponse(null);
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
  Request: simRosSetIntegerSignalRequest,
  Response: simRosSetIntegerSignalResponse,
  md5sum() { return '6348838e968005d75ae2126a83942b2a'; },
  datatype() { return 'vrep_common/simRosSetIntegerSignal'; }
};
