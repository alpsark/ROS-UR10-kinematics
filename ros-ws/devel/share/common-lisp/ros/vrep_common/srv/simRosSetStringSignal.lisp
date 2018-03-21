; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetStringSignal-request.msg.html

(cl:defclass <simRosSetStringSignal-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass simRosSetStringSignal-request (<simRosSetStringSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetStringSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetStringSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetStringSignal-request> is deprecated: use vrep_common-srv:simRosSetStringSignal-request instead.")))

(cl:ensure-generic-function 'signalName-val :lambda-list '(m))
(cl:defmethod signalName-val ((m <simRosSetStringSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalName-val is deprecated.  Use vrep_common-srv:signalName instead.")
  (signalName m))

(cl:ensure-generic-function 'signalValue-val :lambda-list '(m))
(cl:defmethod signalValue-val ((m <simRosSetStringSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:signalValue-val is deprecated.  Use vrep_common-srv:signalValue instead.")
  (signalValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetStringSignal-request>) ostream)
  "Serializes a message object of type '<simRosSetStringSignal-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetStringSignal-request>) istream)
  "Deserializes a message object of type '<simRosSetStringSignal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetStringSignal-request>)))
  "Returns string type for a service object of type '<simRosSetStringSignal-request>"
  "vrep_common/simRosSetStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetStringSignal-request)))
  "Returns string type for a service object of type 'simRosSetStringSignal-request"
  "vrep_common/simRosSetStringSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetStringSignal-request>)))
  "Returns md5sum for a message object of type '<simRosSetStringSignal-request>"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetStringSignal-request)))
  "Returns md5sum for a message object of type 'simRosSetStringSignal-request"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetStringSignal-request>)))
  "Returns full string definition for message of type '<simRosSetStringSignal-request>"
  (cl:format cl:nil "~%~%~%~%string signalName~%string signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetStringSignal-request)))
  "Returns full string definition for message of type 'simRosSetStringSignal-request"
  (cl:format cl:nil "~%~%~%~%string signalName~%string signalValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetStringSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signalName))
     4 (cl:length (cl:slot-value msg 'signalValue))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetStringSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetStringSignal-request
    (cl:cons ':signalName (signalName msg))
    (cl:cons ':signalValue (signalValue msg))
))
;//! \htmlinclude simRosSetStringSignal-response.msg.html

(cl:defclass <simRosSetStringSignal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetStringSignal-response (<simRosSetStringSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetStringSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetStringSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetStringSignal-response> is deprecated: use vrep_common-srv:simRosSetStringSignal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetStringSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetStringSignal-response>) ostream)
  "Serializes a message object of type '<simRosSetStringSignal-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetStringSignal-response>) istream)
  "Deserializes a message object of type '<simRosSetStringSignal-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetStringSignal-response>)))
  "Returns string type for a service object of type '<simRosSetStringSignal-response>"
  "vrep_common/simRosSetStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetStringSignal-response)))
  "Returns string type for a service object of type 'simRosSetStringSignal-response"
  "vrep_common/simRosSetStringSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetStringSignal-response>)))
  "Returns md5sum for a message object of type '<simRosSetStringSignal-response>"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetStringSignal-response)))
  "Returns md5sum for a message object of type 'simRosSetStringSignal-response"
  "c49759e205be8f8195cc764a3a6b6c4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetStringSignal-response>)))
  "Returns full string definition for message of type '<simRosSetStringSignal-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetStringSignal-response)))
  "Returns full string definition for message of type 'simRosSetStringSignal-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetStringSignal-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetStringSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetStringSignal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetStringSignal)))
  'simRosSetStringSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetStringSignal)))
  'simRosSetStringSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetStringSignal)))
  "Returns string type for a service object of type '<simRosSetStringSignal>"
  "vrep_common/simRosSetStringSignal")