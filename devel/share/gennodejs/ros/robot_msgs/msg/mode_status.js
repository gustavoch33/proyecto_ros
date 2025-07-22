// Auto-generated. Do not edit!

// (in-package robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mode_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.docking = null;
      this.manual = null;
      this.navigation = null;
      this.mapping = null;
      this.stand_by = null;
    }
    else {
      if (initObj.hasOwnProperty('docking')) {
        this.docking = initObj.docking
      }
      else {
        this.docking = false;
      }
      if (initObj.hasOwnProperty('manual')) {
        this.manual = initObj.manual
      }
      else {
        this.manual = false;
      }
      if (initObj.hasOwnProperty('navigation')) {
        this.navigation = initObj.navigation
      }
      else {
        this.navigation = false;
      }
      if (initObj.hasOwnProperty('mapping')) {
        this.mapping = initObj.mapping
      }
      else {
        this.mapping = false;
      }
      if (initObj.hasOwnProperty('stand_by')) {
        this.stand_by = initObj.stand_by
      }
      else {
        this.stand_by = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mode_status
    // Serialize message field [docking]
    bufferOffset = _serializer.bool(obj.docking, buffer, bufferOffset);
    // Serialize message field [manual]
    bufferOffset = _serializer.bool(obj.manual, buffer, bufferOffset);
    // Serialize message field [navigation]
    bufferOffset = _serializer.bool(obj.navigation, buffer, bufferOffset);
    // Serialize message field [mapping]
    bufferOffset = _serializer.bool(obj.mapping, buffer, bufferOffset);
    // Serialize message field [stand_by]
    bufferOffset = _serializer.bool(obj.stand_by, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mode_status
    let len;
    let data = new mode_status(null);
    // Deserialize message field [docking]
    data.docking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [manual]
    data.manual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [navigation]
    data.navigation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mapping]
    data.mapping = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stand_by]
    data.stand_by = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/mode_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '401e19daf4dfa2be65d1fcd32ec6dd29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool docking
    bool manual
    bool navigation
    bool mapping
    bool stand_by
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mode_status(null);
    if (msg.docking !== undefined) {
      resolved.docking = msg.docking;
    }
    else {
      resolved.docking = false
    }

    if (msg.manual !== undefined) {
      resolved.manual = msg.manual;
    }
    else {
      resolved.manual = false
    }

    if (msg.navigation !== undefined) {
      resolved.navigation = msg.navigation;
    }
    else {
      resolved.navigation = false
    }

    if (msg.mapping !== undefined) {
      resolved.mapping = msg.mapping;
    }
    else {
      resolved.mapping = false
    }

    if (msg.stand_by !== undefined) {
      resolved.stand_by = msg.stand_by;
    }
    else {
      resolved.stand_by = false
    }

    return resolved;
    }
};

module.exports = mode_status;
