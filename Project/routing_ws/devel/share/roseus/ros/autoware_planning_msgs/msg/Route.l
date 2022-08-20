;; Auto-generated. Do not edit!


(when (boundp 'autoware_planning_msgs::Route)
  (if (not (find-package "AUTOWARE_PLANNING_MSGS"))
    (make-package "AUTOWARE_PLANNING_MSGS"))
  (shadow 'Route (find-package "AUTOWARE_PLANNING_MSGS")))
(unless (find-package "AUTOWARE_PLANNING_MSGS::ROUTE")
  (make-package "AUTOWARE_PLANNING_MSGS::ROUTE"))

(in-package "ROS")
;;//! \htmlinclude Route.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_planning_msgs::Route
  :super ros::object
  :slots (_header _goal_pose _route_sections ))

(defmethod autoware_planning_msgs::Route
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_pose __goal_pose) (instance geometry_msgs::Pose :init))
    ((:route_sections __route_sections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_pose __goal_pose)
   (setq _route_sections __route_sections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:route_sections
   (&rest __route_sections)
   (if (keywordp (car __route_sections))
       (send* _route_sections __route_sections)
     (progn
       (if __route_sections (setq _route_sections (car __route_sections)))
       _route_sections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _goal_pose
    (send _goal_pose :serialization-length)
    ;; autoware_planning_msgs/RouteSection[] _route_sections
    (apply #'+ (send-all _route_sections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _goal_pose
       (send _goal_pose :serialize s)
     ;; autoware_planning_msgs/RouteSection[] _route_sections
     (write-long (length _route_sections) s)
     (dolist (elem _route_sections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;; autoware_planning_msgs/RouteSection[] _route_sections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _route_sections (let (r) (dotimes (i n) (push (instance autoware_planning_msgs::RouteSection :init) r)) r))
     (dolist (elem- _route_sections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_planning_msgs::Route :md5sum-) "a97cc0d08212f1aeb6ccf49a5a9f422b")
(setf (get autoware_planning_msgs::Route :datatype-) "autoware_planning_msgs/Route")
(setf (get autoware_planning_msgs::Route :definition-)
      "std_msgs/Header header
geometry_msgs/Pose goal_pose
autoware_planning_msgs/RouteSection[] route_sections
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
MSG: autoware_planning_msgs/RouteSection
int64[] lane_ids
int64 preferred_lane_id
int64[] continued_lane_ids

")



(provide :autoware_planning_msgs/Route "a97cc0d08212f1aeb6ccf49a5a9f422b")


