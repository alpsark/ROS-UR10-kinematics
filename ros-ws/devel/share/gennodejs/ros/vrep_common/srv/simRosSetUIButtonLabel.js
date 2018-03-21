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

class simRosSetUIButtonLabelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uiHandle = null;
      this.buttonID = null;
      this.upStateLabel = null;
      this.downStateLabel = null;
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
      if (initObj.hasOwnProperty('upStateLabel')) {
        this.upStateLabel = initObj.upStateLabel
      }
      else {
        this.upStateLabel = '';
      }
      if (initObj.hasOwnProperty('downStateLabel')) {
        this.downStateLabel = initObj.downStateLabel
      }
      else {
        this.downStateLabel = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosSetUIButtonLabelRequest
    // Serialize message field [uiHandle]
    bufferOffset = _serializer.int32(obj.uiHandle, buffer, bufferOffset);
    // Serialize message field [buttonID]
    bufferOffset = _serializer.int32(obj.buttonID, buffer, bufferOffset);
    // Serialize message field [upStateLabel]
    bufferOffset = _serializer.string(obj.upStateLabel, buffer, bufferOffset);
    // Serialize message field [downStateLabel]
    bufferOffset = _serializer.string(obj.downStateLabel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetUIButtonLabelRequest
    let len;
    let data = new simRosSetUIButtonLabelRequest(null);
    // Deserialize message field [uiHandle]
    data.uiHandle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [buttonID]
    data.buttonID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [upStateLabel]
    data.upStateLabel = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [downStateLabel]
    data.downStateLabel = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.upStateLabel.length;
    length += object.downStateLabel.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetUIButtonLabelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e1ad0cb5a7e9bfb5b83bdbdf550ecc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 uiHandle
    int32 buttonID
    string upStateLabel
    string downStateLabel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosSetUIButtonLabelRequest(null);
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

    if (msg.upStateLabel !== undefined) {
      resolved.upStateLabel = msg.upStateLabel;
    }
    else {
      resolved.upStateLabel = ''
    }

    if (msg.downStateLabel !== undefined) {
      resolved.downStateLabel = msg.downStateLabel;
    }
    else {
      resolved.downStateLabel = ''
    }

    return resolved;
    }
};

class simRosSetUIButtonLabelResponse {
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
    // Serializes a message object of type simRosSetUIButtonLabelResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosSetUIButtonLabelResponse
    let len;
    let data = new simRosSetUIButtonLabelResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosSetUIButtonLabelResponse';
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
    const resolved = new simRosSetUIButtonLabelResponse(null);
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
  Request: simRosSetUIButtonLabelRequest,
  Response: simRosSetUIButtonLabelResponse,
  md5sum() { return '43f15cd21d5f9887f83532420e4a3463'; },
  datatype() { return 'vrep_common/simRosSetUIButtonLabel'; }
};
