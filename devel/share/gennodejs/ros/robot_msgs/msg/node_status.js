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

class node_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_alive = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('is_alive')) {
        this.is_alive = initObj.is_alive
      }
      else {
        this.is_alive = false;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_status
    // Serialize message field [is_alive]
    bufferOffset = _serializer.bool(obj.is_alive, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.string(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_status
    let len;
    let data = new node_status(null);
    // Deserialize message field [is_alive]
    data.is_alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/node_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60775c3db7f51fcb9474847c3de8c5da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_alive
    string error
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_status(null);
    if (msg.is_alive !== undefined) {
      resolved.is_alive = msg.is_alive;
    }
    else {
      resolved.is_alive = false
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = ''
    }

    return resolved;
    }
};

module.exports = node_status;
