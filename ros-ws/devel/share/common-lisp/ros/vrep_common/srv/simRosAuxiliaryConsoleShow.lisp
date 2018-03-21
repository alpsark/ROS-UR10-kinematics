; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosAuxiliaryConsoleShow-request.msg.html

(cl:defclass <simRosAuxiliaryConsoleShow-request> (roslisp-msg-protocol:ros-message)
  ((consoleHandle
    :reader consoleHandle
    :initarg :consoleHandle
    :type cl:integer
    :initform 0)
   (showState
    :reader showState
    :initarg :showState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass simRosAuxiliaryConsoleShow-request (<simRosAuxiliaryConsoleShow-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsoleShow-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsoleShow-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsoleShow-request> is deprecated: use vrep_common-srv:simRosAuxiliaryConsoleShow-request instead.")))

(cl:ensure-generic-function 'consoleHandle-val :lambda-list '(m))
(cl:defmethod consoleHandle-val ((m <simRosAuxiliaryConsoleShow-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:consoleHandle-val is deprecated.  Use vrep_common-srv:consoleHandle instead.")
  (consoleHandle m))

(cl:ensure-generic-function 'showState-val :lambda-list '(m))
(cl:defmethod showState-val ((m <simRosAuxiliaryConsoleShow-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:showState-val is deprecated.  Use vrep_common-srv:showState instead.")
  (showState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsoleShow-request>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsoleShow-request>"
  (cl:let* ((signed (cl:slot-value msg 'consoleHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'showState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsoleShow-request>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsoleShow-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'consoleHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'showState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsoleShow-request>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleShow-request>"
  "vrep_common/simRosAuxiliaryConsoleShowRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleShow-request)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsoleShow-request"
  "vrep_common/simRosAuxiliaryConsoleShowRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsoleShow-request>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsoleShow-request>"
  "0441070f5e93cc5cd766aa59d6093443")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsoleShow-request)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsoleShow-request"
  "0441070f5e93cc5cd766aa59d6093443")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsoleShow-request>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsoleShow-request>"
  (cl:format cl:nil "~%~%~%~%int32 consoleHandle~%uint8 showState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsoleShow-request)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsoleShow-request"
  (cl:format cl:nil "~%~%~%~%int32 consoleHandle~%uint8 showState~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsoleShow-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsoleShow-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsoleShow-request
    (cl:cons ':consoleHandle (consoleHandle msg))
    (cl:cons ':showState (showState msg))
))
;//! \htmlinclude simRosAuxiliaryConsoleShow-response.msg.html

(cl:defclass <simRosAuxiliaryConsoleShow-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosAuxiliaryConsoleShow-response (<simRosAuxiliaryConsoleShow-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsoleShow-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsoleShow-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsoleShow-response> is deprecated: use vrep_common-srv:simRosAuxiliaryConsoleShow-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosAuxiliaryConsoleShow-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsoleShow-response>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsoleShow-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsoleShow-response>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsoleShow-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsoleShow-response>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleShow-response>"
  "vrep_common/simRosAuxiliaryConsoleShowResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleShow-response)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsoleShow-response"
  "vrep_common/simRosAuxiliaryConsoleShowResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsoleShow-response>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsoleShow-response>"
  "0441070f5e93cc5cd766aa59d6093443")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsoleShow-response)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsoleShow-response"
  "0441070f5e93cc5cd766aa59d6093443")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsoleShow-response>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsoleShow-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsoleShow-response)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsoleShow-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsoleShow-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsoleShow-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsoleShow-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosAuxiliaryConsoleShow)))
  'simRosAuxiliaryConsoleShow-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosAuxiliaryConsoleShow)))
  'simRosAuxiliaryConsoleShow-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleShow)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleShow>"
  "vrep_common/simRosAuxiliaryConsoleShow")