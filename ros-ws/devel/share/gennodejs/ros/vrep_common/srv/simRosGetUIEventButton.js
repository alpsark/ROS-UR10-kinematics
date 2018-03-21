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

class simRosGetUIEventButtonRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uiHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('uiHandle')) {
        this.uiHandle = initObj.uiHandle
      }
      else {
        this.uiHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetUIEventButtonRequest
    // Serialize message field [uiHandle]
    bufferOffset = _serializer.int32(obj.uiHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetUIEventButtonRequest
    let len;
    let data = new simRosGetUIEventButtonRequest(null);
    // Deserialize message field [uiHandle]
    data.uiHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetUIEventButtonRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66b6744fce66e25d77c762900fd5eb01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 uiHandle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetUIEventButtonRequest(null);
    if (msg.uiHandle !== undefined) {
      resolved.uiHandle = msg.uiHandle;
    }
    else {
      resolved.uiHandle = 0
    }

    return resolved;
    }
};

class simRosGetUIEventButtonResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.buttonID = null;
      this.auxiliaryValues = null;
    }
    else {
      if (initObj.hasOwnProperty('buttonID')) {
        this.buttonID = initObj.buttonID
      }
      else {
        this.buttonID = 0;
      }
      if (initObj.hasOwnProperty('auxiliaryValues')) {
        this.auxiliaryValues = initObj.auxiliaryValues
      }
      else {
        this.auxiliaryValues = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetUIEventButtonResponse
    // Serialize message field [buttonID]
    bufferOffset = _serializer.int32(obj.buttonID, buffer, bufferOffset);
    // Serialize message field [auxiliaryValues]
    bufferOffset = _arraySerializer.int32(obj.auxiliaryValues, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetUIEventButtonResponse
    let len;
    let data = new simRosGetUIEventButtonResponse(null);
    // Deserialize message field [buttonID]
    data.buttonID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [auxiliaryValues]
    data.auxiliaryValues = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.auxiliaryValues.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetUIEventButtonResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b728477dc7ef5ede0fdff50ce2320d21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 buttonID
    int32[] auxiliaryValues
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetUIEventButtonResponse(null);
    if (msg.buttonID !== undefined) {
      resolved.buttonID = msg.buttonID;
    }
    else {
      resolved.buttonID = 0
    }

    if (msg.auxiliaryValues !== undefined) {
      resolved.auxiliaryValues = msg.auxiliaryValues;
    }
    else {
      resolved.auxiliaryValues = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetUIEventButtonRequest,
  Response: simRosGetUIEventButtonResponse,
  md5sum() { return '73f7d10c9f731ce35564b7e9b645aa25'; },
  datatype() { return 'vrep_common/simRosGetUIEventButton'; }
};
