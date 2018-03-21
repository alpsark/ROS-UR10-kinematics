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

class VisionSensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.triggerState = null;
      this.packetData = null;
      this.packetSizes = null;
    }
    else {
      if (initObj.hasOwnProperty('triggerState')) {
        this.triggerState = initObj.triggerState
      }
      else {
        this.triggerState = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('packetData')) {
        this.packetData = initObj.packetData
      }
      else {
        this.packetData = new std_msgs.msg.Float32MultiArray();
      }
      if (initObj.hasOwnProperty('packetSizes')) {
        this.packetSizes = initObj.packetSizes
      }
      else {
        this.packetSizes = new std_msgs.msg.Int32MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionSensorData
    // Serialize message field [triggerState]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.triggerState, buffer, bufferOffset);
    // Serialize message field [packetData]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.packetData, buffer, bufferOffset);
    // Serialize message field [packetSizes]
    bufferOffset = std_msgs.msg.Int32MultiArray.serialize(obj.packetSizes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionSensorData
    let len;
    let data = new VisionSensorData(null);
    // Deserialize message field [triggerState]
    data.triggerState = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [packetData]
    data.packetData = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [packetSizes]
    data.packetSizes = std_msgs.msg.Int32MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.packetData);
    length += std_msgs.msg.Int32MultiArray.getMessageSize(object.packetSizes);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrep_common/VisionSensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2ef61369c5dd779545031da241014b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32 triggerState
    std_msgs/Float32MultiArray packetData
    std_msgs/Int32MultiArray packetSizes
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/Float32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float32[]         data          # array of data
    
    
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
    MSG: std_msgs/Int32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int32[]           data          # array of data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionSensorData(null);
    if (msg.triggerState !== undefined) {
      resolved.triggerState = std_msgs.msg.Int32.Resolve(msg.triggerState)
    }
    else {
      resolved.triggerState = new std_msgs.msg.Int32()
    }

    if (msg.packetData !== undefined) {
      resolved.packetData = std_msgs.msg.Float32MultiArray.Resolve(msg.packetData)
    }
    else {
      resolved.packetData = new std_msgs.msg.Float32MultiArray()
    }

    if (msg.packetSizes !== undefined) {
      resolved.packetSizes = std_msgs.msg.Int32MultiArray.Resolve(msg.packetSizes)
    }
    else {
      resolved.packetSizes = new std_msgs.msg.Int32MultiArray()
    }

    return resolved;
    }
};

module.exports = VisionSensorData;
