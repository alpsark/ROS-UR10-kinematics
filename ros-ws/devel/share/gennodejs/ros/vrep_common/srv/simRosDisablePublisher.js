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

class simRosDisablePublisherRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topicName = null;
    }
    else {
      if (initObj.hasOwnProperty('topicName')) {
        this.topicName = initObj.topicName
      }
      else {
        this.topicName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosDisablePublisherRequest
    // Serialize message field [topicName]
    bufferOffset = _serializer.string(obj.topicName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosDisablePublisherRequest
    let len;
    let data = new simRosDisablePublisherRequest(null);
    // Deserialize message field [topicName]
    data.topicName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topicName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosDisablePublisherRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74b3306276d42621c8d9905fba018178';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string topicName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosDisablePublisherRequest(null);
    if (msg.topicName !== undefined) {
      resolved.topicName = msg.topicName;
    }
    else {
      resolved.topicName = ''
    }

    return resolved;
    }
};

class simRosDisablePublisherResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.referenceCounter = null;
    }
    else {
      if (initObj.hasOwnProperty('referenceCounter')) {
        this.referenceCounter = initObj.referenceCounter
      }
      else {
        this.referenceCounter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosDisablePublisherResponse
    // Serialize message field [referenceCounter]
    bufferOffset = _serializer.int32(obj.referenceCounter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosDisablePublisherResponse
    let len;
    let data = new simRosDisablePublisherResponse(null);
    // Deserialize message field [referenceCounter]
    data.referenceCounter = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosDisablePublisherResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b77f442068c4e56b29b4900433a0f3d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 referenceCounter
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosDisablePublisherResponse(null);
    if (msg.referenceCounter !== undefined) {
      resolved.referenceCounter = msg.referenceCounter;
    }
    else {
      resolved.referenceCounter = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosDisablePublisherRequest,
  Response: simRosDisablePublisherResponse,
  md5sum() { return '468250467bc8406ae24bdf79d4391996'; },
  datatype() { return 'vrep_common/simRosDisablePublisher'; }
};
