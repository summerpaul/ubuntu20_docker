;; Auto-generated. Do not edit!


(when (boundp 'autoware_system_msgs::AutowareState)
  (if (not (find-package "AUTOWARE_SYSTEM_MSGS"))
    (make-package "AUTOWARE_SYSTEM_MSGS"))
  (shadow 'AutowareState (find-package "AUTOWARE_SYSTEM_MSGS")))
(unless (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE")
  (make-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))

(in-package "ROS")
;;//! \htmlinclude AutowareState.msg.html


(intern "*ERROR*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*ERROR* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*ERROR* "Error")
(intern "*INITIALIZINGVEHICLE*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*INITIALIZINGVEHICLE* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*INITIALIZINGVEHICLE* "InitializingVehicle")
(intern "*WAITINGFORROUTE*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*WAITINGFORROUTE* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*WAITINGFORROUTE* "WaitingForRoute")
(intern "*PLANNING*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*PLANNING* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*PLANNING* "Planning")
(intern "*WAITINGFORENGAGE*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*WAITINGFORENGAGE* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*WAITINGFORENGAGE* "WaitingForEngage")
(intern "*DRIVING*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*DRIVING* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*DRIVING* "Driving")
(intern "*ARRIVEDGOAL*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*ARRIVEDGOAL* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*ARRIVEDGOAL* "ArrivedGoal")
(intern "*FAILEDTOARRIVEGOAL*" (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(shadow '*FAILEDTOARRIVEGOAL* (find-package "AUTOWARE_SYSTEM_MSGS::AUTOWARESTATE"))
(defconstant autoware_system_msgs::AutowareState::*FAILEDTOARRIVEGOAL* "FailedToArriveGoal")

(defun autoware_system_msgs::AutowareState-to-symbol (const)
  (cond
        (t nil)))

(defclass autoware_system_msgs::AutowareState
  :super ros::object
  :slots (_state _msg ))

(defmethod autoware_system_msgs::AutowareState
  (:init
   (&key
    ((:state __state) "")
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _msg (string __msg))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get autoware_system_msgs::AutowareState :md5sum-) "856c545234d0e590924921f24d06b690")
(setf (get autoware_system_msgs::AutowareState :datatype-) "autoware_system_msgs/AutowareState")
(setf (get autoware_system_msgs::AutowareState :definition-)
      "string Error=Error
string InitializingVehicle=InitializingVehicle
string WaitingForRoute=WaitingForRoute
string Planning=Planning
string WaitingForEngage=WaitingForEngage
string Driving=Driving
string ArrivedGoal=ArrivedGoal
string FailedToArriveGoal=FailedToArriveGoal

string state
string msg

")



(provide :autoware_system_msgs/AutowareState "856c545234d0e590924921f24d06b690")


