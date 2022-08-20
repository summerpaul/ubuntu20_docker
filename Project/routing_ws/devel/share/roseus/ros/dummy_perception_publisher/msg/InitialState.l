;; Auto-generated. Do not edit!


(when (boundp 'dummy_perception_publisher::InitialState)
  (if (not (find-package "DUMMY_PERCEPTION_PUBLISHER"))
    (make-package "DUMMY_PERCEPTION_PUBLISHER"))
  (shadow 'InitialState (find-package "DUMMY_PERCEPTION_PUBLISHER")))
(unless (find-package "DUMMY_PERCEPTION_PUBLISHER::INITIALSTATE")
  (make-package "DUMMY_PERCEPTION_PUBLISHER::INITIALSTATE"))

(in-package "ROS")
;;//! \htmlinclude InitialState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dummy_perception_publisher::InitialState
  :super ros::object
  :slots (_pose_covariance _twist_covariance ))

(defmethod dummy_perception_publisher::InitialState
  (:init
   (&key
    ((:pose_covariance __pose_covariance) (instance geometry_msgs::PoseWithCovariance :init))
    ((:twist_covariance __twist_covariance) (instance geometry_msgs::TwistWithCovariance :init))
    )
   (send-super :init)
   (setq _pose_covariance __pose_covariance)
   (setq _twist_covariance __twist_covariance)
   self)
  (:pose_covariance
   (&rest __pose_covariance)
   (if (keywordp (car __pose_covariance))
       (send* _pose_covariance __pose_covariance)
     (progn
       (if __pose_covariance (setq _pose_covariance (car __pose_covariance)))
       _pose_covariance)))
  (:twist_covariance
   (&rest __twist_covariance)
   (if (keywordp (car __twist_covariance))
       (send* _twist_covariance __twist_covariance)
     (progn
       (if __twist_covariance (setq _twist_covariance (car __twist_covariance)))
       _twist_covariance)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseWithCovariance _pose_covariance
    (send _pose_covariance :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _twist_covariance
    (send _twist_covariance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseWithCovariance _pose_covariance
       (send _pose_covariance :serialize s)
     ;; geometry_msgs/TwistWithCovariance _twist_covariance
       (send _twist_covariance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseWithCovariance _pose_covariance
     (send _pose_covariance :deserialize buf ptr-) (incf ptr- (send _pose_covariance :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _twist_covariance
     (send _twist_covariance :deserialize buf ptr-) (incf ptr- (send _twist_covariance :serialization-length))
   ;;
   self)
  )

(setf (get dummy_perception_publisher::InitialState :md5sum-) "95005958cfeaf8d17bca5017f302d25c")
(setf (get dummy_perception_publisher::InitialState :datatype-) "dummy_perception_publisher/InitialState")
(setf (get dummy_perception_publisher::InitialState :definition-)
      "geometry_msgs/PoseWithCovariance pose_covariance
geometry_msgs/TwistWithCovariance twist_covariance
================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :dummy_perception_publisher/InitialState "95005958cfeaf8d17bca5017f302d25c")


