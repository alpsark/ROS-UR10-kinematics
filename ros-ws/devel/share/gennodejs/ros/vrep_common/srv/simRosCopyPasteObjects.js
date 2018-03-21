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

class simRosCopyPasteObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objectHandles = null;
    }
    else {
      if (initObj.hasOwnProperty('objectHandles')) {
        this.objectHandles = initObj.objectHandles
      }
      else {
        this.objectHandles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosCopyPasteObjectsRequest
    // Serialize message field [objectHandles]
    bufferOffset = _arraySerializer.int32(obj.objectHandles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosCopyPasteObjectsRequest
    let len;
    let data = new simRosCopyPasteObjectsRequest(null);
    // Deserialize message field [objectHandles]
    data.objectHandles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.objectHandles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosCopyPasteObjectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '185cb01118006e816646e4234283fa15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32[] objectHandles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosCopyPasteObjectsRequest(null);
    if (msg.objectHandles !== undefined) {
      resolved.objectHandles = msg.objectHandles;
    }
    else {
      resolved.objectHandles = []
    }

    return resolved;
    }
};

class simRosCopyPasteObjectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.newObjectHandles = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('newObjectHandles')) {
        this.newObjectHandles = initObj.newObjectHandles
      }
      else {
        this.newObjectHandles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosCopyPasteObjectsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [newObjectHandles]
    bufferOffset = _arraySerializer.int32(obj.newObjectHandles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosCopyPasteObjectsResponse
    let len;
    let data = new simRosCopyPasteObjectsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [newObjectHandles]
    data.newObjectHandles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.newObjectHandles.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosCopyPasteObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33b2dafaeb9036bc8402196ac964ff11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    int32[] newObjectHandles
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosCopyPasteObjectsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.newObjectHandles !== undefined) {
      resolved.newObjectHandles = msg.newObjectHandles;
    }
    else {
      resolved.newObjectHandles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosCopyPasteObjectsRequest,
  Response: simRosCopyPasteObjectsResponse,
  md5sum() { return '6c736eb743dc1dca49bfc35e3f009776'; },
  datatype() { return 'vrep_common/simRosCopyPasteObjects'; }
};
