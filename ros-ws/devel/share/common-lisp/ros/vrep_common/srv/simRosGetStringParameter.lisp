; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetStringParameter-request.msg.html

(cl:defclass <simRosGetStringParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetStringParameter-request (<simRosGetStringParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetStringParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetStringParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetStringParameter-request> is deprecated: use vrep_common-srv:simRosGetStringParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosGetStringParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetStringParameter-request>) ostream)
  "Serializes a message object of type '<simRosGetStringParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetStringParameter-request>) istream)
  "Deserializes a message object of type '<simRosGetStringParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetStringParameter-request>)))
  "Returns string type for a service object of type '<simRosGetStringParameter-request>"
  "vrep_common/simRosGetStringParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetStringParameter-request)))
  "Returns string type for a service object of type 'simRosGetStringParameter-request"
  "vrep_common/simRosGetStringParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetStringParameter-request>)))
  "Returns md5sum for a message object of type '<simRosGetStringParameter-request>"
  "bfa84711627860a0d3cd5d1050dd8779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetStringParameter-request)))
  "Returns md5sum for a message object of type 'simRosGetStringParameter-request"
  "bfa84711627860a0d3cd5d1050dd8779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetStringParameter-request>)))
  "Returns full string definition for message of type '<simRosGetStringParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetStringParameter-request)))
  "Returns full string definition for message of type 'simRosGetStringParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetStringParameter-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetStringParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetStringParameter-request
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude simRosGetStringParameter-response.msg.html

(cl:defclass <simRosGetStringParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (parameterValue
    :reader parameterValue
    :initarg :parameterValue
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetStringParameter-response (<simRosGetStringParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetStringParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetStringParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetStringParameter-response> is deprecated: use vrep_common-srv:simRosGetStringParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetStringParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosGetStringParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetStringParameter-response>) ostream)
  "Serializes a message object of type '<simRosGetStringParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameterValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameterValue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetStringParameter-response>) istream)
  "Deserializes a message object of type '<simRosGetStringParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameterValue) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameterValue) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetStringParameter-response>)))
  "Returns string type for a service object of type '<simRosGetStringParameter-response>"
  "vrep_common/simRosGetStringParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetStringParameter-response)))
  "Returns string type for a service object of type 'simRosGetStringParameter-response"
  "vrep_common/simRosGetStringParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetStringParameter-response>)))
  "Returns md5sum for a message object of type '<simRosGetStringParameter-response>"
  "bfa84711627860a0d3cd5d1050dd8779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetStringParameter-response)))
  "Returns md5sum for a message object of type 'simRosGetStringParameter-response"
  "bfa84711627860a0d3cd5d1050dd8779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetStringParameter-response>)))
  "Returns full string definition for message of type '<simRosGetStringParameter-response>"
  (cl:format cl:nil "int32 result~%string parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetStringParameter-response)))
  "Returns full string definition for message of type 'simRosGetStringParameter-response"
  (cl:format cl:nil "int32 result~%string parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetStringParameter-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'parameterValue))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetStringParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetStringParameter-response
    (cl:cons ':result (result msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetStringParameter)))
  'simRosGetStringParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetStringParameter)))
  'simRosGetStringParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetStringParameter)))
  "Returns string type for a service object of type '<simRosGetStringParameter>"
  "vrep_common/simRosGetStringParameter")