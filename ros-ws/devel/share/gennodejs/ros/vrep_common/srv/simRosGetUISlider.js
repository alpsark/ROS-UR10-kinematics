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

class simRosGetUISliderRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uiHandle = null;
      this.buttonID = null;
    }
    else {
      if (initObj.hasOwnProperty('uiHandle')) {
        this.uiHandle = initObj.uiHandle
      }
      else {
        this.uiHandle = 0;
      }
      if (initObj.hasOwnProperty('buttonID')) {
        this.buttonID = initObj.buttonID
      }
      else {
        this.buttonID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetUISliderRequest
    // Serialize message field [uiHandle]
    bufferOffset = _serializer.int32(obj.uiHandle, buffer, bufferOffset);
    // Serialize message field [buttonID]
    bufferOffset = _serializer.int32(obj.buttonID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetUISliderRequest
    let len;
    let data = new simRosGetUISliderRequest(null);
    // Deserialize message field [uiHandle]
    data.uiHandle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [buttonID]
    data.buttonID = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetUISliderRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3237fb7c1b11a9bf71b5bb80da60a11a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 uiHandle
    int32 buttonID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetUISliderRequest(null);
    if (msg.uiHandle !== undefined) {
      resolved.uiHandle = msg.uiHandle;
    }
    else {
      resolved.uiHandle = 0
    }

    if (msg.buttonID !== undefined) {
      resolved.buttonID = msg.buttonID;
    }
    else {
      resolved.buttonID = 0
    }

    return resolved;
    }
};

class simRosGetUISliderResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetUISliderResponse
    // Serialize message field [position]
    bufferOffset = _serializer.int32(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetUISliderResponse
    let len;
    let data = new simRosGetUISliderResponse(null);
    // Deserialize message field [position]
    data.position = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetUISliderResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ada70156e12e6e31948c64c60d8bb212';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 position
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetUISliderResponse(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetUISliderRequest,
  Response: simRosGetUISliderResponse,
  md5sum() { return '5406790310ec56ad5fb998c1037f3650'; },
  datatype() { return 'vrep_common/simRosGetUISlider'; }
};
