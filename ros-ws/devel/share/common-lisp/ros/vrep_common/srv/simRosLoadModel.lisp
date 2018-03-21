; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosLoadModel-request.msg.html

(cl:defclass <simRosLoadModel-request> (roslisp-msg-protocol:ros-message)
  ((fileName
    :reader fileName
    :initarg :fileName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosLoadModel-request (<simRosLoadModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosLoadModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosLoadModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosLoadModel-request> is deprecated: use vrep_common-srv:simRosLoadModel-request instead.")))

(cl:ensure-generic-function 'fileName-val :lambda-list '(m))
(cl:defmethod fileName-val ((m <simRosLoadModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:fileName-val is deprecated.  Use vrep_common-srv:fileName instead.")
  (fileName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosLoadModel-request>) ostream)
  "Serializes a message object of type '<simRosLoadModel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fileName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosLoadModel-request>) istream)
  "Deserializes a message object of type '<simRosLoadModel-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosLoadModel-request>)))
  "Returns string type for a service object of type '<simRosLoadModel-request>"
  "vrep_common/simRosLoadModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadModel-request)))
  "Returns string type for a service object of type 'simRosLoadModel-request"
  "vrep_common/simRosLoadModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosLoadModel-request>)))
  "Returns md5sum for a message object of type '<simRosLoadModel-request>"
  "e90a06de566d298ef7f6c1c63b525a29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosLoadModel-request)))
  "Returns md5sum for a message object of type 'simRosLoadModel-request"
  "e90a06de566d298ef7f6c1c63b525a29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosLoadModel-request>)))
  "Returns full string definition for message of type '<simRosLoadModel-request>"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosLoadModel-request)))
  "Returns full string definition for message of type 'simRosLoadModel-request"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosLoadModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'fileName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosLoadModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosLoadModel-request
    (cl:cons ':fileName (fileName msg))
))
;//! \htmlinclude simRosLoadModel-response.msg.html

(cl:defclass <simRosLoadModel-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (baseHandle
    :reader baseHandle
    :initarg :baseHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosLoadModel-response (<simRosLoadModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosLoadModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosLoadModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosLoadModel-response> is deprecated: use vrep_common-srv:simRosLoadModel-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosLoadModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'baseHandle-val :lambda-list '(m))
(cl:defmethod baseHandle-val ((m <simRosLoadModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:baseHandle-val is deprecated.  Use vrep_common-srv:baseHandle instead.")
  (baseHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosLoadModel-response>) ostream)
  "Serializes a message object of type '<simRosLoadModel-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosLoadModel-response>) istream)
  "Deserializes a message object of type '<simRosLoadModel-response>"
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
      (cl:setf (cl:slot-value msg 'baseHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosLoadModel-response>)))
  "Returns string type for a service object of type '<simRosLoadModel-response>"
  "vrep_common/simRosLoadModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadModel-response)))
  "Returns string type for a service object of type 'simRosLoadModel-response"
  "vrep_common/simRosLoadModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosLoadModel-response>)))
  "Returns md5sum for a message object of type '<simRosLoadModel-response>"
  "e90a06de566d298ef7f6c1c63b525a29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosLoadModel-response)))
  "Returns md5sum for a message object of type 'simRosLoadModel-response"
  "e90a06de566d298ef7f6c1c63b525a29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosLoadModel-response>)))
  "Returns full string definition for message of type '<simRosLoadModel-response>"
  (cl:format cl:nil "int32 result~%int32 baseHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosLoadModel-response)))
  "Returns full string definition for message of type 'simRosLoadModel-response"
  (cl:format cl:nil "int32 result~%int32 baseHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosLoadModel-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosLoadModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosLoadModel-response
    (cl:cons ':result (result msg))
    (cl:cons ':baseHandle (baseHandle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosLoadModel)))
  'simRosLoadModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosLoadModel)))
  'simRosLoadModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadModel)))
  "Returns string type for a service object of type '<simRosLoadModel>"
  "vrep_common/simRosLoadModel")