; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetFloatSignal-request.msg.html

(cl:defclass <simRosGetFloatSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetFloatSignal-request (<simRosGetFloatSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetFloatSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetFloatSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetFloatSignal-request> is deprecated: use vrep_common-srv:simRosGetFloatSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosGetFloatSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetFloatSignal-request>) ostream)
  "Serializes a message object of type '<simRosGetFloatSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetFloatSignal-request>) istream)
  "Deserializes a message object of type '<simRosGetFloatSignal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetFloatSignal-request>)))
  "Returns string type for a service object of type '<simRosGetFloatSignal-request>"
  "vrep_common/simRosGetFloatSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetFloatSignal-request)))
  "Returns string type for a service object of type 'simRosGetFloatSignal-request"
  "vrep_common/simRosGetFloatSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetFloatSignal-request>)))
  "Returns md5sum for a message object of type '<simRosGetFloatSignal-request>"
  "52ba64366a10126c502d44acd3f25e3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetFloatSignal-request)))
  "Returns md5sum for a message object of type 'simRosGetFloatSignal-request"
  "52ba64366a10126c502d44acd3f25e3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetFloatSignal-request>)))
  "Returns full string definition for message of type '<simRosGetFloatSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetFloatSignal-request)))
  "Returns full string definition for message of type 'simRosGetFloatSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetFloatSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetFloatSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetFloatSignal-request
    (cl:cons ':signalName (signalName msg))
))
;//! \htmlinclude simRosGetFloatSignal-response.msg.html

(cl:defclass <simRosGetFloatSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (signalValue
    :reader signalValue
    :initarg :signalValue
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosGetFloatSignal-response (<simRosGetFloatSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetFloatSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetFloatSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetFloatSignal-response> is deprecated: use vrep_common-srv:simRosGetFloatSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetFloatSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosGetFloatSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetFloatSignal-response>) ostream)
  "Serializes a message object of type '<simRosGetFloatSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'signalValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetFloatSignal-response>) istream)
  "Deserializes a message object of type '<simRosGetFloatSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'signalValue) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetFloatSignal-response>)))
  "Returns string type for a service object of type '<simRosGetFloatSignal-response>"
  "vrep_common/simRosGetFloatSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetFloatSignal-response)))
  "Returns string type for a service object of type 'simRosGetFloatSignal-response"
  "vrep_common/simRosGetFloatSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetFloatSignal-response>)))
  "Returns md5sum for a message object of type '<simRosGetFloatSignal-response>"
  "52ba64366a10126c502d44acd3f25e3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetFloatSignal-response)))
  "Returns md5sum for a message object of type 'simRosGetFloatSignal-response"
  "52ba64366a10126c502d44acd3f25e3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetFloatSignal-response>)))
  "Returns full string definition for message of type '<simRosGetFloatSignal-response>"
  (cl:format cl:nil "int32 result~%float32 signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetFloatSignal-response)))
  "Returns full string definition for message of type 'simRosGetFloatSignal-response"
  (cl:format cl:nil "int32 result~%float32 signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetFloatSignal-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetFloatSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetFloatSignal-response
    (cl:cons ':result (result msg))
    (cl:cons ':signalValue (signalValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetFloatSignal)))
  'simRosGetFloatSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetFloatSignal)))
  'simRosGetFloatSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetFloatSignal)))
  "Returns string type for a service object of type '<simRosGetFloatSignal>"
  "vrep_common/simRosGetFloatSignal")