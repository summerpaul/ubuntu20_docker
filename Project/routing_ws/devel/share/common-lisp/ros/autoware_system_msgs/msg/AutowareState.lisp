; Auto-generated. Do not edit!


(cl:in-package autoware_system_msgs-msg)


;//! \htmlinclude AutowareState.msg.html

(cl:defclass <AutowareState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass AutowareState (<AutowareState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutowareState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutowareState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_system_msgs-msg:<AutowareState> is deprecated: use autoware_system_msgs-msg:AutowareState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <AutowareState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_system_msgs-msg:state-val is deprecated.  Use autoware_system_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <AutowareState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_system_msgs-msg:msg-val is deprecated.  Use autoware_system_msgs-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutowareState>)))
    "Constants for message type '<AutowareState>"
  '((:ERROR . "Error")
    (:INITIALIZINGVEHICLE . "InitializingVehicle")
    (:WAITINGFORROUTE . "WaitingForRoute")
    (:PLANNING . "Planning")
    (:WAITINGFORENGAGE . "WaitingForEngage")
    (:DRIVING . "Driving")
    (:ARRIVEDGOAL . "ArrivedGoal")
    (:FAILEDTOARRIVEGOAL . "FailedToArriveGoal"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutowareState)))
    "Constants for message type 'AutowareState"
  '((:ERROR . "Error")
    (:INITIALIZINGVEHICLE . "InitializingVehicle")
    (:WAITINGFORROUTE . "WaitingForRoute")
    (:PLANNING . "Planning")
    (:WAITINGFORENGAGE . "WaitingForEngage")
    (:DRIVING . "Driving")
    (:ARRIVEDGOAL . "ArrivedGoal")
    (:FAILEDTOARRIVEGOAL . "FailedToArriveGoal"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutowareState>) ostream)
  "Serializes a message object of type '<AutowareState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutowareState>) istream)
  "Deserializes a message object of type '<AutowareState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutowareState>)))
  "Returns string type for a message object of type '<AutowareState>"
  "autoware_system_msgs/AutowareState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutowareState)))
  "Returns string type for a message object of type 'AutowareState"
  "autoware_system_msgs/AutowareState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutowareState>)))
  "Returns md5sum for a message object of type '<AutowareState>"
  "856c545234d0e590924921f24d06b690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutowareState)))
  "Returns md5sum for a message object of type 'AutowareState"
  "856c545234d0e590924921f24d06b690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutowareState>)))
  "Returns full string definition for message of type '<AutowareState>"
  (cl:format cl:nil "string Error=Error~%string InitializingVehicle=InitializingVehicle~%string WaitingForRoute=WaitingForRoute~%string Planning=Planning~%string WaitingForEngage=WaitingForEngage~%string Driving=Driving~%string ArrivedGoal=ArrivedGoal~%string FailedToArriveGoal=FailedToArriveGoal~%~%string state~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutowareState)))
  "Returns full string definition for message of type 'AutowareState"
  (cl:format cl:nil "string Error=Error~%string InitializingVehicle=InitializingVehicle~%string WaitingForRoute=WaitingForRoute~%string Planning=Planning~%string WaitingForEngage=WaitingForEngage~%string Driving=Driving~%string ArrivedGoal=ArrivedGoal~%string FailedToArriveGoal=FailedToArriveGoal~%~%string state~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutowareState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutowareState>))
  "Converts a ROS message object to a list"
  (cl:list 'AutowareState
    (cl:cons ':state (state msg))
    (cl:cons ':msg (msg msg))
))
