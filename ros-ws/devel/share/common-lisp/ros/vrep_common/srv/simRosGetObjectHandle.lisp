; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectHandle-request.msg.html

(cl:defclass <simRosGetObjectHandle-request> (roslisp-msg-protocol:ros-message)
  ((objectName
    :reader objectName
    :initarg :objectName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetObjectHandle-request (<simRosGetObjectHandle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectHandle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectHandle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectHandle-request> is deprecated: use vrep_common-srv:simRosGetObjectHandle-request instead.")))

(cl:ensure-generic-function 'objectName-val :lambda-list '(m))
(cl:defmethod objectName-val ((m <simRosGetObjectHandle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:objectName-val is deprecated.  Use vrep_common-srv:objectName instead.")
  (objectName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectHandle-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectHandle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'objectName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'objectName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectHandle-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectHandle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'objectName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectHandle-request>)))
  "Returns string type for a service object of type '<simRosGetObjectHandle-request>"
  "vrep_common/simRosGetObjectHandleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectHandle-request)))
  "Returns string type for a service object of type 'simRosGetObjectHandle-request"
  "vrep_common/simRosGetObjectHandleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectHandle-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectHandle-request>"
  "5ede8bf5f32716bfd1ea7a68b46333e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectHandle-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectHandle-request"
  "5ede8bf5f32716bfd1ea7a68b46333e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectHandle-request>)))
  "Returns full string definition for message of type '<simRosGetObjectHandle-request>"
  (cl:format cl:nil "~%~%~%~%string objectName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectHandle-request)))
  "Returns full string definition for message of type 'simRosGetObjectHandle-request"
  (cl:format cl:nil "~%~%~%~%string objectName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectHandle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'objectName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectHandle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectHandle-request
    (cl:cons ':objectName (objectName msg))
))
;//! \htmlinclude simRosGetObjectHandle-response.msg.html

(cl:defclass <simRosGetObjectHandle-response> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectHandle-response (<simRosGetObjectHandle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectHandle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectHandle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectHandle-response> is deprecated: use vrep_common-srv:simRosGetObjectHandle-response instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetObjectHandle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectHandle-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectHandle-response>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectHandle-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectHandle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectHandle-response>)))
  "Returns string type for a service object of type '<simRosGetObjectHandle-response>"
  "vrep_common/simRosGetObjectHandleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectHandle-response)))
  "Returns string type for a service object of type 'simRosGetObjectHandle-response"
  "vrep_common/simRosGetObjectHandleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectHandle-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectHandle-response>"
  "5ede8bf5f32716bfd1ea7a68b46333e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectHandle-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectHandle-response"
  "5ede8bf5f32716bfd1ea7a68b46333e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectHandle-response>)))
  "Returns full string definition for message of type '<simRosGetObjectHandle-response>"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectHandle-response)))
  "Returns full string definition for message of type 'simRosGetObjectHandle-response"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectHandle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectHandle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectHandle-response
    (cl:cons ':handle (handle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectHandle)))
  'simRosGetObjectHandle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectHandle)))
  'simRosGetObjectHandle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectHandle)))
  "Returns string type for a service object of type '<simRosGetObjectHandle>"
  "vrep_common/simRosGetObjectHandle")