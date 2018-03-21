; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosAppendStringSignal-request.msg.html

(cl:defclass <simRosAppendStringSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform "")
   (signalValue
    :reader signalValue
    :initarg :signalValue
    :type cl:string
    :initform ""))
)

(cl:defclass simRosAppendStringSignal-request (<simRosAppendStringSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAppendStringSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAppendStringSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAppendStringSignal-request> is deprecated: use vrep_common-srv:simRosAppendStringSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosAppendStringSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosAppendStringSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAppendStringSignal-request>) ostream)
  "Serializes a message object of type '<simRosAppendStringSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalValue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAppendStringSignal-request>) istream)
  "Deserializes a message object of type '<simRosAppendStringSignal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signalValue) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signalValue) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAppendStringSignal-request>)))
  "Returns string type for a service object of type '<simRosAppendStringSignal-request>"
  "vrep_common/simRosAppendStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAppendStringSignal-request)))
  "Returns string type for a service object of type 'simRosAppendStringSignal-request"
  "vrep_common/simRosAppendStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAppendStringSignal-request>)))
  "Returns md5sum for a message object of type '<simRosAppendStringSignal-request>"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAppendStringSignal-request)))
  "Returns md5sum for a message object of type 'simRosAppendStringSignal-request"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAppendStringSignal-request>)))
  "Returns full string definition for message of type '<simRosAppendStringSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%string signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAppendStringSignal-request)))
  "Returns full string definition for message of type 'simRosAppendStringSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%string signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAppendStringSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
     4 (cl:length (cl:slot-value msg 'signalValue))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAppendStringSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAppendStringSignal-request
    (cl:cons ':signalName (signalName msg))
    (cl:cons ':signalValue (signalValue msg))
))
;//! \htmlinclude simRosAppendStringSignal-response.msg.html

(cl:defclass <simRosAppendStringSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosAppendStringSignal-response (<simRosAppendStringSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAppendStringSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAppendStringSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAppendStringSignal-response> is deprecated: use vrep_common-srv:simRosAppendStringSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosAppendStringSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAppendStringSignal-response>) ostream)
  "Serializes a message object of type '<simRosAppendStringSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAppendStringSignal-response>) istream)
  "Deserializes a message object of type '<simRosAppendStringSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAppendStringSignal-response>)))
  "Returns string type for a service object of type '<simRosAppendStringSignal-response>"
  "vrep_common/simRosAppendStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAppendStringSignal-response)))
  "Returns string type for a service object of type 'simRosAppendStringSignal-response"
  "vrep_common/simRosAppendStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAppendStringSignal-response>)))
  "Returns md5sum for a message object of type '<simRosAppendStringSignal-response>"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAppendStringSignal-response)))
  "Returns md5sum for a message object of type 'simRosAppendStringSignal-response"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAppendStringSignal-response>)))
  "Returns full string definition for message of type '<simRosAppendStringSignal-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAppendStringSignal-response)))
  "Returns full string definition for message of type 'simRosAppendStringSignal-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAppendStringSignal-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAppendStringSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAppendStringSignal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosAppendStringSignal)))
  'simRosAppendStringSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosAppendStringSignal)))
  'simRosAppendStringSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAppendStringSignal)))
  "Returns string type for a service object of type '<simRosAppendStringSignal>"
  "vrep_common/simRosAppendStringSignal")