;; Auto-generated. Do not edit!


(when (boundp 'autoware_perception_msgs::Shape)
  (if (not (find-package "AUTOWARE_PERCEPTION_MSGS"))
    (make-package "AUTOWARE_PERCEPTION_MSGS"))
  (shadow 'Shape (find-package "AUTOWARE_PERCEPTION_MSGS")))
(unless (find-package "AUTOWARE_PERCEPTION_MSGS::SHAPE")
  (make-package "AUTOWARE_PERCEPTION_MSGS::SHAPE"))

(in-package "ROS")
;;//! \htmlinclude Shape.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*BOUNDING_BOX*" (find-package "AUTOWARE_PERCEPTION_MSGS::SHAPE"))
(shadow '*BOUNDING_BOX* (find-package "AUTOWARE_PERCEPTION_MSGS::SHAPE"))
(defconstant autoware_perception_msgs::Shape::*BOUNDING_BOX* 0)
(intern "*CYLINDER*" (find-package "AUTOWARE_PERCEPTION_MSGS::SHAPE"))
(shadow '*CYLINDER* (find-package "AUTOWARE_PERCEPTION_MSGS::SHAPE"))
(defconstant autoware_perception_msgs::Shape::*CYLINDER* 1)
(intern "*POLYGON*" (find-package "AUTOWARE_PERCEPTION_MSGS::SHAPE"))
(shadow '*POLYGON* (find-package "AUTOWARE_PERCEPTION_MSGS::SHAPE"))
(defconstant autoware_perception_msgs::Shape::*POLYGON* 2)

(defun autoware_perception_msgs::Shape-to-symbol (const)
  (cond
        ((= const 0) 'autoware_perception_msgs::Shape::*BOUNDING_BOX*)
        ((= const 1) 'autoware_perception_msgs::Shape::*CYLINDER*)
        ((= const 2) 'autoware_perception_msgs::Shape::*POLYGON*)
        (t nil)))

(defclass autoware_perception_msgs::Shape
  :super ros::object
  :slots (_type _dimensions _footprint ))

(defmethod autoware_perception_msgs::Shape
  (:init
   (&key
    ((:type __type) 0)
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:footprint __footprint) (instance geometry_msgs::Polygon :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _dimensions __dimensions)
   (setq _footprint __footprint)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:footprint
   (&rest __footprint)
   (if (keywordp (car __footprint))
       (send* _footprint __footprint)
     (progn
       (if __footprint (setq _footprint (car __footprint)))
       _footprint)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Polygon _footprint
    (send _footprint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Polygon _footprint
       (send _footprint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Polygon _footprint
     (send _footprint :deserialize buf ptr-) (incf ptr- (send _footprint :serialization-length))
   ;;
   self)
  )

(setf (get autoware_perception_msgs::Shape :md5sum-) "4d17401cc8cf3df1a70f0cb6ccdc143a")
(setf (get autoware_perception_msgs::Shape :datatype-) "autoware_perception_msgs/Shape")
(setf (get autoware_perception_msgs::Shape :definition-)
      "uint8 BOUNDING_BOX=0
uint8 CYLINDER=1
uint8 POLYGON=2

uint8 type
geometry_msgs/Vector3 dimensions
geometry_msgs/Polygon footprint 

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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :autoware_perception_msgs/Shape "4d17401cc8cf3df1a70f0cb6ccdc143a")


