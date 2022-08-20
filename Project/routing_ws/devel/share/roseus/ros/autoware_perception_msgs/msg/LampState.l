;; Auto-generated. Do not edit!


(when (boundp 'autoware_perception_msgs::LampState)
  (if (not (find-package "AUTOWARE_PERCEPTION_MSGS"))
    (make-package "AUTOWARE_PERCEPTION_MSGS"))
  (shadow 'LampState (find-package "AUTOWARE_PERCEPTION_MSGS")))
(unless (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE")
  (make-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))

(in-package "ROS")
;;//! \htmlinclude LampState.msg.html


(intern "*UNKNOWN*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*UNKNOWN* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*UNKNOWN* 0)
(intern "*RED*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*RED* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*RED* 1)
(intern "*GREEN*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*GREEN* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*GREEN* 2)
(intern "*YELLOW*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*YELLOW* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*YELLOW* 3)
(intern "*LEFT*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*LEFT* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*LEFT* 4)
(intern "*RIGHT*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*RIGHT* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*RIGHT* 5)
(intern "*UP*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*UP* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*UP* 6)
(intern "*DOWN*" (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(shadow '*DOWN* (find-package "AUTOWARE_PERCEPTION_MSGS::LAMPSTATE"))
(defconstant autoware_perception_msgs::LampState::*DOWN* 7)

(defun autoware_perception_msgs::LampState-to-symbol (const)
  (cond
        ((= const 0) 'autoware_perception_msgs::LampState::*UNKNOWN*)
        ((= const 1) 'autoware_perception_msgs::LampState::*RED*)
        ((= const 2) 'autoware_perception_msgs::LampState::*GREEN*)
        ((= const 3) 'autoware_perception_msgs::LampState::*YELLOW*)
        ((= const 4) 'autoware_perception_msgs::LampState::*LEFT*)
        ((= const 5) 'autoware_perception_msgs::LampState::*RIGHT*)
        ((= const 6) 'autoware_perception_msgs::LampState::*UP*)
        ((= const 7) 'autoware_perception_msgs::LampState::*DOWN*)
        (t nil)))

(defclass autoware_perception_msgs::LampState
  :super ros::object
  :slots (_type _confidence ))

(defmethod autoware_perception_msgs::LampState
  (:init
   (&key
    ((:type __type) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _confidence (float __confidence))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; uint32 _type
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _type
       (write-long _type s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_perception_msgs::LampState :md5sum-) "f8cad4711cafcd7eacf519c83ac882e0")
(setf (get autoware_perception_msgs::LampState :datatype-) "autoware_perception_msgs/LampState")
(setf (get autoware_perception_msgs::LampState :definition-)
      "uint8 UNKNOWN=0
uint8 RED=1
uint8 GREEN=2
uint8 YELLOW=3
uint8 LEFT=4
uint8 RIGHT=5
uint8 UP=6
uint8 DOWN=7
uint32 type
float32 confidence
")



(provide :autoware_perception_msgs/LampState "f8cad4711cafcd7eacf519c83ac882e0")


