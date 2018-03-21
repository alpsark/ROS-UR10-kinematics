; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosDisablePublisher-request.msg.html

(cl:defclass <simRosDisablePublisher-request> (roslisp-msg-protocol:ros-message)
  ((topicName
    :reader topicName
    :initarg :topicName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosDisablePublisher-request (<simRosDisablePublisher-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosDisablePublisher-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosDisablePublisher-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosDisablePublisher-request> is deprecated: use vrep_common-srv:simRosDisablePublisher-request instead.")))

(cl:ensure-generic-function 'topicName-val :lambda-list '(m))
(cl:defmethod topicName-val ((m <simRosDisablePublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:topicName-val is deprecated.  Use vrep_common-srv:topicName instead.")
  (topicName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosDisablePublisher-request>) ostream)
  "Serializes a message object of type '<simRosDisablePublisher-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topicName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topicName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosDisablePublisher-request>) istream)
  "Deserializes a message object of type '<simRosDisablePublisher-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topicName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topicName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosDisablePublisher-request>)))
  "Returns string type for a service object of type '<simRosDisablePublisher-request>"
  "vrep_common/simRosDisablePublisherRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisablePublisher-request)))
  "Returns string type for a service object of type 'simRosDisablePublisher-request"
  "vrep_common/simRosDisablePublisherRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosDisablePublisher-request>)))
  "Returns md5sum for a message object of type '<simRosDisablePublisher-request>"
  "468250467bc8406ae24bdf79d4391996")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosDisablePublisher-request)))
  "Returns md5sum for a message object of type 'simRosDisablePublisher-request"
  "468250467bc8406ae24bdf79d4391996")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosDisablePublisher-request>)))
  "Returns full string definition for message of type '<simRosDisablePublisher-request>"
  (cl:format cl:nil "~%~%~%~%string topicName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosDisablePublisher-request)))
  "Returns full string definition for message of type 'simRosDisablePublisher-request"
  (cl:format cl:nil "~%~%~%~%string topicName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosDisablePublisher-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topicName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosDisablePublisher-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosDisablePublisher-request
    (cl:cons ':topicName (topicName msg))
))
;//! \htmlinclude simRosDisablePublisher-response.msg.html

(cl:defclass <simRosDisablePublisher-response> (roslisp-msg-protocol:ros-message)
  ((referenceCounter
    :reader referenceCounter
    :initarg :referenceCounter
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosDisablePublisher-response (<simRosDisablePublisher-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosDisablePublisher-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosDisablePublisher-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosDisablePublisher-response> is deprecated: use vrep_common-srv:simRosDisablePublisher-response instead.")))

(cl:ensure-generic-function 'referenceCounter-val :lambda-list '(m))
(cl:defmethod referenceCounter-val ((m <simRosDisablePublisher-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:referenceCounter-val is deprecated.  Use vrep_common-srv:referenceCounter instead.")
  (referenceCounter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosDisablePublisher-response>) ostream)
  "Serializes a message object of type '<simRosDisablePublisher-response>"
  (cl:let* ((signed (cl:slot-value msg 'referenceCounter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosDisablePublisher-response>) istream)
  "Deserializes a message object of type '<simRosDisablePublisher-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'referenceCounter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosDisablePublisher-response>)))
  "Returns string type for a service object of type '<simRosDisablePublisher-response>"
  "vrep_common/simRosDisablePublisherResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisablePublisher-response)))
  "Returns string type for a service object of type 'simRosDisablePublisher-response"
  "vrep_common/simRosDisablePublisherResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosDisablePublisher-response>)))
  "Returns md5sum for a message object of type '<simRosDisablePublisher-response>"
  "468250467bc8406ae24bdf79d4391996")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosDisablePublisher-response)))
  "Returns md5sum for a message object of type 'simRosDisablePublisher-response"
  "468250467bc8406ae24bdf79d4391996")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosDisablePublisher-response>)))
  "Returns full string definition for message of type '<simRosDisablePublisher-response>"
  (cl:format cl:nil "int32 referenceCounter~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosDisablePublisher-response)))
  "Returns full string definition for message of type 'simRosDisablePublisher-response"
  (cl:format cl:nil "int32 referenceCounter~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosDisablePublisher-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosDisablePublisher-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosDisablePublisher-response
    (cl:cons ':referenceCounter (referenceCounter msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosDisablePublisher)))
  'simRosDisablePublisher-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosDisablePublisher)))
  'simRosDisablePublisher-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisablePublisher)))
  "Returns string type for a service object of type '<simRosDisablePublisher>"
  "vrep_common/simRosDisablePublisher")