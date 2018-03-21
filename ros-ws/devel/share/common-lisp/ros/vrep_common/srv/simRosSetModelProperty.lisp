; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetModelProperty-request.msg.html

(cl:defclass <simRosSetModelProperty-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (propertyValue
    :reader propertyValue
    :initarg :propertyValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetModelProperty-request (<simRosSetModelProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetModelProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetModelProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetModelProperty-request> is deprecated: use vrep_common-srv:simRosSetModelProperty-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetModelProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'propertyValue-val :lambda-list '(m))
(cl:defmethod propertyValue-val ((m <simRosSetModelProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:propertyValue-val is deprecated.  Use vrep_common-srv:propertyValue instead.")
  (propertyValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetModelProperty-request>) ostream)
  "Serializes a message object of type '<simRosSetModelProperty-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'propertyValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetModelProperty-request>) istream)
  "Deserializes a message object of type '<simRosSetModelProperty-request>"
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
      (cl:setf (cl:slot-value msg 'propertyValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetModelProperty-request>)))
  "Returns string type for a service object of type '<simRosSetModelProperty-request>"
  "vrep_common/simRosSetModelPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetModelProperty-request)))
  "Returns string type for a service object of type 'simRosSetModelProperty-request"
  "vrep_common/simRosSetModelPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetModelProperty-request>)))
  "Returns md5sum for a message object of type '<simRosSetModelProperty-request>"
  "7f97a83fe47ddd7d7a57ba9fe6623621")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetModelProperty-request)))
  "Returns md5sum for a message object of type 'simRosSetModelProperty-request"
  "7f97a83fe47ddd7d7a57ba9fe6623621")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetModelProperty-request>)))
  "Returns full string definition for message of type '<simRosSetModelProperty-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 propertyValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetModelProperty-request)))
  "Returns full string definition for message of type 'simRosSetModelProperty-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 propertyValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetModelProperty-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetModelProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetModelProperty-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':propertyValue (propertyValue msg))
))
;//! \htmlinclude simRosSetModelProperty-response.msg.html

(cl:defclass <simRosSetModelProperty-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetModelProperty-response (<simRosSetModelProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetModelProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetModelProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetModelProperty-response> is deprecated: use vrep_common-srv:simRosSetModelProperty-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetModelProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetModelProperty-response>) ostream)
  "Serializes a message object of type '<simRosSetModelProperty-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetModelProperty-response>) istream)
  "Deserializes a message object of type '<simRosSetModelProperty-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetModelProperty-response>)))
  "Returns string type for a service object of type '<simRosSetModelProperty-response>"
  "vrep_common/simRosSetModelPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetModelProperty-response)))
  "Returns string type for a service object of type 'simRosSetModelProperty-response"
  "vrep_common/simRosSetModelPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetModelProperty-response>)))
  "Returns md5sum for a message object of type '<simRosSetModelProperty-response>"
  "7f97a83fe47ddd7d7a57ba9fe6623621")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetModelProperty-response)))
  "Returns md5sum for a message object of type 'simRosSetModelProperty-response"
  "7f97a83fe47ddd7d7a57ba9fe6623621")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetModelProperty-response>)))
  "Returns full string definition for message of type '<simRosSetModelProperty-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetModelProperty-response)))
  "Returns full string definition for message of type 'simRosSetModelProperty-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetModelProperty-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetModelProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetModelProperty-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetModelProperty)))
  'simRosSetModelProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetModelProperty)))
  'simRosSetModelProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetModelProperty)))
  "Returns string type for a service object of type '<simRosSetModelProperty>"
  "vrep_common/simRosSetModelProperty")