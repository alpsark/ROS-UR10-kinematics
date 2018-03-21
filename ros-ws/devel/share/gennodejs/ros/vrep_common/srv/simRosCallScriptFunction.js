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

class simRosCallScriptFunctionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.functionNameAtObjectName = null;
      this.scriptHandleOrType = null;
      this.inputInts = null;
      this.inputFloats = null;
      this.inputStrings = null;
      this.inputBuffer = null;
    }
    else {
      if (initObj.hasOwnProperty('functionNameAtObjectName')) {
        this.functionNameAtObjectName = initObj.functionNameAtObjectName
      }
      else {
        this.functionNameAtObjectName = '';
      }
      if (initObj.hasOwnProperty('scriptHandleOrType')) {
        this.scriptHandleOrType = initObj.scriptHandleOrType
      }
      else {
        this.scriptHandleOrType = 0;
      }
      if (initObj.hasOwnProperty('inputInts')) {
        this.inputInts = initObj.inputInts
      }
      else {
        this.inputInts = [];
      }
      if (initObj.hasOwnProperty('inputFloats')) {
        this.inputFloats = initObj.inputFloats
      }
      else {
        this.inputFloats = [];
      }
      if (initObj.hasOwnProperty('inputStrings')) {
        this.inputStrings = initObj.inputStrings
      }
      else {
        this.inputStrings = [];
      }
      if (initObj.hasOwnProperty('inputBuffer')) {
        this.inputBuffer = initObj.inputBuffer
      }
      else {
        this.inputBuffer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosCallScriptFunctionRequest
    // Serialize message field [functionNameAtObjectName]
    bufferOffset = _serializer.string(obj.functionNameAtObjectName, buffer, bufferOffset);
    // Serialize message field [scriptHandleOrType]
    bufferOffset = _serializer.int32(obj.scriptHandleOrType, buffer, bufferOffset);
    // Serialize message field [inputInts]
    bufferOffset = _arraySerializer.int32(obj.inputInts, buffer, bufferOffset, null);
    // Serialize message field [inputFloats]
    bufferOffset = _arraySerializer.float32(obj.inputFloats, buffer, bufferOffset, null);
    // Serialize message field [inputStrings]
    bufferOffset = _arraySerializer.string(obj.inputStrings, buffer, bufferOffset, null);
    // Serialize message field [inputBuffer]
    bufferOffset = _serializer.string(obj.inputBuffer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosCallScriptFunctionRequest
    let len;
    let data = new simRosCallScriptFunctionRequest(null);
    // Deserialize message field [functionNameAtObjectName]
    data.functionNameAtObjectName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [scriptHandleOrType]
    data.scriptHandleOrType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [inputInts]
    data.inputInts = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [inputFloats]
    data.inputFloats = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [inputStrings]
    data.inputStrings = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [inputBuffer]
    data.inputBuffer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.functionNameAtObjectName.length;
    length += 4 * object.inputInts.length;
    length += 4 * object.inputFloats.length;
    object.inputStrings.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.inputBuffer.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosCallScriptFunctionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e13770ffacc84bd3ba12cae1ce2b7f0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string functionNameAtObjectName
    int32 scriptHandleOrType
    int32[] inputInts
    float32[] inputFloats
    string[] inputStrings
    string inputBuffer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosCallScriptFunctionRequest(null);
    if (msg.functionNameAtObjectName !== undefined) {
      resolved.functionNameAtObjectName = msg.functionNameAtObjectName;
    }
    else {
      resolved.functionNameAtObjectName = ''
    }

    if (msg.scriptHandleOrType !== undefined) {
      resolved.scriptHandleOrType = msg.scriptHandleOrType;
    }
    else {
      resolved.scriptHandleOrType = 0
    }

    if (msg.inputInts !== undefined) {
      resolved.inputInts = msg.inputInts;
    }
    else {
      resolved.inputInts = []
    }

    if (msg.inputFloats !== undefined) {
      resolved.inputFloats = msg.inputFloats;
    }
    else {
      resolved.inputFloats = []
    }

    if (msg.inputStrings !== undefined) {
      resolved.inputStrings = msg.inputStrings;
    }
    else {
      resolved.inputStrings = []
    }

    if (msg.inputBuffer !== undefined) {
      resolved.inputBuffer = msg.inputBuffer;
    }
    else {
      resolved.inputBuffer = ''
    }

    return resolved;
    }
};

class simRosCallScriptFunctionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.outputInts = null;
      this.outputFloats = null;
      this.outputStrings = null;
      this.outputBuffer = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('outputInts')) {
        this.outputInts = initObj.outputInts
      }
      else {
        this.outputInts = [];
      }
      if (initObj.hasOwnProperty('outputFloats')) {
        this.outputFloats = initObj.outputFloats
      }
      else {
        this.outputFloats = [];
      }
      if (initObj.hasOwnProperty('outputStrings')) {
        this.outputStrings = initObj.outputStrings
      }
      else {
        this.outputStrings = [];
      }
      if (initObj.hasOwnProperty('outputBuffer')) {
        this.outputBuffer = initObj.outputBuffer
      }
      else {
        this.outputBuffer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosCallScriptFunctionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [outputInts]
    bufferOffset = _arraySerializer.int32(obj.outputInts, buffer, bufferOffset, null);
    // Serialize message field [outputFloats]
    bufferOffset = _arraySerializer.float32(obj.outputFloats, buffer, bufferOffset, null);
    // Serialize message field [outputStrings]
    bufferOffset = _arraySerializer.string(obj.outputStrings, buffer, bufferOffset, null);
    // Serialize message field [outputBuffer]
    bufferOffset = _serializer.string(obj.outputBuffer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosCallScriptFunctionResponse
    let len;
    let data = new simRosCallScriptFunctionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [outputInts]
    data.outputInts = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [outputFloats]
    data.outputFloats = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [outputStrings]
    data.outputStrings = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [outputBuffer]
    data.outputBuffer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.outputInts.length;
    length += 4 * object.outputFloats.length;
    object.outputStrings.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.outputBuffer.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosCallScriptFunctionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e480f0a77cf736301c4dc7f71265e882';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 result
    int32[] outputInts
    float32[] outputFloats
    string[] outputStrings
    string outputBuffer
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosCallScriptFunctionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.outputInts !== undefined) {
      resolved.outputInts = msg.outputInts;
    }
    else {
      resolved.outputInts = []
    }

    if (msg.outputFloats !== undefined) {
      resolved.outputFloats = msg.outputFloats;
    }
    else {
      resolved.outputFloats = []
    }

    if (msg.outputStrings !== undefined) {
      resolved.outputStrings = msg.outputStrings;
    }
    else {
      resolved.outputStrings = []
    }

    if (msg.outputBuffer !== undefined) {
      resolved.outputBuffer = msg.outputBuffer;
    }
    else {
      resolved.outputBuffer = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosCallScriptFunctionRequest,
  Response: simRosCallScriptFunctionResponse,
  md5sum() { return 'df820c7b6bf8dac295ae340e203b4857'; },
  datatype() { return 'vrep_common/simRosCallScriptFunction'; }
};
