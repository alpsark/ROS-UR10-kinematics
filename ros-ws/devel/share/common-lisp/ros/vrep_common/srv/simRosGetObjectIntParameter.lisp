; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectIntParameter-request.msg.html

(cl:defclass <simRosGetObjectIntParameter-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (parameterID
    :reader parameterID
    :initarg :parameterID
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectIntParameter-request (<simRosGetObjectIntParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectIntParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectIntParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectIntParameter-request> is deprecated: use vrep_common-srv:simRosGetObjectIntParameter-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetObjectIntParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'parameterID-val :lambda-list '(m))
(cl:defmethod parameterID-val ((m <simRosGetObjectIntParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterID-val is deprecated.  Use vrep_common-srv:parameterID instead.")
  (parameterID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectIntParameter-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectIntParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parameterID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectIntParameter-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectIntParameter-request>"
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
      (cl:setf (cl:slot-value msg 'parameterID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectIntParameter-request>)))
  "Returns string type for a service object of type '<simRosGetObjectIntParameter-request>"
  "vrep_common/simRosGetObjectIntParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectIntParameter-request)))
  "Returns string type for a service object of type 'simRosGetObjectIntParameter-request"
  "vrep_common/simRosGetObjectIntParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectIntParameter-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectIntParameter-request>"
  "8372aeda509849308ae25567cba4e30f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectIntParameter-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectIntParameter-request"
  "8372aeda509849308ae25567cba4e30f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectIntParameter-request>)))
  "Returns full string definition for message of type '<simRosGetObjectIntParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameterID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectIntParameter-request)))
  "Returns full string definition for message of type 'simRosGetObjectIntParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameterID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectIntParameter-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectIntParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectIntParameter-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':parameterID (parameterID msg))
))
;//! \htmlinclude simRosGetObjectIntParameter-response.msg.html

(cl:defclass <simRosGetObjectIntParameter-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass simRosGetObjectIntParameter-response (<simRosGetObjectIntParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectIntParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectIntParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectIntParameter-response> is deprecated: use vrep_common-srv:simRosGetObjectIntParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetObjectIntParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosGetObjectIntParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectIntParameter-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectIntParameter-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectIntParameter-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectIntParameter-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectIntParameter-response>)))
  "Returns string type for a service object of type '<simRosGetObjectIntParameter-response>"
  "vrep_common/simRosGetObjectIntParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectIntParameter-response)))
  "Returns string type for a service object of type 'simRosGetObjectIntParameter-response"
  "vrep_common/simRosGetObjectIntParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectIntParameter-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectIntParameter-response>"
  "8372aeda509849308ae25567cba4e30f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectIntParameter-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectIntParameter-response"
  "8372aeda509849308ae25567cba4e30f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectIntParameter-response>)))
  "Returns full string definition for message of type '<simRosGetObjectIntParameter-response>"
  (cl:format cl:nil "int32 result~%int32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectIntParameter-response)))
  "Returns full string definition for message of type 'simRosGetObjectIntParameter-response"
  (cl:format cl:nil "int32 result~%int32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectIntParameter-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectIntParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectIntParameter-response
    (cl:cons ':result (result msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectIntParameter)))
  'simRosGetObjectIntParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectIntParameter)))
  'simRosGetObjectIntParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectIntParameter)))
  "Returns string type for a service object of type '<simRosGetObjectIntParameter>"
  "vrep_common/simRosGetObjectIntParameter")