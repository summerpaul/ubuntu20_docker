;; Auto-generated. Do not edit!


(when (boundp 'autoware_planning_msgs::PathPoint)
  (if (not (find-package "AUTOWARE_PLANNING_MSGS"))
    (make-package "AUTOWARE_PLANNING_MSGS"))
  (shadow 'PathPoint (find-package "AUTOWARE_PLANNING_MSGS")))
(unless (find-package "AUTOWARE_PLANNING_MSGS::PATHPOINT")
  (make-package "AUTOWARE_PLANNING_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*REFFERENCE*" (find-package "AUTOWARE_PLANNING_MSGS::PATHPOINT"))
(shadow '*REFFERENCE* (find-package "AUTOWARE_PLANNING_MSGS::PATHPOINT"))
(defconstant autoware_planning_msgs::PathPoint::*REFFERENCE* 0)
(intern "*FIXED*" (find-package "AUTOWARE_PLANNING_MSGS::PATHPOINT"))
(shadow '*FIXED* (find-package "AUTOWARE_PLANNING_MSGS::PATHPOINT"))
(defconstant autoware_planning_msgs::PathPoint::*FIXED* 1)

(defun autoware_planning_msgs::PathPoint-to-symbol (const)
  (cond
        ((= const 0) 'autoware_planning_msgs::PathPoint::*REFFERENCE*)
        ((= const 1) 'autoware_planning_msgs::PathPoint::*FIXED*)
        (t nil)))

(defclass autoware_planning_msgs::PathPoint
  :super ros::object
  :slots (_pose _twist _type ))

(defmethod autoware_planning_msgs::PathPoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _type (round __type))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get autoware_planning_msgs::PathPoint :md5sum-) "e48252d5946ba8f4e2250819f89ca6a2")
(setf (get autoware_planning_msgs::PathPoint :datatype-) "autoware_planning_msgs/PathPoint")
(setf (get autoware_planning_msgs::PathPoint :definition-)
      "uint8 REFFERENCE=0
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



(provide :autoware_planning_msgs/PathPoint "e48252d5946ba8f4e2250819f89ca6a2")


