// Auto-generated. Do not edit!

// (in-package jami7095_hw2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class EchoStringRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EchoStringRequest
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EchoStringRequest
    let len;
    let data = new EchoStringRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jami7095_hw2/EchoStringRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '992ce8a1687cec8c8bd883ec73ca41d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EchoStringRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

class EchoStringResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.echo = null;
    }
    else {
      if (initObj.hasOwnProperty('echo')) {
        this.echo = initObj.echo
      }
      else {
        this.echo = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EchoStringResponse
    // Serialize message field [echo]
    bufferOffset = _serializer.string(obj.echo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EchoStringResponse
    let len;
    let data = new EchoStringResponse(null);
    // Deserialize message field [echo]
    data.echo = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.echo);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jami7095_hw2/EchoStringResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b400c66aa51415febf8794970de9eb60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string echo
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EchoStringResponse(null);
    if (msg.echo !== undefined) {
      resolved.echo = msg.echo;
    }
    else {
      resolved.echo = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: EchoStringRequest,
  Response: EchoStringResponse,
  md5sum() { return 'e478228380bb2631fd59d58e07666a92'; },
  datatype() { return 'jami7095_hw2/EchoString'; }
};
