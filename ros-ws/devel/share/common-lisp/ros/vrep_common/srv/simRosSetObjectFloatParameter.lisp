; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetObjectFloatParameter-request.msg.html

(cl:defclass <simRosSetObjectFloatParameter-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (parameter
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

(cl:defclass simRosSetObjectFloatParameter-request (<simRosSetObjectFloatParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectFloatParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectFloatParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectFloatParameter-request> is deprecated: use vrep_common-srv:simRosSetObjectFloatParameter-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetObjectFloatParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosSetObjectFloatParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosSetObjectFloatParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectFloatParameter-request>) ostream)
  "Serializes a message object of type '<simRosSetObjectFloatParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectFloatParameter-request>) istream)
  "Deserializes a message object of type '<simRosSetObjectFloatParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectFloatParameter-request>)))
  "Returns string type for a service object of type '<simRosSetObjectFloatParameter-request>"
  "vrep_common/simRosSetObjectFloatParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectFloatParameter-request)))
  "Returns string type for a service object of type 'simRosSetObjectFloatParameter-request"
  "vrep_common/simRosSetObjectFloatParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectFloatParameter-request>)))
  "Returns md5sum for a message object of type '<simRosSetObjectFloatParameter-request>"
  "34f253f6d922190543703a5a751d02e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectFloatParameter-request)))
  "Returns md5sum for a message object of type 'simRosSetObjectFloatParameter-request"
  "34f253f6d922190543703a5a751d02e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectFloatParameter-request>)))
  "Returns full string definition for message of type '<simRosSetObjectFloatParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameter~%float32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectFloatParameter-request)))
  "Returns full string definition for message of type 'simRosSetObjectFloatParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameter~%float32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectFloatParameter-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectFloatParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectFloatParameter-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
;//! \htmlinclude simRosSetObjectFloatParameter-response.msg.html

(cl:defclass <simRosSetObjectFloatParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetObjectFloatParameter-response (<simRosSetObjectFloatParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectFloatParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectFloatParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectFloatParameter-response> is deprecated: use vrep_common-srv:simRosSetObjectFloatParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetObjectFloatParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectFloatParameter-response>) ostream)
  "Serializes a message object of type '<simRosSetObjectFloatParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectFloatParameter-response>) istream)
  "Deserializes a message object of type '<simRosSetObjectFloatParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectFloatParameter-response>)))
  "Returns string type for a service object of type '<simRosSetObjectFloatParameter-response>"
  "vrep_common/simRosSetObjectFloatParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectFloatParameter-response)))
  "Returns string type for a service object of type 'simRosSetObjectFloatParameter-response"
  "vrep_common/simRosSetObjectFloatParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectFloatParameter-response>)))
  "Returns md5sum for a message object of type '<simRosSetObjectFloatParameter-response>"
  "34f253f6d922190543703a5a751d02e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectFloatParameter-response)))
  "Returns md5sum for a message object of type 'simRosSetObjectFloatParameter-response"
  "34f253f6d922190543703a5a751d02e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectFloatParameter-response>)))
  "Returns full string definition for message of type '<simRosSetObjectFloatParameter-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectFloatParameter-response)))
  "Returns full string definition for message of type 'simRosSetObjectFloatParameter-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectFloatParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectFloatParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectFloatParameter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetObjectFloatParameter)))
  'simRosSetObjectFloatParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetObjectFloatParameter)))
  'simRosSetObjectFloatParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectFloatParameter)))
  "Returns string type for a service object of type '<simRosSetObjectFloatParameter>"
  "vrep_common/simRosSetObjectFloatParameter")