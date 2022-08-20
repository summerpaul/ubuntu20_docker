;; Auto-generated. Do not edit!


(when (boundp 'autoware_planning_msgs::Scenario)
  (if (not (find-package "AUTOWARE_PLANNING_MSGS"))
    (make-package "AUTOWARE_PLANNING_MSGS"))
  (shadow 'Scenario (find-package "AUTOWARE_PLANNING_MSGS")))
(unless (find-package "AUTOWARE_PLANNING_MSGS::SCENARIO")
  (make-package "AUTOWARE_PLANNING_MSGS::SCENARIO"))

(in-package "ROS")
;;//! \htmlinclude Scenario.msg.html


(intern "*EMPTY*" (find-package "AUTOWARE_PLANNING_MSGS::SCENARIO"))
(shadow '*EMPTY* (find-package "AUTOWARE_PLANNING_MSGS::SCENARIO"))
(defconstant autoware_planning_msgs::Scenario::*EMPTY* "Empty")
(intern "*LANEDRIVING*" (find-package "AUTOWARE_PLANNING_MSGS::SCENARIO"))
(shadow '*LANEDRIVING* (find-package "AUTOWARE_PLANNING_MSGS::SCENARIO"))
(defconstant autoware_planning_msgs::Scenario::*LANEDRIVING* "LaneDriving")
(intern "*PARKING*" (find-package "AUTOWARE_PLANNING_MSGS::SCENARIO"))
(shadow '*PARKING* (find-package "AUTOWARE_PLANNING_MSGS::SCENARIO"))
(defconstant autoware_planning_msgs::Scenario::*PARKING* "Parking")

(defun autoware_planning_msgs::Scenario-to-symbol (const)
  (cond
        (t nil)))

(defclass autoware_planning_msgs::Scenario
  :super ros::object
  :slots (_current_scenario _activating_scenarios ))

(defmethod autoware_planning_msgs::Scenario
  (:init
   (&key
    ((:current_scenario __current_scenario) "")
    ((:activating_scenarios __activating_scenarios) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _current_scenario (string __current_scenario))
   (setq _activating_scenarios __activating_scenarios)
   self)
  (:current_scenario
   (&optional __current_scenario)
   (if __current_scenario (setq _current_scenario __current_scenario)) _current_scenario)
  (:activating_scenarios
   (&optional __activating_scenarios)
   (if __activating_scenarios (setq _activating_scenarios __activating_scenarios)) _activating_scenarios)
  (:serialization-length
   ()
   (+
    ;; string _current_scenario
    4 (length _current_scenario)
    ;; string[] _activating_scenarios
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _activating_scenarios)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_scenario
       (write-long (length _current_scenario) s) (princ _current_scenario s)
     ;; string[] _activating_scenarios
     (write-long (length _activating_scenarios) s)
     (dolist (elem _activating_scenarios)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_scenario
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_scenario (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _activating_scenarios
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _activating_scenarios (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _activating_scenarios i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get autoware_planning_msgs::Scenario :md5sum-) "9e42802502551bee186fe00316732f56")
(setf (get autoware_planning_msgs::Scenario :datatype-) "autoware_planning_msgs/Scenario")
(setf (get autoware_planning_msgs::Scenario :definition-)
      "string Empty=Empty
string LaneDriving=LaneDriving
string Parking=Parking

string current_scenario
string[] activating_scenarios

")



(provide :autoware_planning_msgs/Scenario "9e42802502551bee186fe00316732f56")


