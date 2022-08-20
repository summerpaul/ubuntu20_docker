;; Auto-generated. Do not edit!


(when (boundp 'autoware_planning_msgs::PathPointWithLaneId)
  (if (not (find-package "AUTOWARE_PLANNING_MSGS"))
    (make-package "AUTOWARE_PLANNING_MSGS"))
  (shadow 'PathPointWithLaneId (find-package "AUTOWARE_PLANNING_MSGS")))
(unless (find-package "AUTOWARE_PLANNING_MSGS::PATHPOINTWITHLANEID")
  (make-package "AUTOWARE_PLANNING_MSGS::PATHPOINTWITHLANEID"))

(in-package "ROS")
;;//! \htmlinclude PathPointWithLaneId.msg.html


(defclass autoware_planning_msgs::PathPointWithLaneId
  :super ros::object
  :slots (_point _lane_ids ))

(defmethod autoware_planning_msgs::PathPointWithLaneId
  (:init
   (&key
    ((:point __point) (instance autoware_planning_msgs::PathPoint :init))
    ((:lane_ids __lane_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _point __point)
   (setq _lane_ids __lane_ids)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:lane_ids
   (&optional __lane_ids)
   (if __lane_ids (setq _lane_ids __lane_ids)) _lane_ids)
  (:serialization-length
   ()
   (+
    ;; autoware_planning_msgs/PathPoint _point
    (send _point :serialization-length)
    ;; int64[] _lane_ids
    (* 8    (length _lane_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; autoware_planning_msgs/PathPoint _point
       (send _point :serialize s)
     ;; int64[] _lane_ids
     (write-long (length _lane_ids) s)
     (dotimes (i (length _lane_ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _lane_ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _lane_ids i)) (= (length ((elt _lane_ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _lane_ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _lane_ids i) . bv) 1) -1) s))
             ((and (class (elt _lane_ids i)) (= (length ((elt _lane_ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _lane_ids i) . bv) 0) s)
              (write-long (if (>= (elt _lane_ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _lane_ids i) s)(write-long (if (>= (elt _lane_ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; autoware_planning_msgs/PathPoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; int64[] _lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _lane_ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _lane_ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get autoware_planning_msgs::PathPointWithLaneId :md5sum-) "76ff2694b5d561459dd969c578f7a19d")
(setf (get autoware_planning_msgs::PathPointWithLaneId :datatype-) "autoware_planning_msgs/PathPointWithLaneId")
(setf (get autoware_planning_msgs::PathPointWithLaneId :definition-)
      "autoware_planning_msgs/PathPoint point
int64[] lane_ids
================================================================================
MSG: autoware_planning_msgs/PathPoint
uint8 REFFERENCE=0
uint8 FIXED=1
geometry_msgs/Pose pose
geometry_msgs/Twist twist
uint8 type
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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :autoware_planning_msgs/PathPointWithLaneId "76ff2694b5d561459dd969c578f7a19d")


