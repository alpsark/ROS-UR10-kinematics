; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectParent-request.msg.html

(cl:defclass <simRosGetObjectParent-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectParent-request (<simRosGetObjectParent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectParent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectParent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectParent-request> is deprecated: use vrep_common-srv:simRosGetObjectParent-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetObjectParent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectParent-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectParent-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectParent-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectParent-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectParent-request>)))
  "Returns string type for a service object of type '<simRosGetObjectParent-request>"
  "vrep_common/simRosGetObjectParentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectParent-request)))
  "Returns string type for a service object of type 'simRosGetObjectParent-request"
  "vrep_common/simRosGetObjectParentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectParent-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectParent-request>"
  "854ff03c655805cf1e8924bdf3e10531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectParent-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectParent-request"
  "854ff03c655805cf1e8924bdf3e10531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectParent-request>)))
  "Returns full string definition for message of type '<simRosGetObjectParent-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectParent-request)))
  "Returns full string definition for message of type 'simRosGetObjectParent-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectParent-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectParent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectParent-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosGetObjectParent-response.msg.html

(cl:defclass <simRosGetObjectParent-response> (roslisp-msg-protocol:ros-message)
  ((parentHandle
    :reader parentHandle
    :initarg :parentHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectParent-response (<simRosGetObjectParent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectParent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectParent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectParent-response> is deprecated: use vrep_common-srv:simRosGetObjectParent-response instead.")))

(cl:ensure-generic-function 'parentHandle-val :lambda-list '(m))
(cl:defmethod parentHandle-val ((m <simRosGetObjectParent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parentHandle-val is deprecated.  Use vrep_common-srv:parentHandle instead.")
  (parentHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectParent-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectParent-response>"
  (cl:let* ((signed (cl:slot-value msg 'parentHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectParent-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectParent-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parentHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectParent-response>)))
  "Returns string type for a service object of type '<simRosGetObjectParent-response>"
  "vrep_common/simRosGetObjectParentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectParent-response)))
  "Returns string type for a service object of type 'simRosGetObjectParent-response"
  "vrep_common/simRosGetObjectParentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectParent-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectParent-response>"
  "854ff03c655805cf1e8924bdf3e10531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectParent-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectParent-response"
  "854ff03c655805cf1e8924bdf3e10531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectParent-response>)))
  "Returns full string definition for message of type '<simRosGetObjectParent-response>"
  (cl:format cl:nil "int32 parentHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectParent-response)))
  "Returns full string definition for message of type 'simRosGetObjectParent-response"
  (cl:format cl:nil "int32 parentHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectParent-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectParent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectParent-response
    (cl:cons ':parentHandle (parentHandle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectParent)))
  'simRosGetObjectParent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectParent)))
  'simRosGetObjectParent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectParent)))
  "Returns string type for a service object of type '<simRosGetObjectParent>"
  "vrep_common/simRosGetObjectParent")