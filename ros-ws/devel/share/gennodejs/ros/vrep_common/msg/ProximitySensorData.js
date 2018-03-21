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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ProximitySensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detectedPoint = null;
      this.detectedObject = null;
      this.normalVector = null;
    }
    else {
      if (initObj.hasOwnProperty('detectedPoint')) {
        this.detectedPoint = initObj.detectedPoint
      }
      else {
        this.detectedPoint = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('detectedObject')) {
        this.detectedObject = initObj.detectedObject
      }
      else {
        this.detectedObject = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('normalVector')) {
        this.normalVector = initObj.normalVector
      }
      else {
        this.normalVector = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProximitySensorData
    // Serialize message field [detectedPoint]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.detectedPoint, buffer, bufferOffset);
    // Serialize message field [detectedObject]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.detectedObject, buffer, bufferOffset);
    // Serialize message field [normalVector]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.normalVector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProximitySensorData
    let len;
    let data = new ProximitySensorData(null);
    // Deserialize message field [detectedPoint]
    data.detectedPoint = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [detectedObject]
    data.detectedObject = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [normalVector]
    data.normalVector = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrep_common/ProximitySensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca4cef31bef118238b22d9d3bc7e3089';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point32 detectedPoint
    std_msgs/Int32 detectedObject
    geometry_msgs/Point32 normalVector
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProximitySensorData(null);
    if (msg.detectedPoint !== undefined) {
      resolved.detectedPoint = geometry_msgs.msg.Point32.Resolve(msg.detectedPoint)
    }
    else {
      resolved.detectedPoint = new geometry_msgs.msg.Point32()
    }

    if (msg.detectedObject !== undefined) {
      resolved.detectedObject = std_msgs.msg.Int32.Resolve(msg.detectedObject)
    }
    else {
      resolved.detectedObject = new std_msgs.msg.Int32()
    }

    if (msg.normalVector !== undefined) {
      resolved.normalVector = geometry_msgs.msg.Point32.Resolve(msg.normalVector)
    }
    else {
      resolved.normalVector = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = ProximitySensorData;
