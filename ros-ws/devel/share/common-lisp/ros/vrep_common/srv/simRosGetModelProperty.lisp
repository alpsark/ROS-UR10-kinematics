; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetModelProperty-request.msg.html

(cl:defclass <simRosGetModelProperty-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetModelProperty-request (<simRosGetModelProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetModelProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetModelProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetModelProperty-request> is deprecated: use vrep_common-srv:simRosGetModelProperty-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetModelProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetModelProperty-request>) ostream)
  "Serializes a message object of type '<simRosGetModelProperty-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetModelProperty-request>) istream)
  "Deserializes a message object of type '<simRosGetModelProperty-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetModelProperty-request>)))
  "Returns string type for a service object of type '<simRosGetModelProperty-request>"
  "vrep_common/simRosGetModelPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetModelProperty-request)))
  "Returns string type for a service object of type 'simRosGetModelProperty-request"
  "vrep_common/simRosGetModelPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetModelProperty-request>)))
  "Returns md5sum for a message object of type '<simRosGetModelProperty-request>"
  "a54fb13fa756ea26f936de88d4121319")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetModelProperty-request)))
  "Returns md5sum for a message object of type 'simRosGetModelProperty-request"
  "a54fb13fa756ea26f936de88d4121319")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetModelProperty-request>)))
  "Returns full string definition for message of type '<simRosGetModelProperty-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetModelProperty-request)))
  "Returns full string definition for message of type 'simRosGetModelProperty-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetModelProperty-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetModelProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetModelProperty-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosGetModelProperty-response.msg.html

(cl:defclass <simRosGetModelProperty-response> (roslisp-msg-protocol:ros-message)
  ((propertyValue
    :reader propertyValue
    :initarg :propertyValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetModelProperty-response (<simRosGetModelProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetModelProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetModelProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetModelProperty-response> is deprecated: use vrep_common-srv:simRosGetModelProperty-response instead.")))

(cl:ensure-generic-function 'propertyValue-val :lambda-list '(m))
(cl:defmethod propertyValue-val ((m <simRosGetModelProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:propertyValue-val is deprecated.  Use vrep_common-srv:propertyValue instead.")
  (propertyValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetModelProperty-response>) ostream)
  "Serializes a message object of type '<simRosGetModelProperty-response>"
  (cl:let* ((signed (cl:slot-value msg 'propertyValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetModelProperty-response>) istream)
  "Deserializes a message object of type '<simRosGetModelProperty-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'propertyValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetModelProperty-response>)))
  "Returns string type for a service object of type '<simRosGetModelProperty-response>"
  "vrep_common/simRosGetModelPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetModelProperty-response)))
  "Returns string type for a service object of type 'simRosGetModelProperty-response"
  "vrep_common/simRosGetModelPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetModelProperty-response>)))
  "Returns md5sum for a message object of type '<simRosGetModelProperty-response>"
  "a54fb13fa756ea26f936de88d4121319")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetModelProperty-response)))
  "Returns md5sum for a message object of type 'simRosGetModelProperty-response"
  "a54fb13fa756ea26f936de88d4121319")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetModelProperty-response>)))
  "Returns full string definition for message of type '<simRosGetModelProperty-response>"
  (cl:format cl:nil "int32 propertyValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetModelProperty-response)))
  "Returns full string definition for message of type 'simRosGetModelProperty-response"
  (cl:format cl:nil "int32 propertyValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetModelProperty-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetModelProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetModelProperty-response
    (cl:cons ':propertyValue (propertyValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetModelProperty)))
  'simRosGetModelProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetModelProperty)))
  'simRosGetModelProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetModelProperty)))
  "Returns string type for a service object of type '<simRosGetModelProperty>"
  "vrep_common/simRosGetModelProperty")