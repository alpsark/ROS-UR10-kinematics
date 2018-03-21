; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectFloatParameter-request.msg.html

(cl:defclass <simRosGetObjectFloatParameter-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass simRosGetObjectFloatParameter-request (<simRosGetObjectFloatParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectFloatParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectFloatParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectFloatParameter-request> is deprecated: use vrep_common-srv:simRosGetObjectFloatParameter-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetObjectFloatParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'parameterID-val :lambda-list '(m))
(cl:defmethod parameterID-val ((m <simRosGetObjectFloatParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterID-val is deprecated.  Use vrep_common-srv:parameterID instead.")
  (parameterID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectFloatParameter-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectFloatParameter-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectFloatParameter-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectFloatParameter-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectFloatParameter-request>)))
  "Returns string type for a service object of type '<simRosGetObjectFloatParameter-request>"
  "vrep_common/simRosGetObjectFloatParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectFloatParameter-request)))
  "Returns string type for a service object of type 'simRosGetObjectFloatParameter-request"
  "vrep_common/simRosGetObjectFloatParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectFloatParameter-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectFloatParameter-request>"
  "edd72a73282db218f389ebdcac7cbdd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectFloatParameter-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectFloatParameter-request"
  "edd72a73282db218f389ebdcac7cbdd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectFloatParameter-request>)))
  "Returns full string definition for message of type '<simRosGetObjectFloatParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameterID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectFloatParameter-request)))
  "Returns full string definition for message of type 'simRosGetObjectFloatParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parameterID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectFloatParameter-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectFloatParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectFloatParameter-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':parameterID (parameterID msg))
))
;//! \htmlinclude simRosGetObjectFloatParameter-response.msg.html

(cl:defclass <simRosGetObjectFloatParameter-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass simRosGetObjectFloatParameter-response (<simRosGetObjectFloatParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectFloatParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectFloatParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectFloatParameter-response> is deprecated: use vrep_common-srv:simRosGetObjectFloatParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetObjectFloatParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'parameterValue-val :lambda-list '(m))
(cl:defmethod parameterValue-val ((m <simRosGetObjectFloatParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValue-val is deprecated.  Use vrep_common-srv:parameterValue instead.")
  (parameterValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectFloatParameter-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectFloatParameter-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectFloatParameter-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectFloatParameter-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectFloatParameter-response>)))
  "Returns string type for a service object of type '<simRosGetObjectFloatParameter-response>"
  "vrep_common/simRosGetObjectFloatParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectFloatParameter-response)))
  "Returns string type for a service object of type 'simRosGetObjectFloatParameter-response"
  "vrep_common/simRosGetObjectFloatParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectFloatParameter-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectFloatParameter-response>"
  "edd72a73282db218f389ebdcac7cbdd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectFloatParameter-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectFloatParameter-response"
  "edd72a73282db218f389ebdcac7cbdd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectFloatParameter-response>)))
  "Returns full string definition for message of type '<simRosGetObjectFloatParameter-response>"
  (cl:format cl:nil "int32 result~%float32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectFloatParameter-response)))
  "Returns full string definition for message of type 'simRosGetObjectFloatParameter-response"
  (cl:format cl:nil "int32 result~%float32 parameterValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectFloatParameter-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectFloatParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectFloatParameter-response
    (cl:cons ':result (result msg))
    (cl:cons ':parameterValue (parameterValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectFloatParameter)))
  'simRosGetObjectFloatParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectFloatParameter)))
  'simRosGetObjectFloatParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectFloatParameter)))
  "Returns string type for a service object of type '<simRosGetObjectFloatParameter>"
  "vrep_common/simRosGetObjectFloatParameter")