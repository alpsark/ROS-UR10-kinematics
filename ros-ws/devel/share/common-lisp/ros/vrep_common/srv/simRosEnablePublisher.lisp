; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosEnablePublisher-request.msg.html

(cl:defclass <simRosEnablePublisher-request> (roslisp-msg-protocol:ros-message)
  ((topicName
    :reader topicName
    :initarg :topicName
    :type cl:string
    :initform "")
   (queueSize
    :reader queueSize
    :initarg :queueSize
    :type cl:integer
    :initform 0)
   (streamCmd
    :reader streamCmd
    :initarg :streamCmd
    :type cl:integer
    :initform 0)
   (auxInt1
    :reader auxInt1
    :initarg :auxInt1
    :type cl:integer
    :initform 0)
   (auxInt2
    :reader auxInt2
    :initarg :auxInt2
    :type cl:integer
    :initform 0)
   (auxString
    :reader auxString
    :initarg :auxString
    :type cl:string
    :initform ""))
)

(cl:defclass simRosEnablePublisher-request (<simRosEnablePublisher-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEnablePublisher-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEnablePublisher-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEnablePublisher-request> is deprecated: use vrep_common-srv:simRosEnablePublisher-request instead.")))

(cl:ensure-generic-function 'topicName-val :lambda-list '(m))
(cl:defmethod topicName-val ((m <simRosEnablePublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:topicName-val is deprecated.  Use vrep_common-srv:topicName instead.")
  (topicName m))

(cl:ensure-generic-function 'queueSize-val :lambda-list '(m))
(cl:defmethod queueSize-val ((m <simRosEnablePublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:queueSize-val is deprecated.  Use vrep_common-srv:queueSize instead.")
  (queueSize m))

(cl:ensure-generic-function 'streamCmd-val :lambda-list '(m))
(cl:defmethod streamCmd-val ((m <simRosEnablePublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:streamCmd-val is deprecated.  Use vrep_common-srv:streamCmd instead.")
  (streamCmd m))

(cl:ensure-generic-function 'auxInt1-val :lambda-list '(m))
(cl:defmethod auxInt1-val ((m <simRosEnablePublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:auxInt1-val is deprecated.  Use vrep_common-srv:auxInt1 instead.")
  (auxInt1 m))

(cl:ensure-generic-function 'auxInt2-val :lambda-list '(m))
(cl:defmethod auxInt2-val ((m <simRosEnablePublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:auxInt2-val is deprecated.  Use vrep_common-srv:auxInt2 instead.")
  (auxInt2 m))

(cl:ensure-generic-function 'auxString-val :lambda-list '(m))
(cl:defmethod auxString-val ((m <simRosEnablePublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:auxString-val is deprecated.  Use vrep_common-srv:auxString instead.")
  (auxString m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEnablePublisher-request>) ostream)
  "Serializes a message object of type '<simRosEnablePublisher-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topicName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topicName))
  (cl:let* ((signed (cl:slot-value msg 'queueSize)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'streamCmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'auxInt1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'auxInt2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'auxString))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'auxString))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEnablePublisher-request>) istream)
  "Deserializes a message object of type '<simRosEnablePublisher-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topicName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topicName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'queueSize) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'streamCmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auxInt1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auxInt2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auxString) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'auxString) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEnablePublisher-request>)))
  "Returns string type for a service object of type '<simRosEnablePublisher-request>"
  "vrep_common/simRosEnablePublisherRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEnablePublisher-request)))
  "Returns string type for a service object of type 'simRosEnablePublisher-request"
  "vrep_common/simRosEnablePublisherRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEnablePublisher-request>)))
  "Returns md5sum for a message object of type '<simRosEnablePublisher-request>"
  "1656daea9e4b58b53b650fa39f39e74e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEnablePublisher-request)))
  "Returns md5sum for a message object of type 'simRosEnablePublisher-request"
  "1656daea9e4b58b53b650fa39f39e74e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEnablePublisher-request>)))
  "Returns full string definition for message of type '<simRosEnablePublisher-request>"
  (cl:format cl:nil "~%~%~%~%string topicName~%int32 queueSize~%int32 streamCmd~%int32 auxInt1~%int32 auxInt2~%string auxString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEnablePublisher-request)))
  "Returns full string definition for message of type 'simRosEnablePublisher-request"
  (cl:format cl:nil "~%~%~%~%string topicName~%int32 queueSize~%int32 streamCmd~%int32 auxInt1~%int32 auxInt2~%string auxString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEnablePublisher-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topicName))
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'auxString))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEnablePublisher-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEnablePublisher-request
    (cl:cons ':topicName (topicName msg))
    (cl:cons ':queueSize (queueSize msg))
    (cl:cons ':streamCmd (streamCmd msg))
    (cl:cons ':auxInt1 (auxInt1 msg))
    (cl:cons ':auxInt2 (auxInt2 msg))
    (cl:cons ':auxString (auxString msg))
))
;//! \htmlinclude simRosEnablePublisher-response.msg.html

(cl:defclass <simRosEnablePublisher-response> (roslisp-msg-protocol:ros-message)
  ((effectiveTopicName
    :reader effectiveTopicName
    :initarg :effectiveTopicName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosEnablePublisher-response (<simRosEnablePublisher-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEnablePublisher-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEnablePublisher-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEnablePublisher-response> is deprecated: use vrep_common-srv:simRosEnablePublisher-response instead.")))

(cl:ensure-generic-function 'effectiveTopicName-val :lambda-list '(m))
(cl:defmethod effectiveTopicName-val ((m <simRosEnablePublisher-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:effectiveTopicName-val is deprecated.  Use vrep_common-srv:effectiveTopicName instead.")
  (effectiveTopicName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEnablePublisher-response>) ostream)
  "Serializes a message object of type '<simRosEnablePublisher-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'effectiveTopicName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'effectiveTopicName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEnablePublisher-response>) istream)
  "Deserializes a message object of type '<simRosEnablePublisher-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'effectiveTopicName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'effectiveTopicName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEnablePublisher-response>)))
  "Returns string type for a service object of type '<simRosEnablePublisher-response>"
  "vrep_common/simRosEnablePublisherResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEnablePublisher-response)))
  "Returns string type for a service object of type 'simRosEnablePublisher-response"
  "vrep_common/simRosEnablePublisherResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEnablePublisher-response>)))
  "Returns md5sum for a message object of type '<simRosEnablePublisher-response>"
  "1656daea9e4b58b53b650fa39f39e74e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEnablePublisher-response)))
  "Returns md5sum for a message object of type 'simRosEnablePublisher-response"
  "1656daea9e4b58b53b650fa39f39e74e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEnablePublisher-response>)))
  "Returns full string definition for message of type '<simRosEnablePublisher-response>"
  (cl:format cl:nil "string effectiveTopicName~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEnablePublisher-response)))
  "Returns full string definition for message of type 'simRosEnablePublisher-response"
  (cl:format cl:nil "string effectiveTopicName~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEnablePublisher-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'effectiveTopicName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEnablePublisher-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEnablePublisher-response
    (cl:cons ':effectiveTopicName (effectiveTopicName msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosEnablePublisher)))
  'simRosEnablePublisher-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosEnablePublisher)))
  'simRosEnablePublisher-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEnablePublisher)))
  "Returns string type for a service object of type '<simRosEnablePublisher>"
  "vrep_common/simRosEnablePublisher")