; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetCollisionHandle-request.msg.html

(cl:defclass <simRosGetCollisionHandle-request> (roslisp-msg-protocol:ros-message)
  ((collisionName
    :reader collisionName
    :initarg :collisionName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetCollisionHandle-request (<simRosGetCollisionHandle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetCollisionHandle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetCollisionHandle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetCollisionHandle-request> is deprecated: use vrep_common-srv:simRosGetCollisionHandle-request instead.")))

(cl:ensure-generic-function 'collisionName-val :lambda-list '(m))
(cl:defmethod collisionName-val ((m <simRosGetCollisionHandle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:collisionName-val is deprecated.  Use vrep_common-srv:collisionName instead.")
  (collisionName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetCollisionHandle-request>) ostream)
  "Serializes a message object of type '<simRosGetCollisionHandle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collisionName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collisionName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetCollisionHandle-request>) istream)
  "Deserializes a message object of type '<simRosGetCollisionHandle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collisionName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collisionName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetCollisionHandle-request>)))
  "Returns string type for a service object of type '<simRosGetCollisionHandle-request>"
  "vrep_common/simRosGetCollisionHandleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetCollisionHandle-request)))
  "Returns string type for a service object of type 'simRosGetCollisionHandle-request"
  "vrep_common/simRosGetCollisionHandleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetCollisionHandle-request>)))
  "Returns md5sum for a message object of type '<simRosGetCollisionHandle-request>"
  "c921683644719c386866fcd63b2e041d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetCollisionHandle-request)))
  "Returns md5sum for a message object of type 'simRosGetCollisionHandle-request"
  "c921683644719c386866fcd63b2e041d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetCollisionHandle-request>)))
  "Returns full string definition for message of type '<simRosGetCollisionHandle-request>"
  (cl:format cl:nil "~%~%~%~%string collisionName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetCollisionHandle-request)))
  "Returns full string definition for message of type 'simRosGetCollisionHandle-request"
  (cl:format cl:nil "~%~%~%~%string collisionName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetCollisionHandle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'collisionName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetCollisionHandle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetCollisionHandle-request
    (cl:cons ':collisionName (collisionName msg))
))
;//! \htmlinclude simRosGetCollisionHandle-response.msg.html

(cl:defclass <simRosGetCollisionHandle-response> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetCollisionHandle-response (<simRosGetCollisionHandle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetCollisionHandle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetCollisionHandle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetCollisionHandle-response> is deprecated: use vrep_common-srv:simRosGetCollisionHandle-response instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetCollisionHandle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetCollisionHandle-response>) ostream)
  "Serializes a message object of type '<simRosGetCollisionHandle-response>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetCollisionHandle-response>) istream)
  "Deserializes a message object of type '<simRosGetCollisionHandle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetCollisionHandle-response>)))
  "Returns string type for a service object of type '<simRosGetCollisionHandle-response>"
  "vrep_common/simRosGetCollisionHandleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetCollisionHandle-response)))
  "Returns string type for a service object of type 'simRosGetCollisionHandle-response"
  "vrep_common/simRosGetCollisionHandleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetCollisionHandle-response>)))
  "Returns md5sum for a message object of type '<simRosGetCollisionHandle-response>"
  "c921683644719c386866fcd63b2e041d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetCollisionHandle-response)))
  "Returns md5sum for a message object of type 'simRosGetCollisionHandle-response"
  "c921683644719c386866fcd63b2e041d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetCollisionHandle-response>)))
  "Returns full string definition for message of type '<simRosGetCollisionHandle-response>"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetCollisionHandle-response)))
  "Returns full string definition for message of type 'simRosGetCollisionHandle-response"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetCollisionHandle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetCollisionHandle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetCollisionHandle-response
    (cl:cons ':handle (handle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetCollisionHandle)))
  'simRosGetCollisionHandle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetCollisionHandle)))
  'simRosGetCollisionHandle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetCollisionHandle)))
  "Returns string type for a service object of type '<simRosGetCollisionHandle>"
  "vrep_common/simRosGetCollisionHandle")