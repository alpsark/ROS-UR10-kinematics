; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosBreakForceSensor-request.msg.html

(cl:defclass <simRosBreakForceSensor-request> (roslisp-msg-protocol:ros-message)
  ((objectHandle
    :reader objectHandle
    :initarg :objectHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosBreakForceSensor-request (<simRosBreakForceSensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosBreakForceSensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosBreakForceSensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosBreakForceSensor-request> is deprecated: use vrep_common-srv:simRosBreakForceSensor-request instead.")))

(cl:ensure-generic-function 'objectHandle-val :lambda-list '(m))
(cl:defmethod objectHandle-val ((m <simRosBreakForceSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:objectHandle-val is deprecated.  Use vrep_common-srv:objectHandle instead.")
  (objectHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosBreakForceSensor-request>) ostream)
  "Serializes a message object of type '<simRosBreakForceSensor-request>"
  (cl:let* ((signed (cl:slot-value msg 'objectHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosBreakForceSensor-request>) istream)
  "Deserializes a message object of type '<simRosBreakForceSensor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosBreakForceSensor-request>)))
  "Returns string type for a service object of type '<simRosBreakForceSensor-request>"
  "vrep_common/simRosBreakForceSensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosBreakForceSensor-request)))
  "Returns string type for a service object of type 'simRosBreakForceSensor-request"
  "vrep_common/simRosBreakForceSensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosBreakForceSensor-request>)))
  "Returns md5sum for a message object of type '<simRosBreakForceSensor-request>"
  "b36b86ca13a59f09240c2d590a9babec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosBreakForceSensor-request)))
  "Returns md5sum for a message object of type 'simRosBreakForceSensor-request"
  "b36b86ca13a59f09240c2d590a9babec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosBreakForceSensor-request>)))
  "Returns full string definition for message of type '<simRosBreakForceSensor-request>"
  (cl:format cl:nil "~%~%~%~%int32 objectHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosBreakForceSensor-request)))
  "Returns full string definition for message of type 'simRosBreakForceSensor-request"
  (cl:format cl:nil "~%~%~%~%int32 objectHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosBreakForceSensor-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosBreakForceSensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosBreakForceSensor-request
    (cl:cons ':objectHandle (objectHandle msg))
))
;//! \htmlinclude simRosBreakForceSensor-response.msg.html

(cl:defclass <simRosBreakForceSensor-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosBreakForceSensor-response (<simRosBreakForceSensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosBreakForceSensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosBreakForceSensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosBreakForceSensor-response> is deprecated: use vrep_common-srv:simRosBreakForceSensor-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosBreakForceSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosBreakForceSensor-response>) ostream)
  "Serializes a message object of type '<simRosBreakForceSensor-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosBreakForceSensor-response>) istream)
  "Deserializes a message object of type '<simRosBreakForceSensor-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosBreakForceSensor-response>)))
  "Returns string type for a service object of type '<simRosBreakForceSensor-response>"
  "vrep_common/simRosBreakForceSensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosBreakForceSensor-response)))
  "Returns string type for a service object of type 'simRosBreakForceSensor-response"
  "vrep_common/simRosBreakForceSensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosBreakForceSensor-response>)))
  "Returns md5sum for a message object of type '<simRosBreakForceSensor-response>"
  "b36b86ca13a59f09240c2d590a9babec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosBreakForceSensor-response)))
  "Returns md5sum for a message object of type 'simRosBreakForceSensor-response"
  "b36b86ca13a59f09240c2d590a9babec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosBreakForceSensor-response>)))
  "Returns full string definition for message of type '<simRosBreakForceSensor-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosBreakForceSensor-response)))
  "Returns full string definition for message of type 'simRosBreakForceSensor-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosBreakForceSensor-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosBreakForceSensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosBreakForceSensor-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosBreakForceSensor)))
  'simRosBreakForceSensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosBreakForceSensor)))
  'simRosBreakForceSensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosBreakForceSensor)))
  "Returns string type for a service object of type '<simRosBreakForceSensor>"
  "vrep_common/simRosBreakForceSensor")