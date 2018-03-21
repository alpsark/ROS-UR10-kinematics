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

class simRosGetObjectSelectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectSelectionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectSelectionRequest
    let len;
    let data = new simRosGetObjectSelectionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectSelectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectSelectionRequest(null);
    return resolved;
    }
};

class simRosGetObjectSelectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handles = null;
    }
    else {
      if (initObj.hasOwnProperty('handles')) {
        this.handles = initObj.handles
      }
      else {
        this.handles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosGetObjectSelectionResponse
    // Serialize message field [handles]
    bufferOffset = _arraySerializer.int32(obj.handles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosGetObjectSelectionResponse
    let len;
    let data = new simRosGetObjectSelectionResponse(null);
    // Deserialize message field [handles]
    data.handles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.handles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosGetObjectSelectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b24af430705cefc484ff6cc1c5669ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] handles
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosGetObjectSelectionResponse(null);
    if (msg.handles !== undefined) {
      resolved.handles = msg.handles;
    }
    else {
      resolved.handles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosGetObjectSelectionRequest,
  Response: simRosGetObjectSelectionResponse,
  md5sum() { return '1b24af430705cefc484ff6cc1c5669ad'; },
  datatype() { return 'vrep_common/simRosGetObjectSelection'; }
};
