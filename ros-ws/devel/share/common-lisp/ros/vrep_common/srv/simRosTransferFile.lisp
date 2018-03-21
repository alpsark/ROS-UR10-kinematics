; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosTransferFile-request.msg.html

(cl:defclass <simRosTransferFile-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (fileName
    :reader fileName
    :initarg :fileName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosTransferFile-request (<simRosTransferFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosTransferFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosTransferFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosTransferFile-request> is deprecated: use vrep_common-srv:simRosTransferFile-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <simRosTransferFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:data-val is deprecated.  Use vrep_common-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'fileName-val :lambda-list '(m))
(cl:defmethod fileName-val ((m <simRosTransferFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:fileName-val is deprecated.  Use vrep_common-srv:fileName instead.")
  (fileName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosTransferFile-request>) ostream)
  "Serializes a message object of type '<simRosTransferFile-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fileName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosTransferFile-request>) istream)
  "Deserializes a message object of type '<simRosTransferFile-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosTransferFile-request>)))
  "Returns string type for a service object of type '<simRosTransferFile-request>"
  "vrep_common/simRosTransferFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosTransferFile-request)))
  "Returns string type for a service object of type 'simRosTransferFile-request"
  "vrep_common/simRosTransferFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosTransferFile-request>)))
  "Returns md5sum for a message object of type '<simRosTransferFile-request>"
  "3c956e5a32cec1f93100fec7ced2ccd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosTransferFile-request)))
  "Returns md5sum for a message object of type 'simRosTransferFile-request"
  "3c956e5a32cec1f93100fec7ced2ccd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosTransferFile-request>)))
  "Returns full string definition for message of type '<simRosTransferFile-request>"
  (cl:format cl:nil "~%~%~%~%uint8[] data~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosTransferFile-request)))
  "Returns full string definition for message of type 'simRosTransferFile-request"
  (cl:format cl:nil "~%~%~%~%uint8[] data~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosTransferFile-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'fileName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosTransferFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosTransferFile-request
    (cl:cons ':data (data msg))
    (cl:cons ':fileName (fileName msg))
))
;//! \htmlinclude simRosTransferFile-response.msg.html

(cl:defclass <simRosTransferFile-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosTransferFile-response (<simRosTransferFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosTransferFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosTransferFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosTransferFile-response> is deprecated: use vrep_common-srv:simRosTransferFile-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosTransferFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosTransferFile-response>) ostream)
  "Serializes a message object of type '<simRosTransferFile-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosTransferFile-response>) istream)
  "Deserializes a message object of type '<simRosTransferFile-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosTransferFile-response>)))
  "Returns string type for a service object of type '<simRosTransferFile-response>"
  "vrep_common/simRosTransferFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosTransferFile-response)))
  "Returns string type for a service object of type 'simRosTransferFile-response"
  "vrep_common/simRosTransferFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosTransferFile-response>)))
  "Returns md5sum for a message object of type '<simRosTransferFile-response>"
  "3c956e5a32cec1f93100fec7ced2ccd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosTransferFile-response)))
  "Returns md5sum for a message object of type 'simRosTransferFile-response"
  "3c956e5a32cec1f93100fec7ced2ccd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosTransferFile-response>)))
  "Returns full string definition for message of type '<simRosTransferFile-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosTransferFile-response)))
  "Returns full string definition for message of type 'simRosTransferFile-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosTransferFile-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosTransferFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosTransferFile-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosTransferFile)))
  'simRosTransferFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosTransferFile)))
  'simRosTransferFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosTransferFile)))
  "Returns string type for a service object of type '<simRosTransferFile>"
  "vrep_common/simRosTransferFile")