; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetIntegerParameter-request.msg.html

(cl:defclass <simRosSetIntegerParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0)
   (parameterValue
    :reader parameterValue
    :initarg :parameterValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetIntegerParameter-request (<simRosSetIntegerParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetIntegerParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetIntegerParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetIntegerParameter-request> is deprecated: use vrep_common-srv:simRosSetIntegerParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosSetIntegerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosSetIntegerParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetIntegerParameter-request>) ostream)
  "Serializes a message object of type '<simRosSetIntegerParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetIntegerParameter-request>) istream)
  "Deserializes a message object of type '<simRosSetIntegerParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameterValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetIntegerParameter-request>)))
  "Returns string type for a service object of type '<simRosSetIntegerParameter-request>"
  "vrep_common/simRosSetIntegerParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetIntegerParameter-request)))
  "Returns string type for a service object of type 'simRosSetIntegerParameter-request"
  "vrep_common/simRosSetIntegerParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetIntegerParameter-request>)))
  "Returns md5sum for a message object of type '<simRosSetIntegerParameter-request>"
  "f3c5433e44d0019f0b3eade90114da07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetIntegerParameter-request)))
  "Returns md5sum for a message object of type 'simRosSetIntegerParameter-request"
  "f3c5433e44d0019f0b3eade90114da07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetIntegerParameter-request>)))
  "Returns full string definition for message of type '<simRosSetIntegerParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%int32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetIntegerParameter-request)))
  "Returns full string definition for message of type 'simRosSetIntegerParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%int32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetIntegerParameter-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetIntegerParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetIntegerParameter-request
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
;//! \htmlinclude simRosSetIntegerParameter-response.msg.html

(cl:defclass <simRosSetIntegerParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetIntegerParameter-response (<simRosSetIntegerParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetIntegerParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetIntegerParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetIntegerParameter-response> is deprecated: use vrep_common-srv:simRosSetIntegerParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetIntegerParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetIntegerParameter-response>) ostream)
  "Serializes a message object of type '<simRosSetIntegerParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetIntegerParameter-response>) istream)
  "Deserializes a message object of type '<simRosSetIntegerParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetIntegerParameter-response>)))
  "Returns string type for a service object of type '<simRosSetIntegerParameter-response>"
  "vrep_common/simRosSetIntegerParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetIntegerParameter-response)))
  "Returns string type for a service object of type 'simRosSetIntegerParameter-response"
  "vrep_common/simRosSetIntegerParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetIntegerParameter-response>)))
  "Returns md5sum for a message object of type '<simRosSetIntegerParameter-response>"
  "f3c5433e44d0019f0b3eade90114da07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetIntegerParameter-response)))
  "Returns md5sum for a message object of type 'simRosSetIntegerParameter-response"
  "f3c5433e44d0019f0b3eade90114da07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetIntegerParameter-response>)))
  "Returns full string definition for message of type '<simRosSetIntegerParameter-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetIntegerParameter-response)))
  "Returns full string definition for message of type 'simRosSetIntegerParameter-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetIntegerParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetIntegerParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetIntegerParameter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetIntegerParameter)))
  'simRosSetIntegerParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetIntegerParameter)))
  'simRosSetIntegerParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetIntegerParameter)))
  "Returns string type for a service object of type '<simRosSetIntegerParameter>"
  "vrep_common/simRosSetIntegerParameter")