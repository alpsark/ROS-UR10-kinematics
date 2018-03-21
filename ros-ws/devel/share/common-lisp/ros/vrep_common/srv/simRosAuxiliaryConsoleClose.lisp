; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosAuxiliaryConsoleClose-request.msg.html

(cl:defclass <simRosAuxiliaryConsoleClose-request> (roslisp-msg-protocol:ros-message)
  ((consoleHandle
    :reader consoleHandle
    :initarg :consoleHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosAuxiliaryConsoleClose-request (<simRosAuxiliaryConsoleClose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsoleClose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsoleClose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsoleClose-request> is deprecated: use vrep_common-srv:simRosAuxiliaryConsoleClose-request instead.")))

(cl:ensure-generic-function 'consoleHandle-val :lambda-list '(m))
(cl:defmethod consoleHandle-val ((m <simRosAuxiliaryConsoleClose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:consoleHandle-val is deprecated.  Use vrep_common-srv:consoleHandle instead.")
  (consoleHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsoleClose-request>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsoleClose-request>"
  (cl:let* ((signed (cl:slot-value msg 'consoleHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsoleClose-request>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsoleClose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'consoleHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsoleClose-request>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleClose-request>"
  "vrep_common/simRosAuxiliaryConsoleCloseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleClose-request)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsoleClose-request"
  "vrep_common/simRosAuxiliaryConsoleCloseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsoleClose-request>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsoleClose-request>"
  "fd2ff093438c8e1568be839b91a17ca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsoleClose-request)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsoleClose-request"
  "fd2ff093438c8e1568be839b91a17ca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsoleClose-request>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsoleClose-request>"
  (cl:format cl:nil "~%~%~%~%int32 consoleHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsoleClose-request)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsoleClose-request"
  (cl:format cl:nil "~%~%~%~%int32 consoleHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsoleClose-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsoleClose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsoleClose-request
    (cl:cons ':consoleHandle (consoleHandle msg))
))
;//! \htmlinclude simRosAuxiliaryConsoleClose-response.msg.html

(cl:defclass <simRosAuxiliaryConsoleClose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosAuxiliaryConsoleClose-response (<simRosAuxiliaryConsoleClose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsoleClose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsoleClose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsoleClose-response> is deprecated: use vrep_common-srv:simRosAuxiliaryConsoleClose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosAuxiliaryConsoleClose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsoleClose-response>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsoleClose-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsoleClose-response>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsoleClose-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsoleClose-response>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleClose-response>"
  "vrep_common/simRosAuxiliaryConsoleCloseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleClose-response)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsoleClose-response"
  "vrep_common/simRosAuxiliaryConsoleCloseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsoleClose-response>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsoleClose-response>"
  "fd2ff093438c8e1568be839b91a17ca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsoleClose-response)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsoleClose-response"
  "fd2ff093438c8e1568be839b91a17ca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsoleClose-response>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsoleClose-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsoleClose-response)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsoleClose-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsoleClose-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsoleClose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsoleClose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosAuxiliaryConsoleClose)))
  'simRosAuxiliaryConsoleClose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosAuxiliaryConsoleClose)))
  'simRosAuxiliaryConsoleClose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleClose)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleClose>"
  "vrep_common/simRosAuxiliaryConsoleClose")