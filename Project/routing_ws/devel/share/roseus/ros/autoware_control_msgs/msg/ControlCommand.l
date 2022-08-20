;; Auto-generated. Do not edit!


(when (boundp 'autoware_control_msgs::ControlCommand)
  (if (not (find-package "AUTOWARE_CONTROL_MSGS"))
    (make-package "AUTOWARE_CONTROL_MSGS"))
  (shadow 'ControlCommand (find-package "AUTOWARE_CONTROL_MSGS")))
(unless (find-package "AUTOWARE_CONTROL_MSGS::CONTROLCOMMAND")
  (make-package "AUTOWARE_CONTROL_MSGS::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html


(defclass autoware_control_msgs::ControlCommand
  :super ros::object
  :slots (_steering_angle _steering_angle_velocity _velocity _acceleration ))

(defmethod autoware_control_msgs::ControlCommand
  (:init
   (&key
    ((:steering_angle __steering_angle) 0.0)
    ((:steering_angle_velocity __steering_angle_velocity) 0.0)
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) 0.0)
    )
   (send-super :init)
   (setq _steering_angle (float __steering_angle))
   (setq _steering_angle_velocity (float __steering_angle_velocity))
   (setq _velocity (float __velocity))
   (setq _acceleration (float __acceleration))
   self)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:steering_angle_velocity
   (&optional __steering_angle_velocity)
   (if __steering_angle_velocity (setq _steering_angle_velocity __steering_angle_velocity)) _steering_angle_velocity)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:serialization-length
   ()
   (+
    ;; float64 _steering_angle
    8
    ;; float64 _steering_angle_velocity
    8
    ;; float64 _velocity
    8
    ;; float64 _acceleration
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
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_angle_velocity
     (setq _steering_angle_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autoware_control_msgs::ControlCommand :md5sum-) "beac3f978f000d5cd26de68de9ebce17")
(setf (get autoware_control_msgs::ControlCommand :datatype-) "autoware_control_msgs/ControlCommand")
(setf (get autoware_control_msgs::ControlCommand :definition-)
      "float64 steering_angle
float64 steering_angle_velocity
float64 velocity
float64 acceleration
")



(provide :autoware_control_msgs/ControlCommand "beac3f978f000d5cd26de68de9ebce17")


