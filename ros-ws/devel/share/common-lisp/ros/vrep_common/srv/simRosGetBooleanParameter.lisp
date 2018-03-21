; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetBooleanParameter-request.msg.html

(cl:defclass <simRosGetBooleanParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetBooleanParameter-request (<simRosGetBooleanParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetBooleanParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetBooleanParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetBooleanParameter-request> is deprecated: use vrep_common-srv:simRosGetBooleanParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosGetBooleanParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetBooleanParameter-request>) ostream)
  "Serializes a message object of type '<simRosGetBooleanParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetBooleanParameter-request>) istream)
  "Deserializes a message object of type '<simRosGetBooleanParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetBooleanParameter-request>)))
  "Returns string type for a service object of type '<simRosGetBooleanParameter-request>"
  "vrep_common/simRosGetBooleanParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetBooleanParameter-request)))
  "Returns string type for a service object of type 'simRosGetBooleanParameter-request"
  "vrep_common/simRosGetBooleanParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetBooleanParameter-request>)))
  "Returns md5sum for a message object of type '<simRosGetBooleanParameter-request>"
  "1d1aabce3fe70da836b3bf46393e4896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetBooleanParameter-request)))
  "Returns md5sum for a message object of type 'simRosGetBooleanParameter-request"
  "1d1aabce3fe70da836b3bf46393e4896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetBooleanParameter-request>)))
  "Returns full string definition for message of type '<simRosGetBooleanParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetBooleanParameter-request)))
  "Returns full string definition for message of type 'simRosGetBooleanParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetBooleanParameter-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetBooleanParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetBooleanParameter-request
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude simRosGetBooleanParameter-response.msg.html

(cl:defclass <simRosGetBooleanParameter-response> (roslisp-msg-protocol:ros-message)
  ((parameterValue
    :reader parameterValue
    :initarg :parameterValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetBooleanParameter-response (<simRosGetBooleanParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetBooleanParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetBooleanParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetBooleanParameter-response> is deprecated: use vrep_common-srv:simRosGetBooleanParameter-response instead.")))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosGetBooleanParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetBooleanParameter-response>) ostream)
  "Serializes a message object of type '<simRosGetBooleanParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'parameterValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetBooleanParameter-response>) istream)
  "Deserializes a message object of type '<simRosGetBooleanParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameterValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetBooleanParameter-response>)))
  "Returns string type for a service object of type '<simRosGetBooleanParameter-response>"
  "vrep_common/simRosGetBooleanParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetBooleanParameter-response)))
  "Returns string type for a service object of type 'simRosGetBooleanParameter-response"
  "vrep_common/simRosGetBooleanParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetBooleanParameter-response>)))
  "Returns md5sum for a message object of type '<simRosGetBooleanParameter-response>"
  "1d1aabce3fe70da836b3bf46393e4896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetBooleanParameter-response)))
  "Returns md5sum for a message object of type 'simRosGetBooleanParameter-response"
  "1d1aabce3fe70da836b3bf46393e4896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetBooleanParameter-response>)))
  "Returns full string definition for message of type '<simRosGetBooleanParameter-response>"
  (cl:format cl:nil "int32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetBooleanParameter-response)))
  "Returns full string definition for message of type 'simRosGetBooleanParameter-response"
  (cl:format cl:nil "int32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetBooleanParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetBooleanParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetBooleanParameter-response
    (cl:cons ':parameterValue (parameterValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetBooleanParameter)))
  'simRosGetBooleanParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetBooleanParameter)))
  'simRosGetBooleanParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetBooleanParameter)))
  "Returns string type for a service object of type '<simRosGetBooleanParameter>"
  "vrep_common/simRosGetBooleanParameter")