;; Auto-generated. Do not edit!


(when (boundp 'autoware_perception_msgs::TrafficLightRoi)
  (if (not (find-package "AUTOWARE_PERCEPTION_MSGS"))
    (make-package "AUTOWARE_PERCEPTION_MSGS"))
  (shadow 'TrafficLightRoi (find-package "AUTOWARE_PERCEPTION_MSGS")))
(unless (find-package "AUTOWARE_PERCEPTION_MSGS::TRAFFICLIGHTROI")
  (make-package "AUTOWARE_PERCEPTION_MSGS::TRAFFICLIGHTROI"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightRoi.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass autoware_perception_msgs::TrafficLightRoi
  :super ros::object
  :slots (_roi _id ))

(defmethod autoware_perception_msgs::TrafficLightRoi
  (:init
   (&key
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _roi __roi)
   (setq _id (round __id))
   self)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_perception_msgs::TrafficLightRoi :md5sum-) "f90e3f894aaf0e609e95299d63f28815")
(setf (get autoware_perception_msgs::TrafficLightRoi :datatype-) "autoware_perception_msgs/TrafficLightRoi")
(setf (get autoware_perception_msgs::TrafficLightRoi :definition-)
      "sensor_msgs/RegionOfInterest roi
int32 id
================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :autoware_perception_msgs/TrafficLightRoi "f90e3f894aaf0e609e95299d63f28815")


