; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosEnableSubscriber-request.msg.html

(cl:defclass <simRosEnableSubscriber-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass simRosEnableSubscriber-request (<simRosEnableSubscriber-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEnableSubscriber-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEnableSubscriber-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEnableSubscriber-request> is deprecated: use vrep_common-srv:simRosEnableSubscriber-request instead.")))

(cl:ensure-generic-function 'topicName-val :lambda-list '(m))
(cl:defmethod topicName-val ((m <simRosEnableSubscriber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:topicName-val is deprecated.  Use vrep_common-srv:topicName instead.")
  (topicName m))

(cl:ensure-generic-function 'queueSize-val :lambda-list '(m))
(cl:defmethod queueSize-val ((m <simRosEnableSubscriber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:queueSize-val is deprecated.  Use vrep_common-srv:queueSize instead.")
  (queueSize m))

(cl:ensure-generic-function 'streamCmd-val :lambda-list '(m))
(cl:defmethod streamCmd-val ((m <simRosEnableSubscriber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:streamCmd-val is deprecated.  Use vrep_common-srv:streamCmd instead.")
  (streamCmd m))

(cl:ensure-generic-function 'auxInt1-val :lambda-list '(m))
(cl:defmethod auxInt1-val ((m <simRosEnableSubscriber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:auxInt1-val is deprecated.  Use vrep_common-srv:auxInt1 instead.")
  (auxInt1 m))

(cl:ensure-generic-function 'auxInt2-val :lambda-list '(m))
(cl:defmethod auxInt2-val ((m <simRosEnableSubscriber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:auxInt2-val is deprecated.  Use vrep_common-srv:auxInt2 instead.")
  (auxInt2 m))

(cl:ensure-generic-function 'auxString-val :lambda-list '(m))
(cl:defmethod auxString-val ((m <simRosEnableSubscriber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:auxString-val is deprecated.  Use vrep_common-srv:auxString instead.")
  (auxString m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEnableSubscriber-request>) ostream)
  "Serializes a message object of type '<simRosEnableSubscriber-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEnableSubscriber-request>) istream)
  "Deserializes a message object of type '<simRosEnableSubscriber-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEnableSubscriber-request>)))
  "Returns string type for a service object of type '<simRosEnableSubscriber-request>"
  "vrep_common/simRosEnableSubscriberRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEnableSubscriber-request)))
  "Returns string type for a service object of type 'simRosEnableSubscriber-request"
  "vrep_common/simRosEnableSubscriberRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEnableSubscriber-request>)))
  "Returns md5sum for a message object of type '<simRosEnableSubscriber-request>"
  "61a23a6c623cfe11fb9eae842a1893b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEnableSubscriber-request)))
  "Returns md5sum for a message object of type 'simRosEnableSubscriber-request"
  "61a23a6c623cfe11fb9eae842a1893b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEnableSubscriber-request>)))
  "Returns full string definition for message of type '<simRosEnableSubscriber-request>"
  (cl:format cl:nil "~%~%~%~%string topicName~%int32 queueSize~%int32 streamCmd~%int32 auxInt1~%int32 auxInt2~%string auxString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEnableSubscriber-request)))
  "Returns full string definition for message of type 'simRosEnableSubscriber-request"
  (cl:format cl:nil "~%~%~%~%string topicName~%int32 queueSize~%int32 streamCmd~%int32 auxInt1~%int32 auxInt2~%string auxString~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEnableSubscriber-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topicName))
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'auxString))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEnableSubscriber-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEnableSubscriber-request
    (cl:cons ':topicName (topicName msg))
    (cl:cons ':queueSize (queueSize msg))
    (cl:cons ':streamCmd (streamCmd msg))
    (cl:cons ':auxInt1 (auxInt1 msg))
    (cl:cons ':auxInt2 (auxInt2 msg))
    (cl:cons ':auxString (auxString msg))
))
;//! \htmlinclude simRosEnableSubscriber-response.msg.html

(cl:defclass <simRosEnableSubscriber-response> (roslisp-msg-protocol:ros-message)
  ((subscriberID
    :reader subscriberID
    :initarg :subscriberID
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosEnableSubscriber-response (<simRosEnableSubscriber-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEnableSubscriber-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEnableSubscriber-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEnableSubscriber-response> is deprecated: use vrep_common-srv:simRosEnableSubscriber-response instead.")))

(cl:ensure-generic-function 'subscriberID-val :lambda-list '(m))
(cl:defmethod subscriberID-val ((m <simRosEnableSubscriber-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:subscriberID-val is deprecated.  Use vrep_common-srv:subscriberID instead.")
  (subscriberID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEnableSubscriber-response>) ostream)
  "Serializes a message object of type '<simRosEnableSubscriber-response>"
  (cl:let* ((signed (cl:slot-value msg 'subscriberID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEnableSubscriber-response>) istream)
  "Deserializes a message object of type '<simRosEnableSubscriber-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subscriberID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEnableSubscriber-response>)))
  "Returns string type for a service object of type '<simRosEnableSubscriber-response>"
  "vrep_common/simRosEnableSubscriberResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEnableSubscriber-response)))
  "Returns string type for a service object of type 'simRosEnableSubscriber-response"
  "vrep_common/simRosEnableSubscriberResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEnableSubscriber-response>)))
  "Returns md5sum for a message object of type '<simRosEnableSubscriber-response>"
  "61a23a6c623cfe11fb9eae842a1893b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEnableSubscriber-response)))
  "Returns md5sum for a message object of type 'simRosEnableSubscriber-response"
  "61a23a6c623cfe11fb9eae842a1893b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEnableSubscriber-response>)))
  "Returns full string definition for message of type '<simRosEnableSubscriber-response>"
  (cl:format cl:nil "int32 subscriberID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEnableSubscriber-response)))
  "Returns full string definition for message of type 'simRosEnableSubscriber-response"
  (cl:format cl:nil "int32 subscriberID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEnableSubscriber-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEnableSubscriber-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEnableSubscriber-response
    (cl:cons ':subscriberID (subscriberID msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosEnableSubscriber)))
  'simRosEnableSubscriber-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosEnableSubscriber)))
  'simRosEnableSubscriber-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEnableSubscriber)))
  "Returns string type for a service object of type '<simRosEnableSubscriber>"
  "vrep_common/simRosEnableSubscriber")