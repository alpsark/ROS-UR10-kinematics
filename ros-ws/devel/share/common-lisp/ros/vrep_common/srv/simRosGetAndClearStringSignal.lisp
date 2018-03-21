; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetAndClearStringSignal-request.msg.html

(cl:defclass <simRosGetAndClearStringSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetAndClearStringSignal-request (<simRosGetAndClearStringSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetAndClearStringSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetAndClearStringSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetAndClearStringSignal-request> is deprecated: use vrep_common-srv:simRosGetAndClearStringSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosGetAndClearStringSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetAndClearStringSignal-request>) ostream)
  "Serializes a message object of type '<simRosGetAndClearStringSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetAndClearStringSignal-request>) istream)
  "Deserializes a message object of type '<simRosGetAndClearStringSignal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetAndClearStringSignal-request>)))
  "Returns string type for a service object of type '<simRosGetAndClearStringSignal-request>"
  "vrep_common/simRosGetAndClearStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetAndClearStringSignal-request)))
  "Returns string type for a service object of type 'simRosGetAndClearStringSignal-request"
  "vrep_common/simRosGetAndClearStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetAndClearStringSignal-request>)))
  "Returns md5sum for a message object of type '<simRosGetAndClearStringSignal-request>"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetAndClearStringSignal-request)))
  "Returns md5sum for a message object of type 'simRosGetAndClearStringSignal-request"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetAndClearStringSignal-request>)))
  "Returns full string definition for message of type '<simRosGetAndClearStringSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetAndClearStringSignal-request)))
  "Returns full string definition for message of type 'simRosGetAndClearStringSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetAndClearStringSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetAndClearStringSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetAndClearStringSignal-request
    (cl:cons ':signalName (signalName msg))
))
;//! \htmlinclude simRosGetAndClearStringSignal-response.msg.html

(cl:defclass <simRosGetAndClearStringSignal-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass simRosGetAndClearStringSignal-response (<simRosGetAndClearStringSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetAndClearStringSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetAndClearStringSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetAndClearStringSignal-response> is deprecated: use vrep_common-srv:simRosGetAndClearStringSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetAndClearStringSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosGetAndClearStringSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetAndClearStringSignal-response>) ostream)
  "Serializes a message object of type '<simRosGetAndClearStringSignal-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetAndClearStringSignal-response>) istream)
  "Deserializes a message object of type '<simRosGetAndClearStringSignal-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetAndClearStringSignal-response>)))
  "Returns string type for a service object of type '<simRosGetAndClearStringSignal-response>"
  "vrep_common/simRosGetAndClearStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetAndClearStringSignal-response)))
  "Returns string type for a service object of type 'simRosGetAndClearStringSignal-response"
  "vrep_common/simRosGetAndClearStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetAndClearStringSignal-response>)))
  "Returns md5sum for a message object of type '<simRosGetAndClearStringSignal-response>"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetAndClearStringSignal-response)))
  "Returns md5sum for a message object of type 'simRosGetAndClearStringSignal-response"
  "2404c94dd63ca66111460f0d88cb7f64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetAndClearStringSignal-response>)))
  "Returns full string definition for message of type '<simRosGetAndClearStringSignal-response>"
  (cl:format cl:nil "int32 result~%string signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetAndClearStringSignal-response)))
  "Returns full string definition for message of type 'simRosGetAndClearStringSignal-response"
  (cl:format cl:nil "int32 result~%string signalValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetAndClearStringSignal-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'signalValue))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetAndClearStringSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetAndClearStringSignal-response
    (cl:cons ':result (result msg))
    (cl:cons ':signalValue (signalValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetAndClearStringSignal)))
  'simRosGetAndClearStringSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetAndClearStringSignal)))
  'simRosGetAndClearStringSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetAndClearStringSignal)))
  "Returns string type for a service object of type '<simRosGetAndClearStringSignal>"
  "vrep_common/simRosGetAndClearStringSignal")