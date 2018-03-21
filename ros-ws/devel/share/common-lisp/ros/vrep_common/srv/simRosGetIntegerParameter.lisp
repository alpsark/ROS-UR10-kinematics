; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetIntegerParameter-request.msg.html

(cl:defclass <simRosGetIntegerParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetIntegerParameter-request (<simRosGetIntegerParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetIntegerParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetIntegerParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetIntegerParameter-request> is deprecated: use vrep_common-srv:simRosGetIntegerParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosGetIntegerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetIntegerParameter-request>) ostream)
  "Serializes a message object of type '<simRosGetIntegerParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetIntegerParameter-request>) istream)
  "Deserializes a message object of type '<simRosGetIntegerParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetIntegerParameter-request>)))
  "Returns string type for a service object of type '<simRosGetIntegerParameter-request>"
  "vrep_common/simRosGetIntegerParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetIntegerParameter-request)))
  "Returns string type for a service object of type 'simRosGetIntegerParameter-request"
  "vrep_common/simRosGetIntegerParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetIntegerParameter-request>)))
  "Returns md5sum for a message object of type '<simRosGetIntegerParameter-request>"
  "60ddbc43aea06d61ad0817005dac2c22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetIntegerParameter-request)))
  "Returns md5sum for a message object of type 'simRosGetIntegerParameter-request"
  "60ddbc43aea06d61ad0817005dac2c22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetIntegerParameter-request>)))
  "Returns full string definition for message of type '<simRosGetIntegerParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetIntegerParameter-request)))
  "Returns full string definition for message of type 'simRosGetIntegerParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetIntegerParameter-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetIntegerParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetIntegerParameter-request
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude simRosGetIntegerParameter-response.msg.html

(cl:defclass <simRosGetIntegerParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (parameterValue
    :reader parameterValue
    :initarg :parameterValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetIntegerParameter-response (<simRosGetIntegerParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetIntegerParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetIntegerParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetIntegerParameter-response> is deprecated: use vrep_common-srv:simRosGetIntegerParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetIntegerParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosGetIntegerParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetIntegerParameter-response>) ostream)
  "Serializes a message object of type '<simRosGetIntegerParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parameterValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetIntegerParameter-response>) istream)
  "Deserializes a message object of type '<simRosGetIntegerParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameterValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetIntegerParameter-response>)))
  "Returns string type for a service object of type '<simRosGetIntegerParameter-response>"
  "vrep_common/simRosGetIntegerParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetIntegerParameter-response)))
  "Returns string type for a service object of type 'simRosGetIntegerParameter-response"
  "vrep_common/simRosGetIntegerParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetIntegerParameter-response>)))
  "Returns md5sum for a message object of type '<simRosGetIntegerParameter-response>"
  "60ddbc43aea06d61ad0817005dac2c22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetIntegerParameter-response)))
  "Returns md5sum for a message object of type 'simRosGetIntegerParameter-response"
  "60ddbc43aea06d61ad0817005dac2c22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetIntegerParameter-response>)))
  "Returns full string definition for message of type '<simRosGetIntegerParameter-response>"
  (cl:format cl:nil "int32 result~%int32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetIntegerParameter-response)))
  "Returns full string definition for message of type 'simRosGetIntegerParameter-response"
  (cl:format cl:nil "int32 result~%int32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetIntegerParameter-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetIntegerParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetIntegerParameter-response
    (cl:cons ':result (result msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetIntegerParameter)))
  'simRosGetIntegerParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetIntegerParameter)))
  'simRosGetIntegerParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetIntegerParameter)))
  "Returns string type for a service object of type '<simRosGetIntegerParameter>"
  "vrep_common/simRosGetIntegerParameter")