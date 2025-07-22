// Auto-generated. Do not edit!

// (in-package controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DatosControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linearVel = null;
      this.angularVel = null;
      this.angle = null;
      this.x = null;
      this.xd = null;
      this.y = null;
      this.yd = null;
      this.ex = null;
      this.ey = null;
      this.evx = null;
      this.evy = null;
      this.eT = null;
    }
    else {
      if (initObj.hasOwnProperty('linearVel')) {
        this.linearVel = initObj.linearVel
      }
      else {
        this.linearVel = 0.0;
      }
      if (initObj.hasOwnProperty('angularVel')) {
        this.angularVel = initObj.angularVel
      }
      else {
        this.angularVel = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('xd')) {
        this.xd = initObj.xd
      }
      else {
        this.xd = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('yd')) {
        this.yd = initObj.yd
      }
      else {
        this.yd = 0.0;
      }
      if (initObj.hasOwnProperty('ex')) {
        this.ex = initObj.ex
      }
      else {
        this.ex = 0.0;
      }
      if (initObj.hasOwnProperty('ey')) {
        this.ey = initObj.ey
      }
      else {
        this.ey = 0.0;
      }
      if (initObj.hasOwnProperty('evx')) {
        this.evx = initObj.evx
      }
      else {
        this.evx = 0.0;
      }
      if (initObj.hasOwnProperty('evy')) {
        this.evy = initObj.evy
      }
      else {
        this.evy = 0.0;
      }
      if (initObj.hasOwnProperty('eT')) {
        this.eT = initObj.eT
      }
      else {
        this.eT = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DatosControl
    // Serialize message field [linearVel]
    bufferOffset = _serializer.float64(obj.linearVel, buffer, bufferOffset);
    // Serialize message field [angularVel]
    bufferOffset = _serializer.float64(obj.angularVel, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [xd]
    bufferOffset = _serializer.float64(obj.xd, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [yd]
    bufferOffset = _serializer.float64(obj.yd, buffer, bufferOffset);
    // Serialize message field [ex]
    bufferOffset = _serializer.float64(obj.ex, buffer, bufferOffset);
    // Serialize message field [ey]
    bufferOffset = _serializer.float64(obj.ey, buffer, bufferOffset);
    // Serialize message field [evx]
    bufferOffset = _serializer.float64(obj.evx, buffer, bufferOffset);
    // Serialize message field [evy]
    bufferOffset = _serializer.float64(obj.evy, buffer, bufferOffset);
    // Serialize message field [eT]
    bufferOffset = _serializer.float64(obj.eT, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DatosControl
    let len;
    let data = new DatosControl(null);
    // Deserialize message field [linearVel]
    data.linearVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angularVel]
    data.angularVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xd]
    data.xd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yd]
    data.yd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ex]
    data.ex = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ey]
    data.ey = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [evx]
    data.evx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [evy]
    data.evy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [eT]
    data.eT = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller/DatosControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '837132ccf45cf52b00c57285b91233c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 linearVel
    float64 angularVel
    float64 angle
    float64 x
    float64 xd
    float64 y
    float64 yd
    float64 ex
    float64 ey
    float64 evx
    float64 evy
    float64 eT
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DatosControl(null);
    if (msg.linearVel !== undefined) {
      resolved.linearVel = msg.linearVel;
    }
    else {
      resolved.linearVel = 0.0
    }

    if (msg.angularVel !== undefined) {
      resolved.angularVel = msg.angularVel;
    }
    else {
      resolved.angularVel = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.xd !== undefined) {
      resolved.xd = msg.xd;
    }
    else {
      resolved.xd = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.yd !== undefined) {
      resolved.yd = msg.yd;
    }
    else {
      resolved.yd = 0.0
    }

    if (msg.ex !== undefined) {
      resolved.ex = msg.ex;
    }
    else {
      resolved.ex = 0.0
    }

    if (msg.ey !== undefined) {
      resolved.ey = msg.ey;
    }
    else {
      resolved.ey = 0.0
    }

    if (msg.evx !== undefined) {
      resolved.evx = msg.evx;
    }
    else {
      resolved.evx = 0.0
    }

    if (msg.evy !== undefined) {
      resolved.evy = msg.evy;
    }
    else {
      resolved.evy = 0.0
    }

    if (msg.eT !== undefined) {
      resolved.eT = msg.eT;
    }
    else {
      resolved.eT = 0.0
    }

    return resolved;
    }
};

module.exports = DatosControl;
