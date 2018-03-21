; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosEraseFile-request.msg.html

(cl:defclass <simRosEraseFile-request> (roslisp-msg-protocol:ros-message)
  ((fileName
    :reader fileName
    :initarg :fileName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosEraseFile-request (<simRosEraseFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEraseFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEraseFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEraseFile-request> is deprecated: use vrep_common-srv:simRosEraseFile-request instead.")))

(cl:ensure-generic-function 'fileName-val :lambda-list '(m))
(cl:defmethod fileName-val ((m <simRosEraseFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:fileName-val is deprecated.  Use vrep_common-srv:fileName instead.")
  (fileName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEraseFile-request>) ostream)
  "Serializes a message object of type '<simRosEraseFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fileName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEraseFile-request>) istream)
  "Deserializes a message object of type '<simRosEraseFile-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fileName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fileName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEraseFile-request>)))
  "Returns string type for a service object of type '<simRosEraseFile-request>"
  "vrep_common/simRosEraseFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEraseFile-request)))
  "Returns string type for a service object of type 'simRosEraseFile-request"
  "vrep_common/simRosEraseFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEraseFile-request>)))
  "Returns md5sum for a message object of type '<simRosEraseFile-request>"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEraseFile-request)))
  "Returns md5sum for a message object of type 'simRosEraseFile-request"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEraseFile-request>)))
  "Returns full string definition for message of type '<simRosEraseFile-request>"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEraseFile-request)))
  "Returns full string definition for message of type 'simRosEraseFile-request"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEraseFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'fileName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEraseFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEraseFile-request
    (cl:cons ':fileName (fileName msg))
))
;//! \htmlinclude simRosEraseFile-response.msg.html

(cl:defclass <simRosEraseFile-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosEraseFile-response (<simRosEraseFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEraseFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEraseFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEraseFile-response> is deprecated: use vrep_common-srv:simRosEraseFile-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosEraseFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEraseFile-response>) ostream)
  "Serializes a message object of type '<simRosEraseFile-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEraseFile-response>) istream)
  "Deserializes a message object of type '<simRosEraseFile-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEraseFile-response>)))
  "Returns string type for a service object of type '<simRosEraseFile-response>"
  "vrep_common/simRosEraseFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEraseFile-response)))
  "Returns string type for a service object of type 'simRosEraseFile-response"
  "vrep_common/simRosEraseFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEraseFile-response>)))
  "Returns md5sum for a message object of type '<simRosEraseFile-response>"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEraseFile-response)))
  "Returns md5sum for a message object of type 'simRosEraseFile-response"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEraseFile-response>)))
  "Returns full string definition for message of type '<simRosEraseFile-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEraseFile-response)))
  "Returns full string definition for message of type 'simRosEraseFile-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEraseFile-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEraseFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEraseFile-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosEraseFile)))
  'simRosEraseFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosEraseFile)))
  'simRosEraseFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEraseFile)))
  "Returns string type for a service object of type '<simRosEraseFile>"
  "vrep_common/simRosEraseFile")