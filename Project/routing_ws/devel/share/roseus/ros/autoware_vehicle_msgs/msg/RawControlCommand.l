;; Auto-generated. Do not edit!


(when (boundp 'autoware_vehicle_msgs::RawControlCommand)
  (if (not (find-package "AUTOWARE_VEHICLE_MSGS"))
    (make-package "AUTOWARE_VEHICLE_MSGS"))
  (shadow 'RawControlCommand (find-package "AUTOWARE_VEHICLE_MSGS")))
(unless (find-package "AUTOWARE_VEHICLE_MSGS::RAWCONTROLCOMMAND")
  (make-package "AUTOWARE_VEHICLE_MSGS::RAWCONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude RawControlCommand.msg.html


(defclass autoware_vehicle_msgs::RawControlCommand
  :super ros::object
  :slots (_steering_angle _steering_angle_velocity _throttle _brake ))

(defmethod autoware_vehicle_msgs::RawControlCommand
  (:init
   (&key
    ((:steering_angle __steering_angle) 0.0)
    ((:steering_angle_velocity __steering_angle_velocity) 0.0)
    ((:throttle __throttle) 0.0)
    ((:brake __brake) 0.0)
    )
   (send-super :init)
   (setq _steering_angle (float __steering_angle))
   (setq _steering_angle_velocity (float __steering_angle_velocity))
   (setq _throttle (float __throttle))
   (setq _brake (float __brake))
   self)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:steering_angle_velocity
   (&optional __steering_angle_velocity)
   (if __steering_angle_velocity (setq _steering_angle_velocity __steering_angle_velocity)) _steering_angle_velocity)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:serialization-length
   ()
   (+
    ;; float64 _steering_angle
    8
    ;; float64 _steering_angle_velocity
    8
    ;; float64 _throttle
    8
    ;; float64 _brake
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_angle_velocity
       (sys::poke _steering_angle_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_angle_velocity
     (setq _steering_angle_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autoware_vehicle_msgs::RawControlCommand :md5sum-) "8d9ebe05823053d6cd0059203f4d5e53")
(setf (get autoware_vehicle_msgs::RawControlCommand :datatype-) "autoware_vehicle_msgs/RawControlCommand")
(setf (get autoware_vehicle_msgs::RawControlCommand :definition-)
      "float64 steering_angle
float64 steering_angle_velocity
float64 throttle
float64 brake
")



(provide :autoware_vehicle_msgs/RawControlCommand "8d9ebe05823053d6cd0059203f4d5e53")


