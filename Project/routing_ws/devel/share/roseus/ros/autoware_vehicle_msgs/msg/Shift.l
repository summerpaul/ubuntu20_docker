;; Auto-generated. Do not edit!


(when (boundp 'autoware_vehicle_msgs::Shift)
  (if (not (find-package "AUTOWARE_VEHICLE_MSGS"))
    (make-package "AUTOWARE_VEHICLE_MSGS"))
  (shadow 'Shift (find-package "AUTOWARE_VEHICLE_MSGS")))
(unless (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT")
  (make-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))

(in-package "ROS")
;;//! \htmlinclude Shift.msg.html


(intern "*NONE*" (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(shadow '*NONE* (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(defconstant autoware_vehicle_msgs::Shift::*NONE* 0)
(intern "*PARKING*" (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(shadow '*PARKING* (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(defconstant autoware_vehicle_msgs::Shift::*PARKING* 1)
(intern "*REVERSE*" (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(shadow '*REVERSE* (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(defconstant autoware_vehicle_msgs::Shift::*REVERSE* 2)
(intern "*NEUTRAL*" (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(shadow '*NEUTRAL* (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(defconstant autoware_vehicle_msgs::Shift::*NEUTRAL* 3)
(intern "*DRIVE*" (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(shadow '*DRIVE* (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(defconstant autoware_vehicle_msgs::Shift::*DRIVE* 4)
(intern "*LOW*" (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(shadow '*LOW* (find-package "AUTOWARE_VEHICLE_MSGS::SHIFT"))
(defconstant autoware_vehicle_msgs::Shift::*LOW* 5)

(defun autoware_vehicle_msgs::Shift-to-symbol (const)
  (cond
        ((= const 0) 'autoware_vehicle_msgs::Shift::*NONE*)
        ((= const 1) 'autoware_vehicle_msgs::Shift::*PARKING*)
        ((= const 2) 'autoware_vehicle_msgs::Shift::*REVERSE*)
        ((= const 3) 'autoware_vehicle_msgs::Shift::*NEUTRAL*)
        ((= const 4) 'autoware_vehicle_msgs::Shift::*DRIVE*)
        ((= const 5) 'autoware_vehicle_msgs::Shift::*LOW*)
        (t nil)))

(defclass autoware_vehicle_msgs::Shift
  :super ros::object
  :slots (_data ))

(defmethod autoware_vehicle_msgs::Shift
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_vehicle_msgs::Shift :md5sum-) "2fd0e3a838050b8d14292e38efefcee4")
(setf (get autoware_vehicle_msgs::Shift :datatype-) "autoware_vehicle_msgs/Shift")
(setf (get autoware_vehicle_msgs::Shift :definition-)
      "uint8 NONE=0
uint8 PARKING=1
uint8 REVERSE=2
uint8 NEUTRAL=3
uint8 DRIVE=4
uint8 LOW=5

int32 data
")



(provide :autoware_vehicle_msgs/Shift "2fd0e3a838050b8d14292e38efefcee4")


