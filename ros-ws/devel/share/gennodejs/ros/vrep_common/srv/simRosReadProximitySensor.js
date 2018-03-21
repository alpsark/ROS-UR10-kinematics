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

class simRosReadProximitySensorRequest {
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
    // Serializes a message object of type simRosReadProximitySensorRequest
    // Serialize message field [handle]
    bufferOffset = _serializer.int32(obj.handle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosReadProximitySensorRequest
    let len;
    let data = new simRosReadProximitySensorRequest(null);
    // Deserialize message field [handle]
    data.handle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosReadProximitySensorRequest';
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
    const resolved = new simRosReadProximitySensorRequest(null);
    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    return resolved;
    }
};

class simRosReadProximitySensorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.detectedPoint = null;
      this.detectedObject = null;
      this.normalVector = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('detectedPoint')) {
        this.detectedPoint = initObj.detectedPoint
      }
      else {
        this.detectedPoint = [];
      }
      if (initObj.hasOwnProperty('detectedObject')) {
        this.detectedObject = initObj.detectedObject
      }
      else {
        this.detectedObject = 0;
      }
      if (initObj.hasOwnProperty('normalVector')) {
        this.normalVector = initObj.normalVector
      }
      else {
        this.normalVector = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosReadProximitySensorResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [detectedPoint]
    bufferOffset = _arraySerializer.float32(obj.detectedPoint, buffer, bufferOffset, null);
    // Serialize message field [detectedObject]
    bufferOffset = _serializer.int32(obj.detectedObject, buffer, bufferOffset);
    // Serialize message field [normalVector]
    bufferOffset = _arraySerializer.float32(obj.normalVector, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosReadProximitySensorResponse
    let len;
    let data = new simRosReadProximitySensorResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [detectedPoint]
    data.detectedPoint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [detectedObject]
    data.detectedObject = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [normalVector]
    data.normalVector = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.detectedPoint.length;
    length += 4 * object.normalVector.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosReadProximitySensorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d96957b6da2491c9e2ffcfcd60996ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    float32[] detectedPoint
    int32 detectedObject
    float32[] normalVector
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosReadProximitySensorResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.detectedPoint !== undefined) {
      resolved.detectedPoint = msg.detectedPoint;
    }
    else {
      resolved.detectedPoint = []
    }

    if (msg.detectedObject !== undefined) {
      resolved.detectedObject = msg.detectedObject;
    }
    else {
      resolved.detectedObject = 0
    }

    if (msg.normalVector !== undefined) {
      resolved.normalVector = msg.normalVector;
    }
    else {
      resolved.normalVector = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosReadProximitySensorRequest,
  Response: simRosReadProximitySensorResponse,
  md5sum() { return '05a1fa096e5ff4ba7072c60e22ef589e'; },
  datatype() { return 'vrep_common/simRosReadProximitySensor'; }
};
