; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosAddStatusbarMessage-request.msg.html

(cl:defclass <simRosAddStatusbarMessage-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass simRosAddStatusbarMessage-request (<simRosAddStatusbarMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAddStatusbarMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAddStatusbarMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAddStatusbarMessage-request> is deprecated: use vrep_common-srv:simRosAddStatusbarMessage-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <simRosAddStatusbarMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:message-val is deprecated.  Use vrep_common-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAddStatusbarMessage-request>) ostream)
  "Serializes a message object of type '<simRosAddStatusbarMessage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAddStatusbarMessage-request>) istream)
  "Deserializes a message object of type '<simRosAddStatusbarMessage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAddStatusbarMessage-request>)))
  "Returns string type for a service object of type '<simRosAddStatusbarMessage-request>"
  "vrep_common/simRosAddStatusbarMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAddStatusbarMessage-request)))
  "Returns string type for a service object of type 'simRosAddStatusbarMessage-request"
  "vrep_common/simRosAddStatusbarMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAddStatusbarMessage-request>)))
  "Returns md5sum for a message object of type '<simRosAddStatusbarMessage-request>"
  "e9096ed5f063e7da83fbcb7332c6a56b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAddStatusbarMessage-request)))
  "Returns md5sum for a message object of type 'simRosAddStatusbarMessage-request"
  "e9096ed5f063e7da83fbcb7332c6a56b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAddStatusbarMessage-request>)))
  "Returns full string definition for message of type '<simRosAddStatusbarMessage-request>"
  (cl:format cl:nil "~%~%~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAddStatusbarMessage-request)))
  "Returns full string definition for message of type 'simRosAddStatusbarMessage-request"
  (cl:format cl:nil "~%~%~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAddStatusbarMessage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAddStatusbarMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAddStatusbarMessage-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude simRosAddStatusbarMessage-response.msg.html

(cl:defclass <simRosAddStatusbarMessage-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosAddStatusbarMessage-response (<simRosAddStatusbarMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAddStatusbarMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAddStatusbarMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAddStatusbarMessage-response> is deprecated: use vrep_common-srv:simRosAddStatusbarMessage-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosAddStatusbarMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAddStatusbarMessage-response>) ostream)
  "Serializes a message object of type '<simRosAddStatusbarMessage-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAddStatusbarMessage-response>) istream)
  "Deserializes a message object of type '<simRosAddStatusbarMessage-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAddStatusbarMessage-response>)))
  "Returns string type for a service object of type '<simRosAddStatusbarMessage-response>"
  "vrep_common/simRosAddStatusbarMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAddStatusbarMessage-response)))
  "Returns string type for a service object of type 'simRosAddStatusbarMessage-response"
  "vrep_common/simRosAddStatusbarMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAddStatusbarMessage-response>)))
  "Returns md5sum for a message object of type '<simRosAddStatusbarMessage-response>"
  "e9096ed5f063e7da83fbcb7332c6a56b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAddStatusbarMessage-response)))
  "Returns md5sum for a message object of type 'simRosAddStatusbarMessage-response"
  "e9096ed5f063e7da83fbcb7332c6a56b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAddStatusbarMessage-response>)))
  "Returns full string definition for message of type '<simRosAddStatusbarMessage-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAddStatusbarMessage-response)))
  "Returns full string definition for message of type 'simRosAddStatusbarMessage-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAddStatusbarMessage-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAddStatusbarMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAddStatusbarMessage-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosAddStatusbarMessage)))
  'simRosAddStatusbarMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosAddStatusbarMessage)))
  'simRosAddStatusbarMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAddStatusbarMessage)))
  "Returns string type for a service object of type '<simRosAddStatusbarMessage>"
  "vrep_common/simRosAddStatusbarMessage")