; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetCollectionHandle-request.msg.html

(cl:defclass <simRosGetCollectionHandle-request> (roslisp-msg-protocol:ros-message)
  ((collectionName
    :reader collectionName
    :initarg :collectionName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetCollectionHandle-request (<simRosGetCollectionHandle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetCollectionHandle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetCollectionHandle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetCollectionHandle-request> is deprecated: use vrep_common-srv:simRosGetCollectionHandle-request instead.")))

(cl:ensure-generic-function 'collectionName-val :lambda-list '(m))
(cl:defmethod collectionName-val ((m <simRosGetCollectionHandle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:collectionName-val is deprecated.  Use vrep_common-srv:collectionName instead.")
  (collectionName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetCollectionHandle-request>) ostream)
  "Serializes a message object of type '<simRosGetCollectionHandle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collectionName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collectionName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetCollectionHandle-request>) istream)
  "Deserializes a message object of type '<simRosGetCollectionHandle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collectionName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collectionName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetCollectionHandle-request>)))
  "Returns string type for a service object of type '<simRosGetCollectionHandle-request>"
  "vrep_common/simRosGetCollectionHandleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetCollectionHandle-request)))
  "Returns string type for a service object of type 'simRosGetCollectionHandle-request"
  "vrep_common/simRosGetCollectionHandleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetCollectionHandle-request>)))
  "Returns md5sum for a message object of type '<simRosGetCollectionHandle-request>"
  "9a88cbc3c0b9dc318a5ae82846bcf63b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetCollectionHandle-request)))
  "Returns md5sum for a message object of type 'simRosGetCollectionHandle-request"
  "9a88cbc3c0b9dc318a5ae82846bcf63b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetCollectionHandle-request>)))
  "Returns full string definition for message of type '<simRosGetCollectionHandle-request>"
  (cl:format cl:nil "~%~%~%~%string collectionName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetCollectionHandle-request)))
  "Returns full string definition for message of type 'simRosGetCollectionHandle-request"
  (cl:format cl:nil "~%~%~%~%string collectionName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetCollectionHandle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'collectionName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetCollectionHandle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetCollectionHandle-request
    (cl:cons ':collectionName (collectionName msg))
))
;//! \htmlinclude simRosGetCollectionHandle-response.msg.html

(cl:defclass <simRosGetCollectionHandle-response> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetCollectionHandle-response (<simRosGetCollectionHandle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetCollectionHandle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetCollectionHandle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetCollectionHandle-response> is deprecated: use vrep_common-srv:simRosGetCollectionHandle-response instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetCollectionHandle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetCollectionHandle-response>) ostream)
  "Serializes a message object of type '<simRosGetCollectionHandle-response>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetCollectionHandle-response>) istream)
  "Deserializes a message object of type '<simRosGetCollectionHandle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetCollectionHandle-response>)))
  "Returns string type for a service object of type '<simRosGetCollectionHandle-response>"
  "vrep_common/simRosGetCollectionHandleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetCollectionHandle-response)))
  "Returns string type for a service object of type 'simRosGetCollectionHandle-response"
  "vrep_common/simRosGetCollectionHandleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetCollectionHandle-response>)))
  "Returns md5sum for a message object of type '<simRosGetCollectionHandle-response>"
  "9a88cbc3c0b9dc318a5ae82846bcf63b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetCollectionHandle-response)))
  "Returns md5sum for a message object of type 'simRosGetCollectionHandle-response"
  "9a88cbc3c0b9dc318a5ae82846bcf63b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetCollectionHandle-response>)))
  "Returns full string definition for message of type '<simRosGetCollectionHandle-response>"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetCollectionHandle-response)))
  "Returns full string definition for message of type 'simRosGetCollectionHandle-response"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetCollectionHandle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetCollectionHandle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetCollectionHandle-response
    (cl:cons ':handle (handle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetCollectionHandle)))
  'simRosGetCollectionHandle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetCollectionHandle)))
  'simRosGetCollectionHandle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetCollectionHandle)))
  "Returns string type for a service object of type '<simRosGetCollectionHandle>"
  "vrep_common/simRosGetCollectionHandle")