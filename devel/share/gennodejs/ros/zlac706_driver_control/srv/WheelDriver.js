// Auto-generated. Do not edit!

// (in-package zlac706_driver_control.srv)


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
      this.rueda = null;
    }
    else {
      if (initObj.hasOwnProperty('rueda')) {
        this.rueda = initObj.rueda
      }
      else {
        this.rueda = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelDriverRequest
    // Serialize message field [rueda]
    bufferOffset = _serializer.string(obj.rueda, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelDriverRequest
    let len;
    let data = new WheelDriverRequest(null);
    // Deserialize message field [rueda]
    data.rueda = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.rueda);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zlac706_driver_control/WheelDriverRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee23d24ce8168530aa0a49928ec1a2da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string rueda
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelDriverRequest(null);
    if (msg.rueda !== undefined) {
      resolved.rueda = msg.rueda;
    }
    else {
      resolved.rueda = ''
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
    return 'zlac706_driver_control/WheelDriverResponse';
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
  md5sum() { return '3ee118de48c6d49aa063a6db9c3e1ac0'; },
  datatype() { return 'zlac706_driver_control/WheelDriver'; }
};
