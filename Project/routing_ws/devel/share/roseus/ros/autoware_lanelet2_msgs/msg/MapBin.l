;; Auto-generated. Do not edit!


(when (boundp 'autoware_lanelet2_msgs::MapBin)
  (if (not (find-package "AUTOWARE_LANELET2_MSGS"))
    (make-package "AUTOWARE_LANELET2_MSGS"))
  (shadow 'MapBin (find-package "AUTOWARE_LANELET2_MSGS")))
(unless (find-package "AUTOWARE_LANELET2_MSGS::MAPBIN")
  (make-package "AUTOWARE_LANELET2_MSGS::MAPBIN"))

(in-package "ROS")
;;//! \htmlinclude MapBin.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_lanelet2_msgs::MapBin
  :super ros::object
  :slots (_header _format_version _map_version _data ))

(defmethod autoware_lanelet2_msgs::MapBin
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:format_version __format_version) "")
    ((:map_version __map_version) "")
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _format_version (string __format_version))
   (setq _map_version (string __map_version))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:format_version
   (&optional __format_version)
   (if __format_version (setq _format_version __format_version)) _format_version)
  (:map_version
   (&optional __map_version)
   (if __map_version (setq _map_version __map_version)) _map_version)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _format_version
    4 (length _format_version)
    ;; string _map_version
    4 (length _map_version)
    ;; int8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _format_version
       (write-long (length _format_version) s) (princ _format_version s)
     ;; string _map_version
       (write-long (length _map_version) s) (princ _map_version s)
     ;; int8[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _format_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _data i) 127) (setf (elt _data i) (- (elt _data i) 256)))
     ))
   ;;
   self)
  )

(setf (get autoware_lanelet2_msgs::MapBin :md5sum-) "9d7c66d4c8e6e3f95a20131a6e37fe22")
(setf (get autoware_lanelet2_msgs::MapBin :datatype-) "autoware_lanelet2_msgs/MapBin")
(setf (get autoware_lanelet2_msgs::MapBin :definition-)
      "# This contains the lanelet map in binary format.

# Timestamp and frame_id of the map
Header header

# version of map format. keep this as empty string if unnecessary
string format_version

# version of map version. keep this as empty string if unnecessary
string map_version

# binary data of lanelet2 map. This is meant to be filled using toBinMsg() in lanelet2_extension library
int8[] data

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



(provide :autoware_lanelet2_msgs/MapBin "9d7c66d4c8e6e3f95a20131a6e37fe22")


