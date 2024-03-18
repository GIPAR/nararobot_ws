;; Auto-generated. Do not edit!


(when (boundp 'msgs::Proxemic)
  (if (not (find-package "MSGS"))
    (make-package "MSGS"))
  (shadow 'Proxemic (find-package "MSGS")))
(unless (find-package "MSGS::PROXEMIC")
  (make-package "MSGS::PROXEMIC"))

(in-package "ROS")
;;//! \htmlinclude Proxemic.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass msgs::Proxemic
  :super ros::object
  :slots (_centerShift _spread _rotation _freeBorder _lethalBorder ))

(defmethod msgs::Proxemic
  (:init
   (&key
    ((:centerShift __centerShift) (instance geometry_msgs::Point :init))
    ((:spread __spread) (instance geometry_msgs::Point :init))
    ((:rotation __rotation) 0.0)
    ((:freeBorder __freeBorder) 0)
    ((:lethalBorder __lethalBorder) 0)
    )
   (send-super :init)
   (setq _centerShift __centerShift)
   (setq _spread __spread)
   (setq _rotation (float __rotation))
   (setq _freeBorder (round __freeBorder))
   (setq _lethalBorder (round __lethalBorder))
   self)
  (:centerShift
   (&rest __centerShift)
   (if (keywordp (car __centerShift))
       (send* _centerShift __centerShift)
     (progn
       (if __centerShift (setq _centerShift (car __centerShift)))
       _centerShift)))
  (:spread
   (&rest __spread)
   (if (keywordp (car __spread))
       (send* _spread __spread)
     (progn
       (if __spread (setq _spread (car __spread)))
       _spread)))
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:freeBorder
   (&optional __freeBorder)
   (if __freeBorder (setq _freeBorder __freeBorder)) _freeBorder)
  (:lethalBorder
   (&optional __lethalBorder)
   (if __lethalBorder (setq _lethalBorder __lethalBorder)) _lethalBorder)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _centerShift
    (send _centerShift :serialization-length)
    ;; geometry_msgs/Point _spread
    (send _spread :serialization-length)
    ;; float64 _rotation
    8
    ;; int64 _freeBorder
    8
    ;; int64 _lethalBorder
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _centerShift
       (send _centerShift :serialize s)
     ;; geometry_msgs/Point _spread
       (send _spread :serialize s)
     ;; float64 _rotation
       (sys::poke _rotation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _freeBorder
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _freeBorder (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _freeBorder) (= (length (_freeBorder . bv)) 2)) ;; bignum
              (write-long (ash (elt (_freeBorder . bv) 0) 0) s)
              (write-long (ash (elt (_freeBorder . bv) 1) -1) s))
             ((and (class _freeBorder) (= (length (_freeBorder . bv)) 1)) ;; big1
              (write-long (elt (_freeBorder . bv) 0) s)
              (write-long (if (>= _freeBorder 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _freeBorder s)(write-long (if (>= _freeBorder 0) 0 #xffffffff) s)))
     ;; int64 _lethalBorder
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lethalBorder (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lethalBorder) (= (length (_lethalBorder . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lethalBorder . bv) 0) 0) s)
              (write-long (ash (elt (_lethalBorder . bv) 1) -1) s))
             ((and (class _lethalBorder) (= (length (_lethalBorder . bv)) 1)) ;; big1
              (write-long (elt (_lethalBorder . bv) 0) s)
              (write-long (if (>= _lethalBorder 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lethalBorder s)(write-long (if (>= _lethalBorder 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _centerShift
     (send _centerShift :deserialize buf ptr-) (incf ptr- (send _centerShift :serialization-length))
   ;; geometry_msgs/Point _spread
     (send _spread :deserialize buf ptr-) (incf ptr- (send _spread :serialization-length))
   ;; float64 _rotation
     (setq _rotation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _freeBorder
#+(or :alpha :irix6 :x86_64)
      (setf _freeBorder (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _freeBorder (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _lethalBorder
#+(or :alpha :irix6 :x86_64)
      (setf _lethalBorder (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lethalBorder (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get msgs::Proxemic :md5sum-) "68ac8bece4ff23821fe260913c03d51e")
(setf (get msgs::Proxemic :datatype-) "msgs/Proxemic")
(setf (get msgs::Proxemic :definition-)
      "# shift of the center of the proxemics (shift of Gauss)
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

")



(provide :msgs/Proxemic "68ac8bece4ff23821fe260913c03d51e")


