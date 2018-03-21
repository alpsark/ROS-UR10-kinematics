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

class simRosReadVisionSensorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handle = null;
    }
    else {
      if (initObj.hasOwnProperty('handle')) {
        this.handle = initObj.handle
      }
      else {
        this.handle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosReadVisionSensorRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosReadVisionSensorRequest
    let len;
    let data = new simRosReadVisionSensorRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosReadVisionSensorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92535b678299d2bdda959704e78c275e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 handle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosReadVisionSensorRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    return resolved;
    }
};

class simRosReadVisionSensorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.packetData = null;
      this.packetSizes = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('packetData')) {
        this.packetData = initObj.packetData
      }
      else {
        this.packetData = [];
      }
      if (initObj.hasOwnProperty('packetSizes')) {
        this.packetSizes = initObj.packetSizes
      }
      else {
        this.packetSizes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosReadVisionSensorResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [packetData]
    bufferOffset = _arraySerializer.float32(obj.packetData, buffer, bufferOffset, null);
    // Serialize message field [packetSizes]
    bufferOffset = _arraySerializer.int32(obj.packetSizes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosReadVisionSensorResponse
    let len;
    let data = new simRosReadVisionSensorResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [packetData]
    data.packetData = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [packetSizes]
    data.packetSizes = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.packetData.length;
    length += 4 * object.packetSizes.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosReadVisionSensorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a46558cdf2ec9ef5fe9ba6ee4605c6bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32[] packetData
    int32[] packetSizes
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosReadVisionSensorResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.packetData !== undefined) {
      resolved.packetData = msg.packetData;
    }
    else {
      resolved.packetData = []
    }

    if (msg.packetSizes !== undefined) {
      resolved.packetSizes = msg.packetSizes;
    }
    else {
      resolved.packetSizes = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosReadVisionSensorRequest,
  Response: simRosReadVisionSensorResponse,
  md5sum() { return '06a229ce8d1f580db5bd558c65f74c4e'; },
  datatype() { return 'vrep_common/simRosReadVisionSensor'; }
};
