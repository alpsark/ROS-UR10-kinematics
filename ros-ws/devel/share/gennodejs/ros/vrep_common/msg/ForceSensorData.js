// Auto-generated. Do not edit!

// (in-package vrep_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ForceSensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensorState = null;
      this.force = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('sensorState')) {
        this.sensorState = initObj.sensorState
      }
      else {
        this.sensorState = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceSensorData
    // Serialize message field [sensorState]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.sensorState, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceSensorData
    let len;
    let data = new ForceSensorData(null);
    // Deserialize message field [sensorState]
    data.sensorState = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vrep_common/ForceSensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '975cc3fe659f11cb0dbd06416cff4a10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32 sensorState
    geometry_msgs/Vector3 force
    geometry_msgs/Vector3 torque
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceSensorData(null);
    if (msg.sensorState !== undefined) {
      resolved.sensorState = std_msgs.msg.Int32.Resolve(msg.sensorState)
    }
    else {
      resolved.sensorState = new std_msgs.msg.Int32()
    }

    if (msg.force !== undefined) {
      resolved.force = geometry_msgs.msg.Vector3.Resolve(msg.force)
    }
    else {
      resolved.force = new geometry_msgs.msg.Vector3()
    }

    if (msg.torque !== undefined) {
      resolved.torque = geometry_msgs.msg.Vector3.Resolve(msg.torque)
    }
    else {
      resolved.torque = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = ForceSensorData;
