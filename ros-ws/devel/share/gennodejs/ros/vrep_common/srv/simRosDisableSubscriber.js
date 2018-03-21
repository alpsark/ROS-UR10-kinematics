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

class simRosDisableSubscriberRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subscriberID = null;
    }
    else {
      if (initObj.hasOwnProperty('subscriberID')) {
        this.subscriberID = initObj.subscriberID
      }
      else {
        this.subscriberID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosDisableSubscriberRequest
    // Serialize message field [subscriberID]
    bufferOffset = _serializer.int32(obj.subscriberID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosDisableSubscriberRequest
    let len;
    let data = new simRosDisableSubscriberRequest(null);
    // Deserialize message field [subscriberID]
    data.subscriberID = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosDisableSubscriberRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62d69ecf284a2ca70f446f9db0533ca8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    int32 subscriberID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosDisableSubscriberRequest(null);
    if (msg.subscriberID !== undefined) {
      resolved.subscriberID = msg.subscriberID;
    }
    else {
      resolved.subscriberID = 0
    }

    return resolved;
    }
};

class simRosDisableSubscriberResponse {
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
    // Serializes a message object of type simRosDisableSubscriberResponse
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosDisableSubscriberResponse
    let len;
    let data = new simRosDisableSubscriberResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosDisableSubscriberResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25458147911545c320c4c0a299eff763';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosDisableSubscriberResponse(null);
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
  Request: simRosDisableSubscriberRequest,
  Response: simRosDisableSubscriberResponse,
  md5sum() { return '87973d82517ab997be2393d06260d68a'; },
  datatype() { return 'vrep_common/simRosDisableSubscriber'; }
};
