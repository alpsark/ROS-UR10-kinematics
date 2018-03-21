; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetBooleanParameter-request.msg.html

(cl:defclass <simRosSetBooleanParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0)
   (parameterValue
    :reader parameterValue
    :initarg :parameterValue
    :type cl:fixnum
    :initform 0))
)

(cl:defclass simRosSetBooleanParameter-request (<simRosSetBooleanParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetBooleanParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetBooleanParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetBooleanParameter-request> is deprecated: use vrep_common-srv:simRosSetBooleanParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosSetBooleanParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosSetBooleanParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetBooleanParameter-request>) ostream)
  "Serializes a message object of type '<simRosSetBooleanParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parameterValue)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetBooleanParameter-request>) istream)
  "Deserializes a message object of type '<simRosSetBooleanParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parameterValue)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetBooleanParameter-request>)))
  "Returns string type for a service object of type '<simRosSetBooleanParameter-request>"
  "vrep_common/simRosSetBooleanParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetBooleanParameter-request)))
  "Returns string type for a service object of type 'simRosSetBooleanParameter-request"
  "vrep_common/simRosSetBooleanParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetBooleanParameter-request>)))
  "Returns md5sum for a message object of type '<simRosSetBooleanParameter-request>"
  "48226e7166296d8d45f6626e588efb5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetBooleanParameter-request)))
  "Returns md5sum for a message object of type 'simRosSetBooleanParameter-request"
  "48226e7166296d8d45f6626e588efb5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetBooleanParameter-request>)))
  "Returns full string definition for message of type '<simRosSetBooleanParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%uint8 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetBooleanParameter-request)))
  "Returns full string definition for message of type 'simRosSetBooleanParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%uint8 parameterValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetBooleanParameter-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetBooleanParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetBooleanParameter-request
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
;//! \htmlinclude simRosSetBooleanParameter-response.msg.html

(cl:defclass <simRosSetBooleanParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetBooleanParameter-response (<simRosSetBooleanParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetBooleanParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetBooleanParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetBooleanParameter-response> is deprecated: use vrep_common-srv:simRosSetBooleanParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetBooleanParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetBooleanParameter-response>) ostream)
  "Serializes a message object of type '<simRosSetBooleanParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetBooleanParameter-response>) istream)
  "Deserializes a message object of type '<simRosSetBooleanParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetBooleanParameter-response>)))
  "Returns string type for a service object of type '<simRosSetBooleanParameter-response>"
  "vrep_common/simRosSetBooleanParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetBooleanParameter-response)))
  "Returns string type for a service object of type 'simRosSetBooleanParameter-response"
  "vrep_common/simRosSetBooleanParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetBooleanParameter-response>)))
  "Returns md5sum for a message object of type '<simRosSetBooleanParameter-response>"
  "48226e7166296d8d45f6626e588efb5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetBooleanParameter-response)))
  "Returns md5sum for a message object of type 'simRosSetBooleanParameter-response"
  "48226e7166296d8d45f6626e588efb5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetBooleanParameter-response>)))
  "Returns full string definition for message of type '<simRosSetBooleanParameter-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetBooleanParameter-response)))
  "Returns full string definition for message of type 'simRosSetBooleanParameter-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetBooleanParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetBooleanParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetBooleanParameter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetBooleanParameter)))
  'simRosSetBooleanParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetBooleanParameter)))
  'simRosSetBooleanParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetBooleanParameter)))
  "Returns string type for a service object of type '<simRosSetBooleanParameter>"
  "vrep_common/simRosSetBooleanParameter")