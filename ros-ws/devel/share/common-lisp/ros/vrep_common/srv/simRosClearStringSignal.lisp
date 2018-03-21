; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosClearStringSignal-request.msg.html

(cl:defclass <simRosClearStringSignal-request> (roslisp-msg-protocol:ros-message)
  ((signalName
    :reader signalName
    :initarg :signalName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosClearStringSignal-request (<simRosClearStringSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosClearStringSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosClearStringSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosClearStringSignal-request> is deprecated: use vrep_common-srv:simRosClearStringSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosClearStringSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosClearStringSignal-request>) ostream)
  "Serializes a message object of type '<simRosClearStringSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signalName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signalName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosClearStringSignal-request>) istream)
  "Deserializes a message object of type '<simRosClearStringSignal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosClearStringSignal-request>)))
  "Returns string type for a service object of type '<simRosClearStringSignal-request>"
  "vrep_common/simRosClearStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosClearStringSignal-request)))
  "Returns string type for a service object of type 'simRosClearStringSignal-request"
  "vrep_common/simRosClearStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosClearStringSignal-request>)))
  "Returns md5sum for a message object of type '<simRosClearStringSignal-request>"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosClearStringSignal-request)))
  "Returns md5sum for a message object of type 'simRosClearStringSignal-request"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosClearStringSignal-request>)))
  "Returns full string definition for message of type '<simRosClearStringSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosClearStringSignal-request)))
  "Returns full string definition for message of type 'simRosClearStringSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosClearStringSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosClearStringSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosClearStringSignal-request
    (cl:cons ':signalName (signalName msg))
))
;//! \htmlinclude simRosClearStringSignal-response.msg.html

(cl:defclass <simRosClearStringSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosClearStringSignal-response (<simRosClearStringSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosClearStringSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosClearStringSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosClearStringSignal-response> is deprecated: use vrep_common-srv:simRosClearStringSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosClearStringSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosClearStringSignal-response>) ostream)
  "Serializes a message object of type '<simRosClearStringSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosClearStringSignal-response>) istream)
  "Deserializes a message object of type '<simRosClearStringSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosClearStringSignal-response>)))
  "Returns string type for a service object of type '<simRosClearStringSignal-response>"
  "vrep_common/simRosClearStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosClearStringSignal-response)))
  "Returns string type for a service object of type 'simRosClearStringSignal-response"
  "vrep_common/simRosClearStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosClearStringSignal-response>)))
  "Returns md5sum for a message object of type '<simRosClearStringSignal-response>"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosClearStringSignal-response)))
  "Returns md5sum for a message object of type 'simRosClearStringSignal-response"
  "78c7f457aa3ca9421b43a9c08cf8400a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosClearStringSignal-response>)))
  "Returns full string definition for message of type '<simRosClearStringSignal-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosClearStringSignal-response)))
  "Returns full string definition for message of type 'simRosClearStringSignal-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosClearStringSignal-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosClearStringSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosClearStringSignal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosClearStringSignal)))
  'simRosClearStringSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosClearStringSignal)))
  'simRosClearStringSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosClearStringSignal)))
  "Returns string type for a service object of type '<simRosClearStringSignal>"
  "vrep_common/simRosClearStringSignal")