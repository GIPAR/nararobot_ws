; Auto-generated. Do not edit!


(cl:in-package msgs-msg)


;//! \htmlinclude Proxemic.msg.html

(cl:defclass <Proxemic> (roslisp-msg-protocol:ros-message)
  ((centerShift
    :reader centerShift
    :initarg :centerShift
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (spread
    :reader spread
    :initarg :spread
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rotation
    :reader rotation
    :initarg :rotation
    :type cl:float
    :initform 0.0)
   (freeBorder
    :reader freeBorder
    :initarg :freeBorder
    :type cl:integer
    :initform 0)
   (lethalBorder
    :reader lethalBorder
    :initarg :lethalBorder
    :type cl:integer
    :initform 0))
)

(cl:defclass Proxemic (<Proxemic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Proxemic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Proxemic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs-msg:<Proxemic> is deprecated: use msgs-msg:Proxemic instead.")))

(cl:ensure-generic-function 'centerShift-val :lambda-list '(m))
(cl:defmethod centerShift-val ((m <Proxemic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs-msg:centerShift-val is deprecated.  Use msgs-msg:centerShift instead.")
  (centerShift m))

(cl:ensure-generic-function 'spread-val :lambda-list '(m))
(cl:defmethod spread-val ((m <Proxemic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs-msg:spread-val is deprecated.  Use msgs-msg:spread instead.")
  (spread m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <Proxemic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs-msg:rotation-val is deprecated.  Use msgs-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'freeBorder-val :lambda-list '(m))
(cl:defmethod freeBorder-val ((m <Proxemic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs-msg:freeBorder-val is deprecated.  Use msgs-msg:freeBorder instead.")
  (freeBorder m))

(cl:ensure-generic-function 'lethalBorder-val :lambda-list '(m))
(cl:defmethod lethalBorder-val ((m <Proxemic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs-msg:lethalBorder-val is deprecated.  Use msgs-msg:lethalBorder instead.")
  (lethalBorder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Proxemic>) ostream)
  "Serializes a message object of type '<Proxemic>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centerShift) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spread) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'freeBorder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lethalBorder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Proxemic>) istream)
  "Deserializes a message object of type '<Proxemic>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centerShift) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spread) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotation) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'freeBorder) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lethalBorder) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Proxemic>)))
  "Returns string type for a message object of type '<Proxemic>"
  "msgs/Proxemic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Proxemic)))
  "Returns string type for a message object of type 'Proxemic"
  "msgs/Proxemic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Proxemic>)))
  "Returns md5sum for a message object of type '<Proxemic>"
  "68ac8bece4ff23821fe260913c03d51e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Proxemic)))
  "Returns md5sum for a message object of type 'Proxemic"
  "68ac8bece4ff23821fe260913c03d51e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Proxemic>)))
  "Returns full string definition for message of type '<Proxemic>"
  (cl:format cl:nil "# shift of the center of the proxemics (shift of Gauss)~%geometry_msgs/Point centerShift~%# spread of ~%geometry_msgs/Point spread~%# rotation of proxemics (rotation of Gauss)~%float64 rotation~%# min cost to get in costmaps~%int64 freeBorder~%# max cost that does not count as lethal obstacle~%int64 lethalBorder~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Proxemic)))
  "Returns full string definition for message of type 'Proxemic"
  (cl:format cl:nil "# shift of the center of the proxemics (shift of Gauss)~%geometry_msgs/Point centerShift~%# spread of ~%geometry_msgs/Point spread~%# rotation of proxemics (rotation of Gauss)~%float64 rotation~%# min cost to get in costmaps~%int64 freeBorder~%# max cost that does not count as lethal obstacle~%int64 lethalBorder~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Proxemic>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centerShift))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spread))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Proxemic>))
  "Converts a ROS message object to a list"
  (cl:list 'Proxemic
    (cl:cons ':centerShift (centerShift msg))
    (cl:cons ':spread (spread msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':freeBorder (freeBorder msg))
    (cl:cons ':lethalBorder (lethalBorder msg))
))
