// Auto-generated. Do not edit!

// (in-package msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Proxemic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centerShift = null;
      this.spread = null;
      this.rotation = null;
      this.freeBorder = null;
      this.lethalBorder = null;
    }
    else {
      if (initObj.hasOwnProperty('centerShift')) {
        this.centerShift = initObj.centerShift
      }
      else {
        this.centerShift = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('spread')) {
        this.spread = initObj.spread
      }
      else {
        this.spread = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = 0.0;
      }
      if (initObj.hasOwnProperty('freeBorder')) {
        this.freeBorder = initObj.freeBorder
      }
      else {
        this.freeBorder = 0;
      }
      if (initObj.hasOwnProperty('lethalBorder')) {
        this.lethalBorder = initObj.lethalBorder
      }
      else {
        this.lethalBorder = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Proxemic
    // Serialize message field [centerShift]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.centerShift, buffer, bufferOffset);
    // Serialize message field [spread]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.spread, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = _serializer.float64(obj.rotation, buffer, bufferOffset);
    // Serialize message field [freeBorder]
    bufferOffset = _serializer.int64(obj.freeBorder, buffer, bufferOffset);
    // Serialize message field [lethalBorder]
    bufferOffset = _serializer.int64(obj.lethalBorder, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Proxemic
    let len;
    let data = new Proxemic(null);
    // Deserialize message field [centerShift]
    data.centerShift = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [spread]
    data.spread = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [freeBorder]
    data.freeBorder = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [lethalBorder]
    data.lethalBorder = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs/Proxemic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68ac8bece4ff23821fe260913c03d51e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # shift of the center of the proxemics (shift of Gauss)
    geometry_msgs/Point centerShift
    # spread of 
    geometry_msgs/Point spread
    # rotation of proxemics (rotation of Gauss)
    float64 rotation
    # min cost to get in costmaps
    int64 freeBorder
    # max cost that does not count as lethal obstacle
    int64 lethalBorder
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Proxemic(null);
    if (msg.centerShift !== undefined) {
      resolved.centerShift = geometry_msgs.msg.Point.Resolve(msg.centerShift)
    }
    else {
      resolved.centerShift = new geometry_msgs.msg.Point()
    }

    if (msg.spread !== undefined) {
      resolved.spread = geometry_msgs.msg.Point.Resolve(msg.spread)
    }
    else {
      resolved.spread = new geometry_msgs.msg.Point()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = 0.0
    }

    if (msg.freeBorder !== undefined) {
      resolved.freeBorder = msg.freeBorder;
    }
    else {
      resolved.freeBorder = 0
    }

    if (msg.lethalBorder !== undefined) {
      resolved.lethalBorder = msg.lethalBorder;
    }
    else {
      resolved.lethalBorder = 0
    }

    return resolved;
    }
};

module.exports = Proxemic;
