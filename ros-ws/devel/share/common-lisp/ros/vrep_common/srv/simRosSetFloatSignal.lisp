; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetFloatSignal-request.msg.html

(cl:defclass <simRosSetFloatSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform "")
   (signalValue
    :reader signalValue
    :initarg :signalValue
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosSetFloatSignal-request (<simRosSetFloatSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetFloatSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetFloatSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetFloatSignal-request> is deprecated: use vrep_common-srv:simRosSetFloatSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosSetFloatSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosSetFloatSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetFloatSignal-request>) ostream)
  "Serializes a message object of type '<simRosSetFloatSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'signalValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetFloatSignal-request>) istream)
  "Deserializes a message object of type '<simRosSetFloatSignal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'signalValue) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetFloatSignal-request>)))
  "Returns string type for a service object of type '<simRosSetFloatSignal-request>"
  "vrep_common/simRosSetFloatSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetFloatSignal-request)))
  "Returns string type for a service object of type 'simRosSetFloatSignal-request"
  "vrep_common/simRosSetFloatSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetFloatSignal-request>)))
  "Returns md5sum for a message object of type '<simRosSetFloatSignal-request>"
  "4f2e9ccc881d859d0bc9a087fe7a0075")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetFloatSignal-request)))
  "Returns md5sum for a message object of type 'simRosSetFloatSignal-request"
  "4f2e9ccc881d859d0bc9a087fe7a0075")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetFloatSignal-request>)))
  "Returns full string definition for message of type '<simRosSetFloatSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%float32 signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetFloatSignal-request)))
  "Returns full string definition for message of type 'simRosSetFloatSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%float32 signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetFloatSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetFloatSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetFloatSignal-request
    (cl:cons ':signalName (signalName msg))
    (cl:cons ':signalValue (signalValue msg))
))
;//! \htmlinclude simRosSetFloatSignal-response.msg.html

(cl:defclass <simRosSetFloatSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetFloatSignal-response (<simRosSetFloatSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetFloatSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetFloatSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetFloatSignal-response> is deprecated: use vrep_common-srv:simRosSetFloatSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetFloatSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetFloatSignal-response>) ostream)
  "Serializes a message object of type '<simRosSetFloatSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetFloatSignal-response>) istream)
  "Deserializes a message object of type '<simRosSetFloatSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetFloatSignal-response>)))
  "Returns string type for a service object of type '<simRosSetFloatSignal-response>"
  "vrep_common/simRosSetFloatSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetFloatSignal-response)))
  "Returns string type for a service object of type 'simRosSetFloatSignal-response"
  "vrep_common/simRosSetFloatSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetFloatSignal-response>)))
  "Returns md5sum for a message object of type '<simRosSetFloatSignal-response>"
  "4f2e9ccc881d859d0bc9a087fe7a0075")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetFloatSignal-response)))
  "Returns md5sum for a message object of type 'simRosSetFloatSignal-response"
  "4f2e9ccc881d859d0bc9a087fe7a0075")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetFloatSignal-response>)))
  "Returns full string definition for message of type '<simRosSetFloatSignal-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetFloatSignal-response)))
  "Returns full string definition for message of type 'simRosSetFloatSignal-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetFloatSignal-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetFloatSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetFloatSignal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetFloatSignal)))
  'simRosSetFloatSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetFloatSignal)))
  'simRosSetFloatSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetFloatSignal)))
  "Returns string type for a service object of type '<simRosSetFloatSignal>"
  "vrep_common/simRosSetFloatSignal")