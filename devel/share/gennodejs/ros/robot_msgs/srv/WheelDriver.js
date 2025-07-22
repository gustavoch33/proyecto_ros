// Auto-generated. Do not edit!

// (in-package robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class WheelDriverRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.todo = null;
    }
    else {
      if (initObj.hasOwnProperty('todo')) {
        this.todo = initObj.todo
      }
      else {
        this.todo = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelDriverRequest
    // Serialize message field [todo]
    bufferOffset = _serializer.string(obj.todo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelDriverRequest
    let len;
    let data = new WheelDriverRequest(null);
    // Deserialize message field [todo]
    data.todo = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.todo);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/WheelDriverRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be1abb59c2cee549ceeef382c8158a41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string todo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelDriverRequest(null);
    if (msg.todo !== undefined) {
      resolved.todo = msg.todo;
    }
    else {
      resolved.todo = ''
    }

    return resolved;
    }
};

class WheelDriverResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelDriverResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelDriverResponse
    let len;
    let data = new WheelDriverResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/WheelDriverResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelDriverResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: WheelDriverRequest,
  Response: WheelDriverResponse,
  md5sum() { return 'fa35b3456e4cbe35bdeeb16d2d0d52eb'; },
  datatype() { return 'robot_msgs/WheelDriver'; }
};
