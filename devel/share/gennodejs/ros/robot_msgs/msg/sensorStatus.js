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

class sensorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_ok = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('is_ok')) {
        this.is_ok = initObj.is_ok
      }
      else {
        this.is_ok = false;
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
    // Serializes a message object of type sensorStatus
    // Serialize message field [is_ok]
    bufferOffset = _serializer.bool(obj.is_ok, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.string(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensorStatus
    let len;
    let data = new sensorStatus(null);
    // Deserialize message field [is_ok]
    data.is_ok = _deserializer.bool(buffer, bufferOffset);
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
    return 'robot_msgs/sensorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '608c2e6bc29e45e2dc4f580fdae4997b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_ok
    string error
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sensorStatus(null);
    if (msg.is_ok !== undefined) {
      resolved.is_ok = msg.is_ok;
    }
    else {
      resolved.is_ok = false
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

module.exports = sensorStatus;
