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

class simRosSetJointStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handles = null;
      this.setModes = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('handles')) {
        this.handles = initObj.handles
      }
      else {
        this.handles = [];
      }
      if (initObj.hasOwnProperty('setModes')) {
        this.setModes = initObj.setModes
      }
      else {
        this.setModes = [];
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetJointStateRequest
    // Serialize message field [handles]
    bufferOffset = _arraySerializer.int32(obj.handles, buffer, bufferOffset, null);
    // Serialize message field [setModes]
    bufferOffset = _arraySerializer.uint8(obj.setModes, buffer, bufferOffset, null);
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float32(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetJointStateRequest
    let len;
    let data = new simRosSetJointStateRequest(null);
    // Deserialize message field [handles]
    data.handles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [setModes]
    data.setModes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.handles.length;
    length += object.setModes.length;
    length += 4 * object.values.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetJointStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '321f1f7210ed1893ea6a335b3eae0c68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32[] handles
    uint8[] setModes
    float32[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetJointStateRequest(null);
    if (msg.handles !== undefined) {
      resolved.handles = msg.handles;
    }
    else {
      resolved.handles = []
    }

    if (msg.setModes !== undefined) {
      resolved.setModes = msg.setModes;
    }
    else {
      resolved.setModes = []
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

class simRosSetJointStateResponse {
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
    // Serializes a message object of type simRosSetJointStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetJointStateResponse
    let len;
    let data = new simRosSetJointStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetJointStateResponse';
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
    const resolved = new simRosSetJointStateResponse(null);
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
  Request: simRosSetJointStateRequest,
  Response: simRosSetJointStateResponse,
  md5sum() { return 'f0dcb80e3d9c4b8b983ca341425c1996'; },
  datatype() { return 'vrep_common/simRosSetJointState'; }
};
