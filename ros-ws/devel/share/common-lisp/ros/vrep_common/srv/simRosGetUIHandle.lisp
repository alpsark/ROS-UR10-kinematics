; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetUIHandle-request.msg.html

(cl:defclass <simRosGetUIHandle-request> (roslisp-msg-protocol:ros-message)
  ((uiName
    :reader uiName
    :initarg :uiName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetUIHandle-request (<simRosGetUIHandle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUIHandle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUIHandle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUIHandle-request> is deprecated: use vrep_common-srv:simRosGetUIHandle-request instead.")))

(cl:ensure-generic-function 'uiName-val :lambda-list '(m))
(cl:defmethod uiName-val ((m <simRosGetUIHandle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiName-val is deprecated.  Use vrep_common-srv:uiName instead.")
  (uiName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUIHandle-request>) ostream)
  "Serializes a message object of type '<simRosGetUIHandle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uiName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uiName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUIHandle-request>) istream)
  "Deserializes a message object of type '<simRosGetUIHandle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uiName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uiName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUIHandle-request>)))
  "Returns string type for a service object of type '<simRosGetUIHandle-request>"
  "vrep_common/simRosGetUIHandleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIHandle-request)))
  "Returns string type for a service object of type 'simRosGetUIHandle-request"
  "vrep_common/simRosGetUIHandleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUIHandle-request>)))
  "Returns md5sum for a message object of type '<simRosGetUIHandle-request>"
  "01db922614d69b8d439cae7d43e67d03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUIHandle-request)))
  "Returns md5sum for a message object of type 'simRosGetUIHandle-request"
  "01db922614d69b8d439cae7d43e67d03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUIHandle-request>)))
  "Returns full string definition for message of type '<simRosGetUIHandle-request>"
  (cl:format cl:nil "~%~%~%~%string uiName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUIHandle-request)))
  "Returns full string definition for message of type 'simRosGetUIHandle-request"
  (cl:format cl:nil "~%~%~%~%string uiName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUIHandle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uiName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUIHandle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUIHandle-request
    (cl:cons ':uiName (uiName msg))
))
;//! \htmlinclude simRosGetUIHandle-response.msg.html

(cl:defclass <simRosGetUIHandle-response> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetUIHandle-response (<simRosGetUIHandle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUIHandle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUIHandle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUIHandle-response> is deprecated: use vrep_common-srv:simRosGetUIHandle-response instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetUIHandle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUIHandle-response>) ostream)
  "Serializes a message object of type '<simRosGetUIHandle-response>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUIHandle-response>) istream)
  "Deserializes a message object of type '<simRosGetUIHandle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUIHandle-response>)))
  "Returns string type for a service object of type '<simRosGetUIHandle-response>"
  "vrep_common/simRosGetUIHandleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIHandle-response)))
  "Returns string type for a service object of type 'simRosGetUIHandle-response"
  "vrep_common/simRosGetUIHandleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUIHandle-response>)))
  "Returns md5sum for a message object of type '<simRosGetUIHandle-response>"
  "01db922614d69b8d439cae7d43e67d03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUIHandle-response)))
  "Returns md5sum for a message object of type 'simRosGetUIHandle-response"
  "01db922614d69b8d439cae7d43e67d03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUIHandle-response>)))
  "Returns full string definition for message of type '<simRosGetUIHandle-response>"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUIHandle-response)))
  "Returns full string definition for message of type 'simRosGetUIHandle-response"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUIHandle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUIHandle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUIHandle-response
    (cl:cons ':handle (handle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetUIHandle)))
  'simRosGetUIHandle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetUIHandle)))
  'simRosGetUIHandle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIHandle)))
  "Returns string type for a service object of type '<simRosGetUIHandle>"
  "vrep_common/simRosGetUIHandle")