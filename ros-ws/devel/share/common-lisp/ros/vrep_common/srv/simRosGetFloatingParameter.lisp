; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetFloatingParameter-request.msg.html

(cl:defclass <simRosGetFloatingParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetFloatingParameter-request (<simRosGetFloatingParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetFloatingParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetFloatingParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetFloatingParameter-request> is deprecated: use vrep_common-srv:simRosGetFloatingParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosGetFloatingParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetFloatingParameter-request>) ostream)
  "Serializes a message object of type '<simRosGetFloatingParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetFloatingParameter-request>) istream)
  "Deserializes a message object of type '<simRosGetFloatingParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetFloatingParameter-request>)))
  "Returns string type for a service object of type '<simRosGetFloatingParameter-request>"
  "vrep_common/simRosGetFloatingParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetFloatingParameter-request)))
  "Returns string type for a service object of type 'simRosGetFloatingParameter-request"
  "vrep_common/simRosGetFloatingParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetFloatingParameter-request>)))
  "Returns md5sum for a message object of type '<simRosGetFloatingParameter-request>"
  "644de783777ba310fdbca35ac3e448b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetFloatingParameter-request)))
  "Returns md5sum for a message object of type 'simRosGetFloatingParameter-request"
  "644de783777ba310fdbca35ac3e448b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetFloatingParameter-request>)))
  "Returns full string definition for message of type '<simRosGetFloatingParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetFloatingParameter-request)))
  "Returns full string definition for message of type 'simRosGetFloatingParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetFloatingParameter-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetFloatingParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetFloatingParameter-request
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude simRosGetFloatingParameter-response.msg.html

(cl:defclass <simRosGetFloatingParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (parameterValue
    :reader parameterValue
    :initarg :parameterValue
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosGetFloatingParameter-response (<simRosGetFloatingParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetFloatingParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetFloatingParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetFloatingParameter-response> is deprecated: use vrep_common-srv:simRosGetFloatingParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetFloatingParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosGetFloatingParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetFloatingParameter-response>) ostream)
  "Serializes a message object of type '<simRosGetFloatingParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'parameterValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetFloatingParameter-response>) istream)
  "Deserializes a message object of type '<simRosGetFloatingParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'parameterValue) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetFloatingParameter-response>)))
  "Returns string type for a service object of type '<simRosGetFloatingParameter-response>"
  "vrep_common/simRosGetFloatingParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetFloatingParameter-response)))
  "Returns string type for a service object of type 'simRosGetFloatingParameter-response"
  "vrep_common/simRosGetFloatingParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetFloatingParameter-response>)))
  "Returns md5sum for a message object of type '<simRosGetFloatingParameter-response>"
  "644de783777ba310fdbca35ac3e448b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetFloatingParameter-response)))
  "Returns md5sum for a message object of type 'simRosGetFloatingParameter-response"
  "644de783777ba310fdbca35ac3e448b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetFloatingParameter-response>)))
  "Returns full string definition for message of type '<simRosGetFloatingParameter-response>"
  (cl:format cl:nil "int32 result~%float32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetFloatingParameter-response)))
  "Returns full string definition for message of type 'simRosGetFloatingParameter-response"
  (cl:format cl:nil "int32 result~%float32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetFloatingParameter-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetFloatingParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetFloatingParameter-response
    (cl:cons ':result (result msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetFloatingParameter)))
  'simRosGetFloatingParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetFloatingParameter)))
  'simRosGetFloatingParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetFloatingParameter)))
  "Returns string type for a service object of type '<simRosGetFloatingParameter>"
  "vrep_common/simRosGetFloatingParameter")