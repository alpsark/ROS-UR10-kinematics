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

class simRosBreakForceSensorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objectHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('objectHandle')) {
        this.objectHandle = initObj.objectHandle
      }
      else {
        this.objectHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosBreakForceSensorRequest
    // Serialize message field [objectHandle]
    bufferOffset = _serializer.int32(obj.objectHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosBreakForceSensorRequest
    let len;
    let data = new simRosBreakForceSensorRequest(null);
    // Deserialize message field [objectHandle]
    data.objectHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosBreakForceSensorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c941d9606c863e83c4461ed050c749de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 objectHandle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosBreakForceSensorRequest(null);
    if (msg.objectHandle !== undefined) {
      resolved.objectHandle = msg.objectHandle;
    }
    else {
      resolved.objectHandle = 0
    }

    return resolved;
    }
};

class simRosBreakForceSensorResponse {
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
    // Serializes a message object of type simRosBreakForceSensorResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosBreakForceSensorResponse
    let len;
    let data = new simRosBreakForceSensorResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosBreakForceSensorResponse';
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
    const resolved = new simRosBreakForceSensorResponse(null);
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
  Request: simRosBreakForceSensorRequest,
  Response: simRosBreakForceSensorResponse,
  md5sum() { return 'b36b86ca13a59f09240c2d590a9babec'; },
  datatype() { return 'vrep_common/simRosBreakForceSensor'; }
};
