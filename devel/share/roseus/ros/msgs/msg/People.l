;; Auto-generated. Do not edit!


(when (boundp 'msgs::People)
  (if (not (find-package "MSGS"))
    (make-package "MSGS"))
  (shadow 'People (find-package "MSGS")))
(unless (find-package "MSGS::PEOPLE")
  (make-package "MSGS::PEOPLE"))

(in-package "ROS")
;;//! \htmlinclude People.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs::People
  :super ros::object
  :slots (_header _people ))

(defmethod msgs::People
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:people __people) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _people __people)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; msgs/Person[] _people
    (apply #'+ (send-all _people :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; msgs/Person[] _people
     (write-long (length _people) s)
     (dolist (elem _people)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; msgs/Person[] _people
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _people (let (r) (dotimes (i n) (push (instance msgs::Person :init) r)) r))
     (dolist (elem- _people)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get msgs::People :md5sum-) "95b48de870826c96ff3a6c908f73255b")
(setf (get msgs::People :datatype-) "msgs/People")
(setf (get msgs::People :definition-)
      "Header header
Person[] people

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: msgs/Person
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

")



(provide :msgs/People "95b48de870826c96ff3a6c908f73255b")


