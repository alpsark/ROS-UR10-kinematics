; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosLoadUI-request.msg.html

(cl:defclass <simRosLoadUI-request> (roslisp-msg-protocol:ros-message)
  ((fileName
    :reader fileName
    :initarg :fileName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosLoadUI-request (<simRosLoadUI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosLoadUI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosLoadUI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosLoadUI-request> is deprecated: use vrep_common-srv:simRosLoadUI-request instead.")))

(cl:ensure-generic-function 'fileName-val :lambda-list '(m))
(cl:defmethod fileName-val ((m <simRosLoadUI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:fileName-val is deprecated.  Use vrep_common-srv:fileName instead.")
  (fileName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosLoadUI-request>) ostream)
  "Serializes a message object of type '<simRosLoadUI-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fileName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosLoadUI-request>) istream)
  "Deserializes a message object of type '<simRosLoadUI-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosLoadUI-request>)))
  "Returns string type for a service object of type '<simRosLoadUI-request>"
  "vrep_common/simRosLoadUIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadUI-request)))
  "Returns string type for a service object of type 'simRosLoadUI-request"
  "vrep_common/simRosLoadUIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosLoadUI-request>)))
  "Returns md5sum for a message object of type '<simRosLoadUI-request>"
  "16005ff8dad636c8c963ce5d5ee0c3c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosLoadUI-request)))
  "Returns md5sum for a message object of type 'simRosLoadUI-request"
  "16005ff8dad636c8c963ce5d5ee0c3c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosLoadUI-request>)))
  "Returns full string definition for message of type '<simRosLoadUI-request>"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosLoadUI-request)))
  "Returns full string definition for message of type 'simRosLoadUI-request"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosLoadUI-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'fileName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosLoadUI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosLoadUI-request
    (cl:cons ':fileName (fileName msg))
))
;//! \htmlinclude simRosLoadUI-response.msg.html

(cl:defclass <simRosLoadUI-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (uiHandles
    :reader uiHandles
    :initarg :uiHandles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosLoadUI-response (<simRosLoadUI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosLoadUI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosLoadUI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosLoadUI-response> is deprecated: use vrep_common-srv:simRosLoadUI-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosLoadUI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'uiHandles-val :lambda-list '(m))
(cl:defmethod uiHandles-val ((m <simRosLoadUI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandles-val is deprecated.  Use vrep_common-srv:uiHandles instead.")
  (uiHandles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosLoadUI-response>) ostream)
  "Serializes a message object of type '<simRosLoadUI-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uiHandles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'uiHandles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosLoadUI-response>) istream)
  "Deserializes a message object of type '<simRosLoadUI-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uiHandles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uiHandles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosLoadUI-response>)))
  "Returns string type for a service object of type '<simRosLoadUI-response>"
  "vrep_common/simRosLoadUIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadUI-response)))
  "Returns string type for a service object of type 'simRosLoadUI-response"
  "vrep_common/simRosLoadUIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosLoadUI-response>)))
  "Returns md5sum for a message object of type '<simRosLoadUI-response>"
  "16005ff8dad636c8c963ce5d5ee0c3c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosLoadUI-response)))
  "Returns md5sum for a message object of type 'simRosLoadUI-response"
  "16005ff8dad636c8c963ce5d5ee0c3c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosLoadUI-response>)))
  "Returns full string definition for message of type '<simRosLoadUI-response>"
  (cl:format cl:nil "int32 result~%int32[] uiHandles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosLoadUI-response)))
  "Returns full string definition for message of type 'simRosLoadUI-response"
  (cl:format cl:nil "int32 result~%int32[] uiHandles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosLoadUI-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uiHandles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosLoadUI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosLoadUI-response
    (cl:cons ':result (result msg))
    (cl:cons ':uiHandles (uiHandles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosLoadUI)))
  'simRosLoadUI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosLoadUI)))
  'simRosLoadUI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadUI)))
  "Returns string type for a service object of type '<simRosLoadUI>"
  "vrep_common/simRosLoadUI")