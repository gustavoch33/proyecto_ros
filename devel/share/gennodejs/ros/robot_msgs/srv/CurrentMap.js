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

class CurrentMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentMapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentMapRequest
    let len;
    let data = new CurrentMapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/CurrentMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentMapRequest(null);
    return resolved;
    }
};

class CurrentMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentMapResponse
    // Serialize message field [map]
    bufferOffset = _serializer.string(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentMapResponse
    let len;
    let data = new CurrentMapResponse(null);
    // Deserialize message field [map]
    data.map = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/CurrentMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa8aee7f6c8d5b8306117b46af679744';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentMapResponse(null);
    if (msg.map !== undefined) {
      resolved.map = msg.map;
    }
    else {
      resolved.map = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CurrentMapRequest,
  Response: CurrentMapResponse,
  md5sum() { return 'aa8aee7f6c8d5b8306117b46af679744'; },
  datatype() { return 'robot_msgs/CurrentMap'; }
};
