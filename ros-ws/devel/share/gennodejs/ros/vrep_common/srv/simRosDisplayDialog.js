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

class simRosDisplayDialogRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.titleText = null;
      this.mainText = null;
      this.dialogType = null;
      this.initialText = null;
      this.titleColors = null;
      this.dialogColors = null;
    }
    else {
      if (initObj.hasOwnProperty('titleText')) {
        this.titleText = initObj.titleText
      }
      else {
        this.titleText = '';
      }
      if (initObj.hasOwnProperty('mainText')) {
        this.mainText = initObj.mainText
      }
      else {
        this.mainText = '';
      }
      if (initObj.hasOwnProperty('dialogType')) {
        this.dialogType = initObj.dialogType
      }
      else {
        this.dialogType = 0;
      }
      if (initObj.hasOwnProperty('initialText')) {
        this.initialText = initObj.initialText
      }
      else {
        this.initialText = '';
      }
      if (initObj.hasOwnProperty('titleColors')) {
        this.titleColors = initObj.titleColors
      }
      else {
        this.titleColors = [];
      }
      if (initObj.hasOwnProperty('dialogColors')) {
        this.dialogColors = initObj.dialogColors
      }
      else {
        this.dialogColors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosDisplayDialogRequest
    // Serialize message field [titleText]
    bufferOffset = _serializer.string(obj.titleText, buffer, bufferOffset);
    // Serialize message field [mainText]
    bufferOffset = _serializer.string(obj.mainText, buffer, bufferOffset);
    // Serialize message field [dialogType]
    bufferOffset = _serializer.int32(obj.dialogType, buffer, bufferOffset);
    // Serialize message field [initialText]
    bufferOffset = _serializer.string(obj.initialText, buffer, bufferOffset);
    // Serialize message field [titleColors]
    bufferOffset = _arraySerializer.float32(obj.titleColors, buffer, bufferOffset, null);
    // Serialize message field [dialogColors]
    bufferOffset = _arraySerializer.float32(obj.dialogColors, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosDisplayDialogRequest
    let len;
    let data = new simRosDisplayDialogRequest(null);
    // Deserialize message field [titleText]
    data.titleText = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mainText]
    data.mainText = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dialogType]
    data.dialogType = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [initialText]
    data.initialText = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [titleColors]
    data.titleColors = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [dialogColors]
    data.dialogColors = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.titleText.length;
    length += object.mainText.length;
    length += object.initialText.length;
    length += 4 * object.titleColors.length;
    length += 4 * object.dialogColors.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosDisplayDialogRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f2ff91d637ffb37230ccc9727e2857e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string titleText
    string mainText
    int32 dialogType
    string initialText
    float32[] titleColors
    float32[] dialogColors
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosDisplayDialogRequest(null);
    if (msg.titleText !== undefined) {
      resolved.titleText = msg.titleText;
    }
    else {
      resolved.titleText = ''
    }

    if (msg.mainText !== undefined) {
      resolved.mainText = msg.mainText;
    }
    else {
      resolved.mainText = ''
    }

    if (msg.dialogType !== undefined) {
      resolved.dialogType = msg.dialogType;
    }
    else {
      resolved.dialogType = 0
    }

    if (msg.initialText !== undefined) {
      resolved.initialText = msg.initialText;
    }
    else {
      resolved.initialText = ''
    }

    if (msg.titleColors !== undefined) {
      resolved.titleColors = msg.titleColors;
    }
    else {
      resolved.titleColors = []
    }

    if (msg.dialogColors !== undefined) {
      resolved.dialogColors = msg.dialogColors;
    }
    else {
      resolved.dialogColors = []
    }

    return resolved;
    }
};

class simRosDisplayDialogResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dialogHandle = null;
      this.uiHandle = null;
    }
    else {
      if (initObj.hasOwnProperty('dialogHandle')) {
        this.dialogHandle = initObj.dialogHandle
      }
      else {
        this.dialogHandle = 0;
      }
      if (initObj.hasOwnProperty('uiHandle')) {
        this.uiHandle = initObj.uiHandle
      }
      else {
        this.uiHandle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simRosDisplayDialogResponse
    // Serialize message field [dialogHandle]
    bufferOffset = _serializer.int32(obj.dialogHandle, buffer, bufferOffset);
    // Serialize message field [uiHandle]
    bufferOffset = _serializer.int32(obj.uiHandle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simRosDisplayDialogResponse
    let len;
    let data = new simRosDisplayDialogResponse(null);
    // Deserialize message field [dialogHandle]
    data.dialogHandle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [uiHandle]
    data.uiHandle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vrep_common/simRosDisplayDialogResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ccb73bed17cccbeda47eabda11f7b01f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 dialogHandle
    int32 uiHandle
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simRosDisplayDialogResponse(null);
    if (msg.dialogHandle !== undefined) {
      resolved.dialogHandle = msg.dialogHandle;
    }
    else {
      resolved.dialogHandle = 0
    }

    if (msg.uiHandle !== undefined) {
      resolved.uiHandle = msg.uiHandle;
    }
    else {
      resolved.uiHandle = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simRosDisplayDialogRequest,
  Response: simRosDisplayDialogResponse,
  md5sum() { return '948197fff5a2d242998cebb95fb8cae1'; },
  datatype() { return 'vrep_common/simRosDisplayDialog'; }
};
