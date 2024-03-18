// Auto-generated. Do not edit!

// (in-package msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Proxemic = require('./Proxemic.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.pose = null;
      this.velocity = null;
      this.reliability = null;
      this.tagnames = null;
      this.tags = null;
      this.proxemic = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('reliability')) {
        this.reliability = initObj.reliability
      }
      else {
        this.reliability = 0.0;
      }
      if (initObj.hasOwnProperty('tagnames')) {
        this.tagnames = initObj.tagnames
      }
      else {
        this.tagnames = [];
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
      if (initObj.hasOwnProperty('proxemic')) {
        this.proxemic = initObj.proxemic
      }
      else {
        this.proxemic = new Proxemic();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [reliability]
    bufferOffset = _serializer.float64(obj.reliability, buffer, bufferOffset);
    // Serialize message field [tagnames]
    bufferOffset = _arraySerializer.string(obj.tagnames, buffer, bufferOffset, null);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    // Serialize message field [proxemic]
    bufferOffset = Proxemic.serialize(obj.proxemic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person
    let len;
    let data = new Person(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [reliability]
    data.reliability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tagnames]
    data.tagnames = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [proxemic]
    data.proxemic = Proxemic.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    object.tagnames.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 172;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs/Person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf3f030e63b6c82a38e38bd3144e2e45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string              name
    geometry_msgs/Pose  pose
    geometry_msgs/Point velocity
    float64             reliability
    string[]            tagnames
    string[]            tags
    Proxemic            proxemic
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: msgs/Proxemic
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Person(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Point.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Point()
    }

    if (msg.reliability !== undefined) {
      resolved.reliability = msg.reliability;
    }
    else {
      resolved.reliability = 0.0
    }

    if (msg.tagnames !== undefined) {
      resolved.tagnames = msg.tagnames;
    }
    else {
      resolved.tagnames = []
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    if (msg.proxemic !== undefined) {
      resolved.proxemic = Proxemic.Resolve(msg.proxemic)
    }
    else {
      resolved.proxemic = new Proxemic()
    }

    return resolved;
    }
};

module.exports = Person;
