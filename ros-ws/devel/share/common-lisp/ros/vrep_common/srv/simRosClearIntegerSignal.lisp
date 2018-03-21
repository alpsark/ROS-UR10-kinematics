; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosClearIntegerSignal-request.msg.html

(cl:defclass <simRosClearIntegerSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosClearIntegerSignal-request (<simRosClearIntegerSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosClearIntegerSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosClearIntegerSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosClearIntegerSignal-request> is deprecated: use vrep_common-srv:simRosClearIntegerSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosClearIntegerSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosClearIntegerSignal-request>) ostream)
  "Serializes a message object of type '<simRosClearIntegerSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosClearIntegerSignal-request>) istream)
  "Deserializes a message object of type '<simRosClearIntegerSignal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosClearIntegerSignal-request>)))
  "Returns string type for a service object of type '<simRosClearIntegerSignal-request>"
  "vrep_common/simRosClearIntegerSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosClearIntegerSignal-request)))
  "Returns string type for a service object of type 'simRosClearIntegerSignal-request"
  "vrep_common/simRosClearIntegerSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosClearIntegerSignal-request>)))
  "Returns md5sum for a message object of type '<simRosClearIntegerSignal-request>"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosClearIntegerSignal-request)))
  "Returns md5sum for a message object of type 'simRosClearIntegerSignal-request"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosClearIntegerSignal-request>)))
  "Returns full string definition for message of type '<simRosClearIntegerSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosClearIntegerSignal-request)))
  "Returns full string definition for message of type 'simRosClearIntegerSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosClearIntegerSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosClearIntegerSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosClearIntegerSignal-request
    (cl:cons ':signalName (signalName msg))
))
;//! \htmlinclude simRosClearIntegerSignal-response.msg.html

(cl:defclass <simRosClearIntegerSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosClearIntegerSignal-response (<simRosClearIntegerSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosClearIntegerSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosClearIntegerSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosClearIntegerSignal-response> is deprecated: use vrep_common-srv:simRosClearIntegerSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosClearIntegerSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosClearIntegerSignal-response>) ostream)
  "Serializes a message object of type '<simRosClearIntegerSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosClearIntegerSignal-response>) istream)
  "Deserializes a message object of type '<simRosClearIntegerSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosClearIntegerSignal-response>)))
  "Returns string type for a service object of type '<simRosClearIntegerSignal-response>"
  "vrep_common/simRosClearIntegerSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosClearIntegerSignal-response)))
  "Returns string type for a service object of type 'simRosClearIntegerSignal-response"
  "vrep_common/simRosClearIntegerSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosClearIntegerSignal-response>)))
  "Returns md5sum for a message object of type '<simRosClearIntegerSignal-response>"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosClearIntegerSignal-response)))
  "Returns md5sum for a message object of type 'simRosClearIntegerSignal-response"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosClearIntegerSignal-response>)))
  "Returns full string definition for message of type '<simRosClearIntegerSignal-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosClearIntegerSignal-response)))
  "Returns full string definition for message of type 'simRosClearIntegerSignal-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosClearIntegerSignal-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosClearIntegerSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosClearIntegerSignal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosClearIntegerSignal)))
  'simRosClearIntegerSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosClearIntegerSignal)))
  'simRosClearIntegerSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosClearIntegerSignal)))
  "Returns string type for a service object of type '<simRosClearIntegerSignal>"
  "vrep_common/simRosClearIntegerSignal")