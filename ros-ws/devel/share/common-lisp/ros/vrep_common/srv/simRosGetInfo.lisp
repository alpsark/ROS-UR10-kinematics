; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetInfo-request.msg.html

(cl:defclass <simRosGetInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosGetInfo-request (<simRosGetInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetInfo-request> is deprecated: use vrep_common-srv:simRosGetInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetInfo-request>) ostream)
  "Serializes a message object of type '<simRosGetInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetInfo-request>) istream)
  "Deserializes a message object of type '<simRosGetInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetInfo-request>)))
  "Returns string type for a service object of type '<simRosGetInfo-request>"
  "vrep_common/simRosGetInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetInfo-request)))
  "Returns string type for a service object of type 'simRosGetInfo-request"
  "vrep_common/simRosGetInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetInfo-request>)))
  "Returns md5sum for a message object of type '<simRosGetInfo-request>"
  "2ab24cc264f8f17af7e013147c57dbc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetInfo-request)))
  "Returns md5sum for a message object of type 'simRosGetInfo-request"
  "2ab24cc264f8f17af7e013147c57dbc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetInfo-request>)))
  "Returns full string definition for message of type '<simRosGetInfo-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetInfo-request)))
  "Returns full string definition for message of type 'simRosGetInfo-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetInfo-request
))
;//! \htmlinclude simRosGetInfo-response.msg.html

(cl:defclass <simRosGetInfo-response> (roslisp-msg-protocol:ros-message)
  ((headerInfo
    :reader headerInfo
    :initarg :headerInfo
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (simulatorState
    :reader simulatorState
    :initarg :simulatorState
    :type cl:integer
    :initform 0)
   (simulationTime
    :reader simulationTime
    :initarg :simulationTime
    :type cl:float
    :initform 0.0)
   (timeStep
    :reader timeStep
    :initarg :timeStep
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosGetInfo-response (<simRosGetInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetInfo-response> is deprecated: use vrep_common-srv:simRosGetInfo-response instead.")))

(cl:ensure-generic-function 'headerInfo-val :lambda-list '(m))
(cl:defmethod headerInfo-val ((m <simRosGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:headerInfo-val is deprecated.  Use vrep_common-srv:headerInfo instead.")
  (headerInfo m))

(cl:ensure-generic-function 'simulatorState-val :lambda-list '(m))
(cl:defmethod simulatorState-val ((m <simRosGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:simulatorState-val is deprecated.  Use vrep_common-srv:simulatorState instead.")
  (simulatorState m))

(cl:ensure-generic-function 'simulationTime-val :lambda-list '(m))
(cl:defmethod simulationTime-val ((m <simRosGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:simulationTime-val is deprecated.  Use vrep_common-srv:simulationTime instead.")
  (simulationTime m))

(cl:ensure-generic-function 'timeStep-val :lambda-list '(m))
(cl:defmethod timeStep-val ((m <simRosGetInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:timeStep-val is deprecated.  Use vrep_common-srv:timeStep instead.")
  (timeStep m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetInfo-response>) ostream)
  "Serializes a message object of type '<simRosGetInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'headerInfo) ostream)
  (cl:let* ((signed (cl:slot-value msg 'simulatorState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'simulationTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeStep))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetInfo-response>) istream)
  "Deserializes a message object of type '<simRosGetInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'headerInfo) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'simulatorState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'simulationTime) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeStep) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetInfo-response>)))
  "Returns string type for a service object of type '<simRosGetInfo-response>"
  "vrep_common/simRosGetInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetInfo-response)))
  "Returns string type for a service object of type 'simRosGetInfo-response"
  "vrep_common/simRosGetInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetInfo-response>)))
  "Returns md5sum for a message object of type '<simRosGetInfo-response>"
  "2ab24cc264f8f17af7e013147c57dbc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetInfo-response)))
  "Returns md5sum for a message object of type 'simRosGetInfo-response"
  "2ab24cc264f8f17af7e013147c57dbc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetInfo-response>)))
  "Returns full string definition for message of type '<simRosGetInfo-response>"
  (cl:format cl:nil "Header headerInfo~%int32 simulatorState~%float32 simulationTime~%float32 timeStep~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetInfo-response)))
  "Returns full string definition for message of type 'simRosGetInfo-response"
  (cl:format cl:nil "Header headerInfo~%int32 simulatorState~%float32 simulationTime~%float32 timeStep~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'headerInfo))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetInfo-response
    (cl:cons ':headerInfo (headerInfo msg))
    (cl:cons ':simulatorState (simulatorState msg))
    (cl:cons ':simulationTime (simulationTime msg))
    (cl:cons ':timeStep (timeStep msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetInfo)))
  'simRosGetInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetInfo)))
  'simRosGetInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetInfo)))
  "Returns string type for a service object of type '<simRosGetInfo>"
  "vrep_common/simRosGetInfo")