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

class simRosGetObjectGroupDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objectType = null;
      this.dataType = null;
    }
    else {
      if (initObj.hasOwnProperty('objectType')) {
        this.objectType = initObj.objectType
      }
      else {
        this.objectType = 0;
      }
      if (initObj.hasOwnProperty('dataType')) {
        this.dataType = initObj.dataType
      }
      else {
        this.dataType = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectGroupDataRequest
    // Serialize message field [objectType]
    bufferOffset = _serializer.int32(obj.objectType, buffer, bufferOffset);
    // Serialize message field [dataType]
    bufferOffset = _serializer.int32(obj.dataType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectGroupDataRequest
    let len;
    let data = new simRosGetObjectGroupDataRequest(null);
    // Deserialize message field [objectType]
    data.objectType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dataType]
    data.dataType = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectGroupDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f25e144fb8e81818d3b3ee5f47698859';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 objectType
    int32 dataType
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectGroupDataRequest(null);
    if (msg.objectType !== undefined) {
      resolved.objectType = msg.objectType;
    }
    else {
      resolved.objectType = 0
    }

    if (msg.dataType !== undefined) {
      resolved.dataType = msg.dataType;
    }
    else {
      resolved.dataType = 0
    }

    return resolved;
    }
};

class simRosGetObjectGroupDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handles = null;
      this.intData = null;
      this.floatData = null;
      this.strings = null;
    }
    else {
      if (initObj.hasOwnProperty('handles')) {
        this.handles = initObj.handles
      }
      else {
        this.handles = [];
      }
      if (initObj.hasOwnProperty('intData')) {
        this.intData = initObj.intData
      }
      else {
        this.intData = [];
      }
      if (initObj.hasOwnProperty('floatData')) {
        this.floatData = initObj.floatData
      }
      else {
        this.floatData = [];
      }
      if (initObj.hasOwnProperty('strings')) {
        this.strings = initObj.strings
      }
      else {
        this.strings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectGroupDataResponse
    // Serialize message field [handles]
    bufferOffset = _arraySerializer.int32(obj.handles, buffer, bufferOffset, null);
    // Serialize message field [intData]
    bufferOffset = _arraySerializer.int32(obj.intData, buffer, bufferOffset, null);
    // Serialize message field [floatData]
    bufferOffset = _arraySerializer.float32(obj.floatData, buffer, bufferOffset, null);
    // Serialize message field [strings]
    bufferOffset = _arraySerializer.string(obj.strings, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectGroupDataResponse
    let len;
    let data = new simRosGetObjectGroupDataResponse(null);
    // Deserialize message field [handles]
    data.handles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [intData]
    data.intData = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [floatData]
    data.floatData = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [strings]
    data.strings = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.handles.length;
    length += 4 * object.intData.length;
    length += 4 * object.floatData.length;
    object.strings.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectGroupDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '072add4d453cc4563363975eb4c48cf2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] handles
    int32[] intData
    float32[] floatData
    string[] strings
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectGroupDataResponse(null);
    if (msg.handles !== undefined) {
      resolved.handles = msg.handles;
    }
    else {
      resolved.handles = []
    }

    if (msg.intData !== undefined) {
      resolved.intData = msg.intData;
    }
    else {
      resolved.intData = []
    }

    if (msg.floatData !== undefined) {
      resolved.floatData = msg.floatData;
    }
    else {
      resolved.floatData = []
    }

    if (msg.strings !== undefined) {
      resolved.strings = msg.strings;
    }
    else {
      resolved.strings = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetObjectGroupDataRequest,
  Response: simRosGetObjectGroupDataResponse,
  md5sum() { return '8d0534a840a5e37715f425228506250e'; },
  datatype() { return 'vrep_common/simRosGetObjectGroupData'; }
};
