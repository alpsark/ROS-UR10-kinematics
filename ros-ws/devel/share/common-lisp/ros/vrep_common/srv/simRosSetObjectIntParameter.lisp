; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetObjectIntParameter-request.msg.html

(cl:defclass <simRosSetObjectIntParameter-request> (roslisp-msg-protocol:ros-message)
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
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetObjectIntParameter-request (<simRosSetObjectIntParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectIntParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectIntParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectIntParameter-request> is deprecated: use vrep_common-srv:simRosSetObjectIntParameter-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetObjectIntParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosSetObjectIntParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosSetObjectIntParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectIntParameter-request>) ostream)
  "Serializes a message object of type '<simRosSetObjectIntParameter-request>"
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
  (cl:let* ((signed (cl:slot-value msg 'parameterValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectIntParameter-request>) istream)
  "Deserializes a message object of type '<simRosSetObjectIntParameter-request>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameterValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectIntParameter-request>)))
  "Returns string type for a service object of type '<simRosSetObjectIntParameter-request>"
  "vrep_common/simRosSetObjectIntParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectIntParameter-request)))
  "Returns string type for a service object of type 'simRosSetObjectIntParameter-request"
  "vrep_common/simRosSetObjectIntParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectIntParameter-request>)))
  "Returns md5sum for a message object of type '<simRosSetObjectIntParameter-request>"
  "fd6c30a0a0bb1198c016550800028a13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectIntParameter-request)))
  "Returns md5sum for a message object of type 'simRosSetObjectIntParameter-request"
  "fd6c30a0a0bb1198c016550800028a13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectIntParameter-request>)))
  "Returns full string definition for message of type '<simRosSetObjectIntParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameter~%int32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectIntParameter-request)))
  "Returns full string definition for message of type 'simRosSetObjectIntParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameter~%int32 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectIntParameter-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectIntParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectIntParameter-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
;//! \htmlinclude simRosSetObjectIntParameter-response.msg.html

(cl:defclass <simRosSetObjectIntParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetObjectIntParameter-response (<simRosSetObjectIntParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectIntParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectIntParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectIntParameter-response> is deprecated: use vrep_common-srv:simRosSetObjectIntParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetObjectIntParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectIntParameter-response>) ostream)
  "Serializes a message object of type '<simRosSetObjectIntParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectIntParameter-response>) istream)
  "Deserializes a message object of type '<simRosSetObjectIntParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectIntParameter-response>)))
  "Returns string type for a service object of type '<simRosSetObjectIntParameter-response>"
  "vrep_common/simRosSetObjectIntParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectIntParameter-response)))
  "Returns string type for a service object of type 'simRosSetObjectIntParameter-response"
  "vrep_common/simRosSetObjectIntParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectIntParameter-response>)))
  "Returns md5sum for a message object of type '<simRosSetObjectIntParameter-response>"
  "fd6c30a0a0bb1198c016550800028a13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectIntParameter-response)))
  "Returns md5sum for a message object of type 'simRosSetObjectIntParameter-response"
  "fd6c30a0a0bb1198c016550800028a13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectIntParameter-response>)))
  "Returns full string definition for message of type '<simRosSetObjectIntParameter-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectIntParameter-response)))
  "Returns full string definition for message of type 'simRosSetObjectIntParameter-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectIntParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectIntParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectIntParameter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetObjectIntParameter)))
  'simRosSetObjectIntParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetObjectIntParameter)))
  'simRosSetObjectIntParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectIntParameter)))
  "Returns string type for a service object of type '<simRosSetObjectIntParameter>"
  "vrep_common/simRosSetObjectIntParameter")