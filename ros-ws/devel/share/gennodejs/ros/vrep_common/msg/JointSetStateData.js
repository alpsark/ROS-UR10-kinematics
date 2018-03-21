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

class JointSetStateData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handles = null;
      this.setModes = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('handles')) {
        this.handles = initObj.handles
      }
      else {
        this.handles = new std_msgs.msg.Int32MultiArray();
      }
      if (initObj.hasOwnProperty('setModes')) {
        this.setModes = initObj.setModes
      }
      else {
        this.setModes = new std_msgs.msg.UInt8MultiArray();
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = new std_msgs.msg.Float32MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSetStateData
    // Serialize message field [handles]
    bufferOffset = std_msgs.msg.Int32MultiArray.serialize(obj.handles, buffer, bufferOffset);
    // Serialize message field [setModes]
    bufferOffset = std_msgs.msg.UInt8MultiArray.serialize(obj.setModes, buffer, bufferOffset);
    // Serialize message field [values]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.values, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSetStateData
    let len;
    let data = new JointSetStateData(null);
    // Deserialize message field [handles]
    data.handles = std_msgs.msg.Int32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [setModes]
    data.setModes = std_msgs.msg.UInt8MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [values]
    data.values = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Int32MultiArray.getMessageSize(object.handles);
    length += std_msgs.msg.UInt8MultiArray.getMessageSize(object.setModes);
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.values);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrep_common/JointSetStateData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd1161cd602435f02e226bb73e4acdb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32MultiArray handles
    std_msgs/UInt8MultiArray setModes
    std_msgs/Float32MultiArray values
    
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
    MSG: std_msgs/UInt8MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    uint8[]           data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/Float32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float32[]         data          # array of data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointSetStateData(null);
    if (msg.handles !== undefined) {
      resolved.handles = std_msgs.msg.Int32MultiArray.Resolve(msg.handles)
    }
    else {
      resolved.handles = new std_msgs.msg.Int32MultiArray()
    }

    if (msg.setModes !== undefined) {
      resolved.setModes = std_msgs.msg.UInt8MultiArray.Resolve(msg.setModes)
    }
    else {
      resolved.setModes = new std_msgs.msg.UInt8MultiArray()
    }

    if (msg.values !== undefined) {
      resolved.values = std_msgs.msg.Float32MultiArray.Resolve(msg.values)
    }
    else {
      resolved.values = new std_msgs.msg.Float32MultiArray()
    }

    return resolved;
    }
};

module.exports = JointSetStateData;
