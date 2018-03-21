; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetIntegerSignal-request.msg.html

(cl:defclass <simRosSetIntegerSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform "")
   (signalValue
    :reader signalValue
    :initarg :signalValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetIntegerSignal-request (<simRosSetIntegerSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetIntegerSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetIntegerSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetIntegerSignal-request> is deprecated: use vrep_common-srv:simRosSetIntegerSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosSetIntegerSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosSetIntegerSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetIntegerSignal-request>) ostream)
  "Serializes a message object of type '<simRosSetIntegerSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
  (cl:let* ((signed (cl:slot-value msg 'signalValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetIntegerSignal-request>) istream)
  "Deserializes a message object of type '<simRosSetIntegerSignal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signalName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signalName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signalValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetIntegerSignal-request>)))
  "Returns string type for a service object of type '<simRosSetIntegerSignal-request>"
  "vrep_common/simRosSetIntegerSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetIntegerSignal-request)))
  "Returns string type for a service object of type 'simRosSetIntegerSignal-request"
  "vrep_common/simRosSetIntegerSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetIntegerSignal-request>)))
  "Returns md5sum for a message object of type '<simRosSetIntegerSignal-request>"
  "6348838e968005d75ae2126a83942b2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetIntegerSignal-request)))
  "Returns md5sum for a message object of type 'simRosSetIntegerSignal-request"
  "6348838e968005d75ae2126a83942b2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetIntegerSignal-request>)))
  "Returns full string definition for message of type '<simRosSetIntegerSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%int32 signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetIntegerSignal-request)))
  "Returns full string definition for message of type 'simRosSetIntegerSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%int32 signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetIntegerSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetIntegerSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetIntegerSignal-request
    (cl:cons ':signalName (signalName msg))
    (cl:cons ':signalValue (signalValue msg))
))
;//! \htmlinclude simRosSetIntegerSignal-response.msg.html

(cl:defclass <simRosSetIntegerSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetIntegerSignal-response (<simRosSetIntegerSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetIntegerSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetIntegerSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetIntegerSignal-response> is deprecated: use vrep_common-srv:simRosSetIntegerSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetIntegerSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetIntegerSignal-response>) ostream)
  "Serializes a message object of type '<simRosSetIntegerSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetIntegerSignal-response>) istream)
  "Deserializes a message object of type '<simRosSetIntegerSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetIntegerSignal-response>)))
  "Returns string type for a service object of type '<simRosSetIntegerSignal-response>"
  "vrep_common/simRosSetIntegerSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetIntegerSignal-response)))
  "Returns string type for a service object of type 'simRosSetIntegerSignal-response"
  "vrep_common/simRosSetIntegerSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetIntegerSignal-response>)))
  "Returns md5sum for a message object of type '<simRosSetIntegerSignal-response>"
  "6348838e968005d75ae2126a83942b2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetIntegerSignal-response)))
  "Returns md5sum for a message object of type 'simRosSetIntegerSignal-response"
  "6348838e968005d75ae2126a83942b2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetIntegerSignal-response>)))
  "Returns full string definition for message of type '<simRosSetIntegerSignal-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetIntegerSignal-response)))
  "Returns full string definition for message of type 'simRosSetIntegerSignal-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetIntegerSignal-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetIntegerSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetIntegerSignal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetIntegerSignal)))
  'simRosSetIntegerSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetIntegerSignal)))
  'simRosSetIntegerSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetIntegerSignal)))
  "Returns string type for a service object of type '<simRosSetIntegerSignal>"
  "vrep_common/simRosSetIntegerSignal")