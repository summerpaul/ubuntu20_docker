;; Auto-generated. Do not edit!


(when (boundp 'autoware_perception_msgs::TrafficLightRoiArray)
  (if (not (find-package "AUTOWARE_PERCEPTION_MSGS"))
    (make-package "AUTOWARE_PERCEPTION_MSGS"))
  (shadow 'TrafficLightRoiArray (find-package "AUTOWARE_PERCEPTION_MSGS")))
(unless (find-package "AUTOWARE_PERCEPTION_MSGS::TRAFFICLIGHTROIARRAY")
  (make-package "AUTOWARE_PERCEPTION_MSGS::TRAFFICLIGHTROIARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightRoiArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_perception_msgs::TrafficLightRoiArray
  :super ros::object
  :slots (_header _rois ))

(defmethod autoware_perception_msgs::TrafficLightRoiArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rois __rois) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _rois __rois)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rois
   (&rest __rois)
   (if (keywordp (car __rois))
       (send* _rois __rois)
     (progn
       (if __rois (setq _rois (car __rois)))
       _rois)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; autoware_perception_msgs/TrafficLightRoi[] _rois
    (apply #'+ (send-all _rois :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_perception_msgs/TrafficLightRoi[] _rois
     (write-long (length _rois) s)
     (dolist (elem _rois)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; autoware_perception_msgs/TrafficLightRoi[] _rois
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rois (let (r) (dotimes (i n) (push (instance autoware_perception_msgs::TrafficLightRoi :init) r)) r))
     (dolist (elem- _rois)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_perception_msgs::TrafficLightRoiArray :md5sum-) "bcca094be32c25baf7286433b647e484")
(setf (get autoware_perception_msgs::TrafficLightRoiArray :datatype-) "autoware_perception_msgs/TrafficLightRoiArray")
(setf (get autoware_perception_msgs::TrafficLightRoiArray :definition-)
      "std_msgs/Header header
autoware_perception_msgs/TrafficLightRoi[] rois
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
MSG: autoware_perception_msgs/TrafficLightRoi
sensor_msgs/RegionOfInterest roi
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



(provide :autoware_perception_msgs/TrafficLightRoiArray "bcca094be32c25baf7286433b647e484")


