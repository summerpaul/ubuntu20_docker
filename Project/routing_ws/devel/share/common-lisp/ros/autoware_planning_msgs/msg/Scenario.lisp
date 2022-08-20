; Auto-generated. Do not edit!


(cl:in-package autoware_planning_msgs-msg)


;//! \htmlinclude Scenario.msg.html

(cl:defclass <Scenario> (roslisp-msg-protocol:ros-message)
  ((current_scenario
    :reader current_scenario
    :initarg :current_scenario
    :type cl:string
    :initform "")
   (activating_scenarios
    :reader activating_scenarios
    :initarg :activating_scenarios
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Scenario (<Scenario>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Scenario>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Scenario)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_planning_msgs-msg:<Scenario> is deprecated: use autoware_planning_msgs-msg:Scenario instead.")))

(cl:ensure-generic-function 'current_scenario-val :lambda-list '(m))
(cl:defmethod current_scenario-val ((m <Scenario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:current_scenario-val is deprecated.  Use autoware_planning_msgs-msg:current_scenario instead.")
  (current_scenario m))

(cl:ensure-generic-function 'activating_scenarios-val :lambda-list '(m))
(cl:defmethod activating_scenarios-val ((m <Scenario>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_planning_msgs-msg:activating_scenarios-val is deprecated.  Use autoware_planning_msgs-msg:activating_scenarios instead.")
  (activating_scenarios m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Scenario>)))
    "Constants for message type '<Scenario>"
  '((:EMPTY . "Empty")
    (:LANEDRIVING . "LaneDriving")
    (:PARKING . "Parking"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Scenario)))
    "Constants for message type 'Scenario"
  '((:EMPTY . "Empty")
    (:LANEDRIVING . "LaneDriving")
    (:PARKING . "Parking"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Scenario>) ostream)
  "Serializes a message object of type '<Scenario>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_scenario))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_scenario))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'activating_scenarios))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'activating_scenarios))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Scenario>) istream)
  "Deserializes a message object of type '<Scenario>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_scenario) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_scenario) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'activating_scenarios) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'activating_scenarios)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Scenario>)))
  "Returns string type for a message object of type '<Scenario>"
  "autoware_planning_msgs/Scenario")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Scenario)))
  "Returns string type for a message object of type 'Scenario"
  "autoware_planning_msgs/Scenario")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Scenario>)))
  "Returns md5sum for a message object of type '<Scenario>"
  "9e42802502551bee186fe00316732f56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Scenario)))
  "Returns md5sum for a message object of type 'Scenario"
  "9e42802502551bee186fe00316732f56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Scenario>)))
  "Returns full string definition for message of type '<Scenario>"
  (cl:format cl:nil "string Empty=Empty~%string LaneDriving=LaneDriving~%string Parking=Parking~%~%string current_scenario~%string[] activating_scenarios~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Scenario)))
  "Returns full string definition for message of type 'Scenario"
  (cl:format cl:nil "string Empty=Empty~%string LaneDriving=LaneDriving~%string Parking=Parking~%~%string current_scenario~%string[] activating_scenarios~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Scenario>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_scenario))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'activating_scenarios) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Scenario>))
  "Converts a ROS message object to a list"
  (cl:list 'Scenario
    (cl:cons ':current_scenario (current_scenario msg))
    (cl:cons ':activating_scenarios (activating_scenarios msg))
))
