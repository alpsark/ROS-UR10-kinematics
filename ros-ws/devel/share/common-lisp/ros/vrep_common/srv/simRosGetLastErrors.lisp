; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetLastErrors-request.msg.html

(cl:defclass <simRosGetLastErrors-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosGetLastErrors-request (<simRosGetLastErrors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetLastErrors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetLastErrors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetLastErrors-request> is deprecated: use vrep_common-srv:simRosGetLastErrors-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetLastErrors-request>) ostream)
  "Serializes a message object of type '<simRosGetLastErrors-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetLastErrors-request>) istream)
  "Deserializes a message object of type '<simRosGetLastErrors-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetLastErrors-request>)))
  "Returns string type for a service object of type '<simRosGetLastErrors-request>"
  "vrep_common/simRosGetLastErrorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetLastErrors-request)))
  "Returns string type for a service object of type 'simRosGetLastErrors-request"
  "vrep_common/simRosGetLastErrorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetLastErrors-request>)))
  "Returns md5sum for a message object of type '<simRosGetLastErrors-request>"
  "165502f1a9cdf7b50941ef103382dea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetLastErrors-request)))
  "Returns md5sum for a message object of type 'simRosGetLastErrors-request"
  "165502f1a9cdf7b50941ef103382dea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetLastErrors-request>)))
  "Returns full string definition for message of type '<simRosGetLastErrors-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetLastErrors-request)))
  "Returns full string definition for message of type 'simRosGetLastErrors-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetLastErrors-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetLastErrors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetLastErrors-request
))
;//! \htmlinclude simRosGetLastErrors-response.msg.html

(cl:defclass <simRosGetLastErrors-response> (roslisp-msg-protocol:ros-message)
  ((errorCnt
    :reader errorCnt
    :initarg :errorCnt
    :type cl:integer
    :initform 0)
   (errorStrings
    :reader errorStrings
    :initarg :errorStrings
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetLastErrors-response (<simRosGetLastErrors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetLastErrors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetLastErrors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetLastErrors-response> is deprecated: use vrep_common-srv:simRosGetLastErrors-response instead.")))

(cl:ensure-generic-function 'errorCnt-val :lambda-list '(m))
(cl:defmethod errorCnt-val ((m <simRosGetLastErrors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:errorCnt-val is deprecated.  Use vrep_common-srv:errorCnt instead.")
  (errorCnt m))

(cl:ensure-generic-function 'errorStrings-val :lambda-list '(m))
(cl:defmethod errorStrings-val ((m <simRosGetLastErrors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:errorStrings-val is deprecated.  Use vrep_common-srv:errorStrings instead.")
  (errorStrings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetLastErrors-response>) ostream)
  "Serializes a message object of type '<simRosGetLastErrors-response>"
  (cl:let* ((signed (cl:slot-value msg 'errorCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'errorStrings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'errorStrings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetLastErrors-response>) istream)
  "Deserializes a message object of type '<simRosGetLastErrors-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'errorCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'errorStrings) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'errorStrings) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetLastErrors-response>)))
  "Returns string type for a service object of type '<simRosGetLastErrors-response>"
  "vrep_common/simRosGetLastErrorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetLastErrors-response)))
  "Returns string type for a service object of type 'simRosGetLastErrors-response"
  "vrep_common/simRosGetLastErrorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetLastErrors-response>)))
  "Returns md5sum for a message object of type '<simRosGetLastErrors-response>"
  "165502f1a9cdf7b50941ef103382dea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetLastErrors-response)))
  "Returns md5sum for a message object of type 'simRosGetLastErrors-response"
  "165502f1a9cdf7b50941ef103382dea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetLastErrors-response>)))
  "Returns full string definition for message of type '<simRosGetLastErrors-response>"
  (cl:format cl:nil "int32 errorCnt~%string errorStrings~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetLastErrors-response)))
  "Returns full string definition for message of type 'simRosGetLastErrors-response"
  (cl:format cl:nil "int32 errorCnt~%string errorStrings~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetLastErrors-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'errorStrings))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetLastErrors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetLastErrors-response
    (cl:cons ':errorCnt (errorCnt msg))
    (cl:cons ':errorStrings (errorStrings msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetLastErrors)))
  'simRosGetLastErrors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetLastErrors)))
  'simRosGetLastErrors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetLastErrors)))
  "Returns string type for a service object of type '<simRosGetLastErrors>"
  "vrep_common/simRosGetLastErrors")