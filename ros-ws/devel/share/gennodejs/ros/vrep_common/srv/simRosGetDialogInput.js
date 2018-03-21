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

class simRosGetDialogInputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dialogHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('dialogHandle')) {
        this.dialogHandle = initObj.dialogHandle
      }
      else {
        this.dialogHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetDialogInputRequest
    // Serialize message field [dialogHandle]
    bufferOffset = _serializer.int32(obj.dialogHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetDialogInputRequest
    let len;
    let data = new simRosGetDialogInputRequest(null);
    // Deserialize message field [dialogHandle]
    data.dialogHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetDialogInputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '290f4bd47ce8d0f7c78c1d510052331a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 dialogHandle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetDialogInputRequest(null);
    if (msg.dialogHandle !== undefined) {
      resolved.dialogHandle = msg.dialogHandle;
    }
    else {
      resolved.dialogHandle = 0
    }

    return resolved;
    }
};

class simRosGetDialogInputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetDialogInputResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [input]
    bufferOffset = _serializer.string(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetDialogInputResponse
    let len;
    let data = new simRosGetDialogInputResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [input]
    data.input = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.input.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetDialogInputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4dbece23a7f7a45b3aee510311b5c901';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    string input
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetDialogInputResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetDialogInputRequest,
  Response: simRosGetDialogInputResponse,
  md5sum() { return 'a7a320351d6344ea2112d3892daa9e7f'; },
  datatype() { return 'vrep_common/simRosGetDialogInput'; }
};
