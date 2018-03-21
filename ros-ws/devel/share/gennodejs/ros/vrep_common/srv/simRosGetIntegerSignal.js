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

class simRosGetIntegerSignalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signalName = null;
    }
    else {
      if (initObj.hasOwnProperty('signalName')) {
        this.signalName = initObj.signalName
      }
      else {
        this.signalName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetIntegerSignalRequest
    // Serialize message field [signalName]
    bufferOffset = _serializer.string(obj.signalName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetIntegerSignalRequest
    let len;
    let data = new simRosGetIntegerSignalRequest(null);
    // Deserialize message field [signalName]
    data.signalName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.signalName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetIntegerSignalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00c43203ad474c6ce746089e83166bba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string signalName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetIntegerSignalRequest(null);
    if (msg.signalName !== undefined) {
      resolved.signalName = msg.signalName;
    }
    else {
      resolved.signalName = ''
    }

    return resolved;
    }
};

class simRosGetIntegerSignalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.signalValue = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
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
    // Serializes a message object of type simRosGetIntegerSignalResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [signalValue]
    bufferOffset = _serializer.int32(obj.signalValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetIntegerSignalResponse
    let len;
    let data = new simRosGetIntegerSignalResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [signalValue]
    data.signalValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetIntegerSignalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f91774edb9fca91ce9d303aaf91831b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    int32 signalValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetIntegerSignalResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
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

module.exports = {
  Request: simRosGetIntegerSignalRequest,
  Response: simRosGetIntegerSignalResponse,
  md5sum() { return '4b64ff90076d16256defe1d768083e34'; },
  datatype() { return 'vrep_common/simRosGetIntegerSignal'; }
};
