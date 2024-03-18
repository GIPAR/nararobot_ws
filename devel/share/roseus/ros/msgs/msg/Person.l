;; Auto-generated. Do not edit!


(when (boundp 'msgs::Person)
  (if (not (find-package "MSGS"))
    (make-package "MSGS"))
  (shadow 'Person (find-package "MSGS")))
(unless (find-package "MSGS::PERSON")
  (make-package "MSGS::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass msgs::Person
  :super ros::object
  :slots (_name _pose _velocity _reliability _tagnames _tags _proxemic ))

(defmethod msgs::Person
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:velocity __velocity) (instance geometry_msgs::Point :init))
    ((:reliability __reliability) 0.0)
    ((:tagnames __tagnames) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:proxemic __proxemic) (instance msgs::Proxemic :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _reliability (float __reliability))
   (setq _tagnames __tagnames)
   (setq _tags __tags)
   (setq _proxemic __proxemic)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:reliability
   (&optional __reliability)
   (if __reliability (setq _reliability __reliability)) _reliability)
  (:tagnames
   (&optional __tagnames)
   (if __tagnames (setq _tagnames __tagnames)) _tagnames)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:proxemic
   (&rest __proxemic)
   (if (keywordp (car __proxemic))
       (send* _proxemic __proxemic)
     (progn
       (if __proxemic (setq _proxemic (car __proxemic)))
       _proxemic)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Point _velocity
    (send _velocity :serialization-length)
    ;; float64 _reliability
    8
    ;; string[] _tagnames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tagnames)) 4
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; msgs/Proxemic _proxemic
    (send _proxemic :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Point _velocity
       (send _velocity :serialize s)
     ;; float64 _reliability
       (sys::poke _reliability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _tagnames
     (write-long (length _tagnames) s)
     (dolist (elem _tagnames)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; msgs/Proxemic _proxemic
       (send _proxemic :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Point _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _reliability
     (setq _reliability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _tagnames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tagnames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tagnames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; msgs/Proxemic _proxemic
     (send _proxemic :deserialize buf ptr-) (incf ptr- (send _proxemic :serialization-length))
   ;;
   self)
  )

(setf (get msgs::Person :md5sum-) "bf3f030e63b6c82a38e38bd3144e2e45")
(setf (get msgs::Person :datatype-) "msgs/Person")
(setf (get msgs::Person :definition-)
      "string              name
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



(provide :msgs/Person "bf3f030e63b6c82a38e38bd3144e2e45")


