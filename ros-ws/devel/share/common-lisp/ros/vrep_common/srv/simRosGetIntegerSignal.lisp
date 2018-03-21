; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetIntegerSignal-request.msg.html

(cl:defclass <simRosGetIntegerSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetIntegerSignal-request (<simRosGetIntegerSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetIntegerSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetIntegerSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetIntegerSignal-request> is deprecated: use vrep_common-srv:simRosGetIntegerSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosGetIntegerSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetIntegerSignal-request>) ostream)
  "Serializes a message object of type '<simRosGetIntegerSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetIntegerSignal-request>) istream)
  "Deserializes a message object of type '<simRosGetIntegerSignal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetIntegerSignal-request>)))
  "Returns string type for a service object of type '<simRosGetIntegerSignal-request>"
  "vrep_common/simRosGetIntegerSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetIntegerSignal-request)))
  "Returns string type for a service object of type 'simRosGetIntegerSignal-request"
  "vrep_common/simRosGetIntegerSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetIntegerSignal-request>)))
  "Returns md5sum for a message object of type '<simRosGetIntegerSignal-request>"
  "4b64ff90076d16256defe1d768083e34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetIntegerSignal-request)))
  "Returns md5sum for a message object of type 'simRosGetIntegerSignal-request"
  "4b64ff90076d16256defe1d768083e34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetIntegerSignal-request>)))
  "Returns full string definition for message of type '<simRosGetIntegerSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetIntegerSignal-request)))
  "Returns full string definition for message of type 'simRosGetIntegerSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetIntegerSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetIntegerSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetIntegerSignal-request
    (cl:cons ':signalName (signalName msg))
))
;//! \htmlinclude simRosGetIntegerSignal-response.msg.html

(cl:defclass <simRosGetIntegerSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (signalValue
    :reader signalValue
    :initarg :signalValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetIntegerSignal-response (<simRosGetIntegerSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetIntegerSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetIntegerSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetIntegerSignal-response> is deprecated: use vrep_common-srv:simRosGetIntegerSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetIntegerSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosGetIntegerSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetIntegerSignal-response>) ostream)
  "Serializes a message object of type '<simRosGetIntegerSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'signalValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetIntegerSignal-response>) istream)
  "Deserializes a message object of type '<simRosGetIntegerSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signalValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetIntegerSignal-response>)))
  "Returns string type for a service object of type '<simRosGetIntegerSignal-response>"
  "vrep_common/simRosGetIntegerSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetIntegerSignal-response)))
  "Returns string type for a service object of type 'simRosGetIntegerSignal-response"
  "vrep_common/simRosGetIntegerSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetIntegerSignal-response>)))
  "Returns md5sum for a message object of type '<simRosGetIntegerSignal-response>"
  "4b64ff90076d16256defe1d768083e34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetIntegerSignal-response)))
  "Returns md5sum for a message object of type 'simRosGetIntegerSignal-response"
  "4b64ff90076d16256defe1d768083e34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetIntegerSignal-response>)))
  "Returns full string definition for message of type '<simRosGetIntegerSignal-response>"
  (cl:format cl:nil "int32 result~%int32 signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetIntegerSignal-response)))
  "Returns full string definition for message of type 'simRosGetIntegerSignal-response"
  (cl:format cl:nil "int32 result~%int32 signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetIntegerSignal-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetIntegerSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetIntegerSignal-response
    (cl:cons ':result (result msg))
    (cl:cons ':signalValue (signalValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetIntegerSignal)))
  'simRosGetIntegerSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetIntegerSignal)))
  'simRosGetIntegerSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetIntegerSignal)))
  "Returns string type for a service object of type '<simRosGetIntegerSignal>"
  "vrep_common/simRosGetIntegerSignal")