;; Auto-generated. Do not edit!


(when (boundp 'autoware_perception_msgs::State)
  (if (not (find-package "AUTOWARE_PERCEPTION_MSGS"))
    (make-package "AUTOWARE_PERCEPTION_MSGS"))
  (shadow 'State (find-package "AUTOWARE_PERCEPTION_MSGS")))
(unless (find-package "AUTOWARE_PERCEPTION_MSGS::STATE")
  (make-package "AUTOWARE_PERCEPTION_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass autoware_perception_msgs::State
  :super ros::object
  :slots (_pose_covariance _orientation_reliable _twist_covariance _twist_reliable _acceleration_covariance _acceleration_reliable _predicted_paths ))

(defmethod autoware_perception_msgs::State
  (:init
   (&key
    ((:pose_covariance __pose_covariance) (instance geometry_msgs::PoseWithCovariance :init))
    ((:orientation_reliable __orientation_reliable) nil)
    ((:twist_covariance __twist_covariance) (instance geometry_msgs::TwistWithCovariance :init))
    ((:twist_reliable __twist_reliable) nil)
    ((:acceleration_covariance __acceleration_covariance) (instance geometry_msgs::AccelWithCovariance :init))
    ((:acceleration_reliable __acceleration_reliable) nil)
    ((:predicted_paths __predicted_paths) ())
    )
   (send-super :init)
   (setq _pose_covariance __pose_covariance)
   (setq _orientation_reliable __orientation_reliable)
   (setq _twist_covariance __twist_covariance)
   (setq _twist_reliable __twist_reliable)
   (setq _acceleration_covariance __acceleration_covariance)
   (setq _acceleration_reliable __acceleration_reliable)
   (setq _predicted_paths __predicted_paths)
   self)
  (:pose_covariance
   (&rest __pose_covariance)
   (if (keywordp (car __pose_covariance))
       (send* _pose_covariance __pose_covariance)
     (progn
       (if __pose_covariance (setq _pose_covariance (car __pose_covariance)))
       _pose_covariance)))
  (:orientation_reliable
   (&optional (__orientation_reliable :null))
   (if (not (eq __orientation_reliable :null)) (setq _orientation_reliable __orientation_reliable)) _orientation_reliable)
  (:twist_covariance
   (&rest __twist_covariance)
   (if (keywordp (car __twist_covariance))
       (send* _twist_covariance __twist_covariance)
     (progn
       (if __twist_covariance (setq _twist_covariance (car __twist_covariance)))
       _twist_covariance)))
  (:twist_reliable
   (&optional (__twist_reliable :null))
   (if (not (eq __twist_reliable :null)) (setq _twist_reliable __twist_reliable)) _twist_reliable)
  (:acceleration_covariance
   (&rest __acceleration_covariance)
   (if (keywordp (car __acceleration_covariance))
       (send* _acceleration_covariance __acceleration_covariance)
     (progn
       (if __acceleration_covariance (setq _acceleration_covariance (car __acceleration_covariance)))
       _acceleration_covariance)))
  (:acceleration_reliable
   (&optional (__acceleration_reliable :null))
   (if (not (eq __acceleration_reliable :null)) (setq _acceleration_reliable __acceleration_reliable)) _acceleration_reliable)
  (:predicted_paths
   (&rest __predicted_paths)
   (if (keywordp (car __predicted_paths))
       (send* _predicted_paths __predicted_paths)
     (progn
       (if __predicted_paths (setq _predicted_paths (car __predicted_paths)))
       _predicted_paths)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseWithCovariance _pose_covariance
    (send _pose_covariance :serialization-length)
    ;; bool _orientation_reliable
    1
    ;; geometry_msgs/TwistWithCovariance _twist_covariance
    (send _twist_covariance :serialization-length)
    ;; bool _twist_reliable
    1
    ;; geometry_msgs/AccelWithCovariance _acceleration_covariance
    (send _acceleration_covariance :serialization-length)
    ;; bool _acceleration_reliable
    1
    ;; autoware_perception_msgs/PredictedPath[] _predicted_paths
    (apply #'+ (send-all _predicted_paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseWithCovariance _pose_covariance
       (send _pose_covariance :serialize s)
     ;; bool _orientation_reliable
       (if _orientation_reliable (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/TwistWithCovariance _twist_covariance
       (send _twist_covariance :serialize s)
     ;; bool _twist_reliable
       (if _twist_reliable (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/AccelWithCovariance _acceleration_covariance
       (send _acceleration_covariance :serialize s)
     ;; bool _acceleration_reliable
       (if _acceleration_reliable (write-byte -1 s) (write-byte 0 s))
     ;; autoware_perception_msgs/PredictedPath[] _predicted_paths
     (write-long (length _predicted_paths) s)
     (dolist (elem _predicted_paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseWithCovariance _pose_covariance
     (send _pose_covariance :deserialize buf ptr-) (incf ptr- (send _pose_covariance :serialization-length))
   ;; bool _orientation_reliable
     (setq _orientation_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/TwistWithCovariance _twist_covariance
     (send _twist_covariance :deserialize buf ptr-) (incf ptr- (send _twist_covariance :serialization-length))
   ;; bool _twist_reliable
     (setq _twist_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/AccelWithCovariance _acceleration_covariance
     (send _acceleration_covariance :deserialize buf ptr-) (incf ptr- (send _acceleration_covariance :serialization-length))
   ;; bool _acceleration_reliable
     (setq _acceleration_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; autoware_perception_msgs/PredictedPath[] _predicted_paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predicted_paths (let (r) (dotimes (i n) (push (instance autoware_perception_msgs::PredictedPath :init) r)) r))
     (dolist (elem- _predicted_paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_perception_msgs::State :md5sum-) "adee6436156f6f80a5204905e49c421d")
(setf (get autoware_perception_msgs::State :datatype-) "autoware_perception_msgs/State")
(setf (get autoware_perception_msgs::State :definition-)
      "geometry_msgs/PoseWithCovariance pose_covariance
bool orientation_reliable
geometry_msgs/TwistWithCovariance twist_covariance
bool twist_reliable
geometry_msgs/AccelWithCovariance acceleration_covariance
bool acceleration_reliable
PredictedPath[] predicted_paths

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
================================================================================
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: autoware_perception_msgs/PredictedPath
geometry_msgs/PoseWithCovarianceStamped[] path
float64 confidence

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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

")



(provide :autoware_perception_msgs/State "adee6436156f6f80a5204905e49c421d")


