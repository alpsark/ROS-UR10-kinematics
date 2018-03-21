; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosAuxiliaryConsolePrint-request.msg.html

(cl:defclass <simRosAuxiliaryConsolePrint-request> (roslisp-msg-protocol:ros-message)
  ((consoleHandle
    :reader consoleHandle
    :initarg :consoleHandle
    :type cl:integer
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass simRosAuxiliaryConsolePrint-request (<simRosAuxiliaryConsolePrint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsolePrint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsolePrint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsolePrint-request> is deprecated: use vrep_common-srv:simRosAuxiliaryConsolePrint-request instead.")))

(cl:ensure-generic-function 'consoleHandle-val :lambda-list '(m))
(cl:defmethod consoleHandle-val ((m <simRosAuxiliaryConsolePrint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:consoleHandle-val is deprecated.  Use vrep_common-srv:consoleHandle instead.")
  (consoleHandle m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <simRosAuxiliaryConsolePrint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:text-val is deprecated.  Use vrep_common-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsolePrint-request>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsolePrint-request>"
  (cl:let* ((signed (cl:slot-value msg 'consoleHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsolePrint-request>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsolePrint-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'consoleHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsolePrint-request>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsolePrint-request>"
  "vrep_common/simRosAuxiliaryConsolePrintRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsolePrint-request)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsolePrint-request"
  "vrep_common/simRosAuxiliaryConsolePrintRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsolePrint-request>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsolePrint-request>"
  "9d84d1075d5165c5c1bafd9cf0faa6fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsolePrint-request)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsolePrint-request"
  "9d84d1075d5165c5c1bafd9cf0faa6fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsolePrint-request>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsolePrint-request>"
  (cl:format cl:nil "~%~%~%~%int32 consoleHandle~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsolePrint-request)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsolePrint-request"
  (cl:format cl:nil "~%~%~%~%int32 consoleHandle~%string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsolePrint-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsolePrint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsolePrint-request
    (cl:cons ':consoleHandle (consoleHandle msg))
    (cl:cons ':text (text msg))
))
;//! \htmlinclude simRosAuxiliaryConsolePrint-response.msg.html

(cl:defclass <simRosAuxiliaryConsolePrint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosAuxiliaryConsolePrint-response (<simRosAuxiliaryConsolePrint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsolePrint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsolePrint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsolePrint-response> is deprecated: use vrep_common-srv:simRosAuxiliaryConsolePrint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosAuxiliaryConsolePrint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsolePrint-response>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsolePrint-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsolePrint-response>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsolePrint-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsolePrint-response>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsolePrint-response>"
  "vrep_common/simRosAuxiliaryConsolePrintResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsolePrint-response)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsolePrint-response"
  "vrep_common/simRosAuxiliaryConsolePrintResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsolePrint-response>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsolePrint-response>"
  "9d84d1075d5165c5c1bafd9cf0faa6fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsolePrint-response)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsolePrint-response"
  "9d84d1075d5165c5c1bafd9cf0faa6fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsolePrint-response>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsolePrint-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsolePrint-response)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsolePrint-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsolePrint-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsolePrint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsolePrint-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosAuxiliaryConsolePrint)))
  'simRosAuxiliaryConsolePrint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosAuxiliaryConsolePrint)))
  'simRosAuxiliaryConsolePrint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsolePrint)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsolePrint>"
  "vrep_common/simRosAuxiliaryConsolePrint")