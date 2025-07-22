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

let map_size = require('../msg/map_size.js');

//-----------------------------------------------------------

class MapsListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapsListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapsListRequest
    let len;
    let data = new MapsListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/MapsListRequest';
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
    const resolved = new MapsListRequest(null);
    return resolved;
    }
};

class MapsListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maps = null;
    }
    else {
      if (initObj.hasOwnProperty('maps')) {
        this.maps = initObj.maps
      }
      else {
        this.maps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapsListResponse
    // Serialize message field [maps]
    // Serialize the length for message field [maps]
    bufferOffset = _serializer.uint32(obj.maps.length, buffer, bufferOffset);
    obj.maps.forEach((val) => {
      bufferOffset = map_size.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapsListResponse
    let len;
    let data = new MapsListResponse(null);
    // Deserialize message field [maps]
    // Deserialize array length for message field [maps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.maps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.maps[i] = map_size.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.maps.forEach((val) => {
      length += map_size.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/MapsListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95634a3fee1a76a7a235711f38773ee4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robot_msgs/map_size[] maps
    
    ================================================================================
    MSG: robot_msgs/map_size
    string id
    int32 size
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapsListResponse(null);
    if (msg.maps !== undefined) {
      resolved.maps = new Array(msg.maps.length);
      for (let i = 0; i < resolved.maps.length; ++i) {
        resolved.maps[i] = map_size.Resolve(msg.maps[i]);
      }
    }
    else {
      resolved.maps = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MapsListRequest,
  Response: MapsListResponse,
  md5sum() { return '95634a3fee1a76a7a235711f38773ee4'; },
  datatype() { return 'robot_msgs/MapsList'; }
};
