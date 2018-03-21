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

class simRosAuxiliaryConsoleOpenRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.title = null;
      this.maxLines = null;
      this.mode = null;
      this.position = null;
      this.size = null;
      this.textColor = null;
      this.backgroundColor = null;
    }
    else {
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
      if (initObj.hasOwnProperty('maxLines')) {
        this.maxLines = initObj.maxLines
      }
      else {
        this.maxLines = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = [];
      }
      if (initObj.hasOwnProperty('textColor')) {
        this.textColor = initObj.textColor
      }
      else {
        this.textColor = [];
      }
      if (initObj.hasOwnProperty('backgroundColor')) {
        this.backgroundColor = initObj.backgroundColor
      }
      else {
        this.backgroundColor = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosAuxiliaryConsoleOpenRequest
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    // Serialize message field [maxLines]
    bufferOffset = _serializer.int32(obj.maxLines, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.int32(obj.position, buffer, bufferOffset, null);
    // Serialize message field [size]
    bufferOffset = _arraySerializer.int32(obj.size, buffer, bufferOffset, null);
    // Serialize message field [textColor]
    bufferOffset = _arraySerializer.float32(obj.textColor, buffer, bufferOffset, null);
    // Serialize message field [backgroundColor]
    bufferOffset = _arraySerializer.float32(obj.backgroundColor, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAuxiliaryConsoleOpenRequest
    let len;
    let data = new simRosAuxiliaryConsoleOpenRequest(null);
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [maxLines]
    data.maxLines = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [size]
    data.size = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [textColor]
    data.textColor = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [backgroundColor]
    data.backgroundColor = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.title.length;
    length += 4 * object.position.length;
    length += 4 * object.size.length;
    length += 4 * object.textColor.length;
    length += 4 * object.backgroundColor.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAuxiliaryConsoleOpenRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b11b7ee0194549fd289229f6b0fe6c7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string title
    int32 maxLines
    int32 mode
    int32[] position
    int32[] size
    float32[] textColor
    float32[] backgroundColor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosAuxiliaryConsoleOpenRequest(null);
    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    if (msg.maxLines !== undefined) {
      resolved.maxLines = msg.maxLines;
    }
    else {
      resolved.maxLines = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = []
    }

    if (msg.textColor !== undefined) {
      resolved.textColor = msg.textColor;
    }
    else {
      resolved.textColor = []
    }

    if (msg.backgroundColor !== undefined) {
      resolved.backgroundColor = msg.backgroundColor;
    }
    else {
      resolved.backgroundColor = []
    }

    return resolved;
    }
};

class simRosAuxiliaryConsoleOpenResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.consoleHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('consoleHandle')) {
        this.consoleHandle = initObj.consoleHandle
      }
      else {
        this.consoleHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosAuxiliaryConsoleOpenResponse
    // Serialize message field [consoleHandle]
    bufferOffset = _serializer.int32(obj.consoleHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosAuxiliaryConsoleOpenResponse
    let len;
    let data = new simRosAuxiliaryConsoleOpenResponse(null);
    // Deserialize message field [consoleHandle]
    data.consoleHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosAuxiliaryConsoleOpenResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0712f8f971970cd49793e7755140f018';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 consoleHandle
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosAuxiliaryConsoleOpenResponse(null);
    if (msg.consoleHandle !== undefined) {
      resolved.consoleHandle = msg.consoleHandle;
    }
    else {
      resolved.consoleHandle = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosAuxiliaryConsoleOpenRequest,
  Response: simRosAuxiliaryConsoleOpenResponse,
  md5sum() { return 'f861a9b4fa1cfe42d343017f3c8914a5'; },
  datatype() { return 'vrep_common/simRosAuxiliaryConsoleOpen'; }
};
