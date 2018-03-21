; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetFloatingParameter-request.msg.html

(cl:defclass <simRosSetFloatingParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0)
   (parameterValue
    :reader parameterValue
    :initarg :parameterValue
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosSetFloatingParameter-request (<simRosSetFloatingParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetFloatingParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetFloatingParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetFloatingParameter-request> is deprecated: use vrep_common-srv:simRosSetFloatingParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosSetFloatingParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosSetFloatingParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetFloatingParameter-request>) ostream)
  "Serializes a message object of type '<simRosSetFloatingParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetFloatingParameter-request>) istream)
  "Deserializes a message object of type '<simRosSetFloatingParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'parameterValue) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetFloatingParameter-request>)))
  "Returns string type for a service object of type '<simRosSetFloatingParameter-request>"
  "vrep_common/simRosSetFloatingParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetFloatingParameter-request)))
  "Returns string type for a service object of type 'simRosSetFloatingParameter-request"
  "vrep_common/simRosSetFloatingParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetFloatingParameter-request>)))
  "Returns md5sum for a message object of type '<simRosSetFloatingParameter-request>"
  "c31639a7b964ac493003ab10b05585ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetFloatingParameter-request)))
  "Returns md5sum for a message object of type 'simRosSetFloatingParameter-request"
  "c31639a7b964ac493003ab10b05585ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetFloatingParameter-request>)))
  "Returns full string definition for message of type '<simRosSetFloatingParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%float32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetFloatingParameter-request)))
  "Returns full string definition for message of type 'simRosSetFloatingParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%float32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetFloatingParameter-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetFloatingParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetFloatingParameter-request
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
;//! \htmlinclude simRosSetFloatingParameter-response.msg.html

(cl:defclass <simRosSetFloatingParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetFloatingParameter-response (<simRosSetFloatingParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetFloatingParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetFloatingParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetFloatingParameter-response> is deprecated: use vrep_common-srv:simRosSetFloatingParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetFloatingParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetFloatingParameter-response>) ostream)
  "Serializes a message object of type '<simRosSetFloatingParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetFloatingParameter-response>) istream)
  "Deserializes a message object of type '<simRosSetFloatingParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetFloatingParameter-response>)))
  "Returns string type for a service object of type '<simRosSetFloatingParameter-response>"
  "vrep_common/simRosSetFloatingParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetFloatingParameter-response)))
  "Returns string type for a service object of type 'simRosSetFloatingParameter-response"
  "vrep_common/simRosSetFloatingParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetFloatingParameter-response>)))
  "Returns md5sum for a message object of type '<simRosSetFloatingParameter-response>"
  "c31639a7b964ac493003ab10b05585ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetFloatingParameter-response)))
  "Returns md5sum for a message object of type 'simRosSetFloatingParameter-response"
  "c31639a7b964ac493003ab10b05585ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetFloatingParameter-response>)))
  "Returns full string definition for message of type '<simRosSetFloatingParameter-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetFloatingParameter-response)))
  "Returns full string definition for message of type 'simRosSetFloatingParameter-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetFloatingParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetFloatingParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetFloatingParameter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetFloatingParameter)))
  'simRosSetFloatingParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetFloatingParameter)))
  'simRosSetFloatingParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetFloatingParameter)))
  "Returns string type for a service object of type '<simRosSetFloatingParameter>"
  "vrep_common/simRosSetFloatingParameter")