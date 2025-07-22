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

class RelayRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.relevador = null;
    }
    else {
      if (initObj.hasOwnProperty('relevador')) {
        this.relevador = initObj.relevador
      }
      else {
        this.relevador = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelayRequest
    // Serialize message field [relevador]
    bufferOffset = _serializer.int8(obj.relevador, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelayRequest
    let len;
    let data = new RelayRequest(null);
    // Deserialize message field [relevador]
    data.relevador = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/RelayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f5d86e098458f7b4dffed657a0c9cb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 relevador
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelayRequest(null);
    if (msg.relevador !== undefined) {
      resolved.relevador = msg.relevador;
    }
    else {
      resolved.relevador = 0
    }

    return resolved;
    }
};

class RelayResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.description = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelayResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelayResponse
    let len;
    let data = new RelayResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status);
    length += _getByteLength(object.description);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/RelayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d07d9e098ba771032b3d0a3e6050eb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    string description
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelayResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RelayRequest,
  Response: RelayResponse,
  md5sum() { return '3f2a44b2fa1cd7db6632dacb1c985817'; },
  datatype() { return 'robot_msgs/Relay'; }
};
