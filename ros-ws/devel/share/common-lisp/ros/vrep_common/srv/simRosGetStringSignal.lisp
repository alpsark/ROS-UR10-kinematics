; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetStringSignal-request.msg.html

(cl:defclass <simRosGetStringSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetStringSignal-request (<simRosGetStringSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetStringSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetStringSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetStringSignal-request> is deprecated: use vrep_common-srv:simRosGetStringSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosGetStringSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetStringSignal-request>) ostream)
  "Serializes a message object of type '<simRosGetStringSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetStringSignal-request>) istream)
  "Deserializes a message object of type '<simRosGetStringSignal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetStringSignal-request>)))
  "Returns string type for a service object of type '<simRosGetStringSignal-request>"
  "vrep_common/simRosGetStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetStringSignal-request)))
  "Returns string type for a service object of type 'simRosGetStringSignal-request"
  "vrep_common/simRosGetStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetStringSignal-request>)))
  "Returns md5sum for a message object of type '<simRosGetStringSignal-request>"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetStringSignal-request)))
  "Returns md5sum for a message object of type 'simRosGetStringSignal-request"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetStringSignal-request>)))
  "Returns full string definition for message of type '<simRosGetStringSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetStringSignal-request)))
  "Returns full string definition for message of type 'simRosGetStringSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetStringSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetStringSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetStringSignal-request
    (cl:cons ':signalName (signalName msg))
))
;//! \htmlinclude simRosGetStringSignal-response.msg.html

(cl:defclass <simRosGetStringSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (signalValue
    :reader signalValue
    :initarg :signalValue
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetStringSignal-response (<simRosGetStringSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetStringSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetStringSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetStringSignal-response> is deprecated: use vrep_common-srv:simRosGetStringSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetStringSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosGetStringSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetStringSignal-response>) ostream)
  "Serializes a message object of type '<simRosGetStringSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalValue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetStringSignal-response>) istream)
  "Deserializes a message object of type '<simRosGetStringSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetStringSignal-response>)))
  "Returns string type for a service object of type '<simRosGetStringSignal-response>"
  "vrep_common/simRosGetStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetStringSignal-response)))
  "Returns string type for a service object of type 'simRosGetStringSignal-response"
  "vrep_common/simRosGetStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetStringSignal-response>)))
  "Returns md5sum for a message object of type '<simRosGetStringSignal-response>"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetStringSignal-response)))
  "Returns md5sum for a message object of type 'simRosGetStringSignal-response"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetStringSignal-response>)))
  "Returns full string definition for message of type '<simRosGetStringSignal-response>"
  (cl:format cl:nil "int32 result~%string signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetStringSignal-response)))
  "Returns full string definition for message of type 'simRosGetStringSignal-response"
  (cl:format cl:nil "int32 result~%string signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetStringSignal-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'signalValue))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetStringSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetStringSignal-response
    (cl:cons ':result (result msg))
    (cl:cons ':signalValue (signalValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetStringSignal)))
  'simRosGetStringSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetStringSignal)))
  'simRosGetStringSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetStringSignal)))
  "Returns string type for a service object of type '<simRosGetStringSignal>"
  "vrep_common/simRosGetStringSignal")