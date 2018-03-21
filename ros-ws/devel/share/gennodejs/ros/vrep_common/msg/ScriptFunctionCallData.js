// Auto-generated. Do not edit!

// (in-package vrep_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ScriptFunctionCallData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intData = null;
      this.floatData = null;
      this.stringData = null;
      this.bufferData = null;
    }
    else {
      if (initObj.hasOwnProperty('intData')) {
        this.intData = initObj.intData
      }
      else {
        this.intData = new std_msgs.msg.Int32MultiArray();
      }
      if (initObj.hasOwnProperty('floatData')) {
        this.floatData = initObj.floatData
      }
      else {
        this.floatData = new std_msgs.msg.Float32MultiArray();
      }
      if (initObj.hasOwnProperty('stringData')) {
        this.stringData = initObj.stringData
      }
      else {
        this.stringData = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('bufferData')) {
        this.bufferData = initObj.bufferData
      }
      else {
        this.bufferData = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScriptFunctionCallData
    // Serialize message field [intData]
    bufferOffset = std_msgs.msg.Int32MultiArray.serialize(obj.intData, buffer, bufferOffset);
    // Serialize message field [floatData]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.floatData, buffer, bufferOffset);
    // Serialize message field [stringData]
    bufferOffset = std_msgs.msg.String.serialize(obj.stringData, buffer, bufferOffset);
    // Serialize message field [bufferData]
    bufferOffset = std_msgs.msg.String.serialize(obj.bufferData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScriptFunctionCallData
    let len;
    let data = new ScriptFunctionCallData(null);
    // Deserialize message field [intData]
    data.intData = std_msgs.msg.Int32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [floatData]
    data.floatData = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [stringData]
    data.stringData = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [bufferData]
    data.bufferData = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Int32MultiArray.getMessageSize(object.intData);
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.floatData);
    length += std_msgs.msg.String.getMessageSize(object.stringData);
    length += std_msgs.msg.String.getMessageSize(object.bufferData);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrep_common/ScriptFunctionCallData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b1e9358c71aec4e099bb2937a5121eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32MultiArray intData
    std_msgs/Float32MultiArray floatData
    std_msgs/String stringData
    std_msgs/String bufferData
    
    ================================================================================
    MSG: std_msgs/Int32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int32[]           data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    ================================================================================
    MSG: std_msgs/Float32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float32[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScriptFunctionCallData(null);
    if (msg.intData !== undefined) {
      resolved.intData = std_msgs.msg.Int32MultiArray.Resolve(msg.intData)
    }
    else {
      resolved.intData = new std_msgs.msg.Int32MultiArray()
    }

    if (msg.floatData !== undefined) {
      resolved.floatData = std_msgs.msg.Float32MultiArray.Resolve(msg.floatData)
    }
    else {
      resolved.floatData = new std_msgs.msg.Float32MultiArray()
    }

    if (msg.stringData !== undefined) {
      resolved.stringData = std_msgs.msg.String.Resolve(msg.stringData)
    }
    else {
      resolved.stringData = new std_msgs.msg.String()
    }

    if (msg.bufferData !== undefined) {
      resolved.bufferData = std_msgs.msg.String.Resolve(msg.bufferData)
    }
    else {
      resolved.bufferData = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = ScriptFunctionCallData;
