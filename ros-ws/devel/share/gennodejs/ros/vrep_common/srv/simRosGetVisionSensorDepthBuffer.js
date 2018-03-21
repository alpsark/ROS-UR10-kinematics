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

class simRosGetVisionSensorDepthBufferRequest {
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
    // Serializes a message object of type simRosGetVisionSensorDepthBufferRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetVisionSensorDepthBufferRequest
    let len;
    let data = new simRosGetVisionSensorDepthBufferRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetVisionSensorDepthBufferRequest';
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
    const resolved = new simRosGetVisionSensorDepthBufferRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    return resolved;
    }
};

class simRosGetVisionSensorDepthBufferResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.resolution = null;
      this.buffer = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = [];
      }
      if (initObj.hasOwnProperty('buffer')) {
        this.buffer = initObj.buffer
      }
      else {
        this.buffer = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetVisionSensorDepthBufferResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [resolution]
    bufferOffset = _arraySerializer.int32(obj.resolution, buffer, bufferOffset, null);
    // Serialize message field [buffer]
    bufferOffset = _arraySerializer.float32(obj.buffer, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetVisionSensorDepthBufferResponse
    let len;
    let data = new simRosGetVisionSensorDepthBufferResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [resolution]
    data.resolution = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [buffer]
    data.buffer = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.resolution.length;
    length += 4 * object.buffer.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetVisionSensorDepthBufferResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3b6a80ea60fe51df97a2b740bd21976';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    int32[] resolution
    float32[] buffer
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetVisionSensorDepthBufferResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = []
    }

    if (msg.buffer !== undefined) {
      resolved.buffer = msg.buffer;
    }
    else {
      resolved.buffer = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetVisionSensorDepthBufferRequest,
  Response: simRosGetVisionSensorDepthBufferResponse,
  md5sum() { return '4ba1b459e0a6f0de6bdb7a5376ec08af'; },
  datatype() { return 'vrep_common/simRosGetVisionSensorDepthBuffer'; }
};
