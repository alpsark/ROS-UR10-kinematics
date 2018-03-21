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

class simRosEnablePublisherRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topicName = null;
      this.queueSize = null;
      this.streamCmd = null;
      this.auxInt1 = null;
      this.auxInt2 = null;
      this.auxString = null;
    }
    else {
      if (initObj.hasOwnProperty('topicName')) {
        this.topicName = initObj.topicName
      }
      else {
        this.topicName = '';
      }
      if (initObj.hasOwnProperty('queueSize')) {
        this.queueSize = initObj.queueSize
      }
      else {
        this.queueSize = 0;
      }
      if (initObj.hasOwnProperty('streamCmd')) {
        this.streamCmd = initObj.streamCmd
      }
      else {
        this.streamCmd = 0;
      }
      if (initObj.hasOwnProperty('auxInt1')) {
        this.auxInt1 = initObj.auxInt1
      }
      else {
        this.auxInt1 = 0;
      }
      if (initObj.hasOwnProperty('auxInt2')) {
        this.auxInt2 = initObj.auxInt2
      }
      else {
        this.auxInt2 = 0;
      }
      if (initObj.hasOwnProperty('auxString')) {
        this.auxString = initObj.auxString
      }
      else {
        this.auxString = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosEnablePublisherRequest
    // Serialize message field [topicName]
    bufferOffset = _serializer.string(obj.topicName, buffer, bufferOffset);
    // Serialize message field [queueSize]
    bufferOffset = _serializer.int32(obj.queueSize, buffer, bufferOffset);
    // Serialize message field [streamCmd]
    bufferOffset = _serializer.int32(obj.streamCmd, buffer, bufferOffset);
    // Serialize message field [auxInt1]
    bufferOffset = _serializer.int32(obj.auxInt1, buffer, bufferOffset);
    // Serialize message field [auxInt2]
    bufferOffset = _serializer.int32(obj.auxInt2, buffer, bufferOffset);
    // Serialize message field [auxString]
    bufferOffset = _serializer.string(obj.auxString, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosEnablePublisherRequest
    let len;
    let data = new simRosEnablePublisherRequest(null);
    // Deserialize message field [topicName]
    data.topicName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [queueSize]
    data.queueSize = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [streamCmd]
    data.streamCmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [auxInt1]
    data.auxInt1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [auxInt2]
    data.auxInt2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [auxString]
    data.auxString = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topicName.length;
    length += object.auxString.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosEnablePublisherRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7df7c248dc5801f9f5b98f61f3741b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string topicName
    int32 queueSize
    int32 streamCmd
    int32 auxInt1
    int32 auxInt2
    string auxString
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosEnablePublisherRequest(null);
    if (msg.topicName !== undefined) {
      resolved.topicName = msg.topicName;
    }
    else {
      resolved.topicName = ''
    }

    if (msg.queueSize !== undefined) {
      resolved.queueSize = msg.queueSize;
    }
    else {
      resolved.queueSize = 0
    }

    if (msg.streamCmd !== undefined) {
      resolved.streamCmd = msg.streamCmd;
    }
    else {
      resolved.streamCmd = 0
    }

    if (msg.auxInt1 !== undefined) {
      resolved.auxInt1 = msg.auxInt1;
    }
    else {
      resolved.auxInt1 = 0
    }

    if (msg.auxInt2 !== undefined) {
      resolved.auxInt2 = msg.auxInt2;
    }
    else {
      resolved.auxInt2 = 0
    }

    if (msg.auxString !== undefined) {
      resolved.auxString = msg.auxString;
    }
    else {
      resolved.auxString = ''
    }

    return resolved;
    }
};

class simRosEnablePublisherResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.effectiveTopicName = null;
    }
    else {
      if (initObj.hasOwnProperty('effectiveTopicName')) {
        this.effectiveTopicName = initObj.effectiveTopicName
      }
      else {
        this.effectiveTopicName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosEnablePublisherResponse
    // Serialize message field [effectiveTopicName]
    bufferOffset = _serializer.string(obj.effectiveTopicName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosEnablePublisherResponse
    let len;
    let data = new simRosEnablePublisherResponse(null);
    // Deserialize message field [effectiveTopicName]
    data.effectiveTopicName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.effectiveTopicName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosEnablePublisherResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8280ce6c5ec203a92c1559486bea2e2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string effectiveTopicName
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosEnablePublisherResponse(null);
    if (msg.effectiveTopicName !== undefined) {
      resolved.effectiveTopicName = msg.effectiveTopicName;
    }
    else {
      resolved.effectiveTopicName = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosEnablePublisherRequest,
  Response: simRosEnablePublisherResponse,
  md5sum() { return '1656daea9e4b58b53b650fa39f39e74e'; },
  datatype() { return 'vrep_common/simRosEnablePublisher'; }
};
