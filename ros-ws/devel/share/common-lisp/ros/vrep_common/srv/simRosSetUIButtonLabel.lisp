; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetUIButtonLabel-request.msg.html

(cl:defclass <simRosSetUIButtonLabel-request> (roslisp-msg-protocol:ros-message)
  ((uiHandle
    :reader uiHandle
    :initarg :uiHandle
    :type cl:integer
    :initform 0)
   (buttonID
    :reader buttonID
    :initarg :buttonID
    :type cl:integer
    :initform 0)
   (upStateLabel
    :reader upStateLabel
    :initarg :upStateLabel
    :type cl:string
    :initform "")
   (downStateLabel
    :reader downStateLabel
    :initarg :downStateLabel
    :type cl:string
    :initform ""))
)

(cl:defclass simRosSetUIButtonLabel-request (<simRosSetUIButtonLabel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetUIButtonLabel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetUIButtonLabel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetUIButtonLabel-request> is deprecated: use vrep_common-srv:simRosSetUIButtonLabel-request instead.")))

(cl:ensure-generic-function 'uiHandle-val :lambda-list '(m))
(cl:defmethod uiHandle-val ((m <simRosSetUIButtonLabel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandle-val is deprecated.  Use vrep_common-srv:uiHandle instead.")
  (uiHandle m))

(cl:ensure-generic-function 'buttonID-val :lambda-list '(m))
(cl:defmethod buttonID-val ((m <simRosSetUIButtonLabel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:buttonID-val is deprecated.  Use vrep_common-srv:buttonID instead.")
  (buttonID m))

(cl:ensure-generic-function 'upStateLabel-val :lambda-list '(m))
(cl:defmethod upStateLabel-val ((m <simRosSetUIButtonLabel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:upStateLabel-val is deprecated.  Use vrep_common-srv:upStateLabel instead.")
  (upStateLabel m))

(cl:ensure-generic-function 'downStateLabel-val :lambda-list '(m))
(cl:defmethod downStateLabel-val ((m <simRosSetUIButtonLabel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:downStateLabel-val is deprecated.  Use vrep_common-srv:downStateLabel instead.")
  (downStateLabel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetUIButtonLabel-request>) ostream)
  "Serializes a message object of type '<simRosSetUIButtonLabel-request>"
  (cl:let* ((signed (cl:slot-value msg 'uiHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'buttonID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'upStateLabel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'upStateLabel))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'downStateLabel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'downStateLabel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetUIButtonLabel-request>) istream)
  "Deserializes a message object of type '<simRosSetUIButtonLabel-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uiHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buttonID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'upStateLabel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'upStateLabel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'downStateLabel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'downStateLabel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetUIButtonLabel-request>)))
  "Returns string type for a service object of type '<simRosSetUIButtonLabel-request>"
  "vrep_common/simRosSetUIButtonLabelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUIButtonLabel-request)))
  "Returns string type for a service object of type 'simRosSetUIButtonLabel-request"
  "vrep_common/simRosSetUIButtonLabelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetUIButtonLabel-request>)))
  "Returns md5sum for a message object of type '<simRosSetUIButtonLabel-request>"
  "43f15cd21d5f9887f83532420e4a3463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetUIButtonLabel-request)))
  "Returns md5sum for a message object of type 'simRosSetUIButtonLabel-request"
  "43f15cd21d5f9887f83532420e4a3463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetUIButtonLabel-request>)))
  "Returns full string definition for message of type '<simRosSetUIButtonLabel-request>"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%string upStateLabel~%string downStateLabel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetUIButtonLabel-request)))
  "Returns full string definition for message of type 'simRosSetUIButtonLabel-request"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%string upStateLabel~%string downStateLabel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetUIButtonLabel-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'upStateLabel))
     4 (cl:length (cl:slot-value msg 'downStateLabel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetUIButtonLabel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetUIButtonLabel-request
    (cl:cons ':uiHandle (uiHandle msg))
    (cl:cons ':buttonID (buttonID msg))
    (cl:cons ':upStateLabel (upStateLabel msg))
    (cl:cons ':downStateLabel (downStateLabel msg))
))
;//! \htmlinclude simRosSetUIButtonLabel-response.msg.html

(cl:defclass <simRosSetUIButtonLabel-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetUIButtonLabel-response (<simRosSetUIButtonLabel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetUIButtonLabel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetUIButtonLabel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetUIButtonLabel-response> is deprecated: use vrep_common-srv:simRosSetUIButtonLabel-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetUIButtonLabel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetUIButtonLabel-response>) ostream)
  "Serializes a message object of type '<simRosSetUIButtonLabel-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetUIButtonLabel-response>) istream)
  "Deserializes a message object of type '<simRosSetUIButtonLabel-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetUIButtonLabel-response>)))
  "Returns string type for a service object of type '<simRosSetUIButtonLabel-response>"
  "vrep_common/simRosSetUIButtonLabelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUIButtonLabel-response)))
  "Returns string type for a service object of type 'simRosSetUIButtonLabel-response"
  "vrep_common/simRosSetUIButtonLabelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetUIButtonLabel-response>)))
  "Returns md5sum for a message object of type '<simRosSetUIButtonLabel-response>"
  "43f15cd21d5f9887f83532420e4a3463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetUIButtonLabel-response)))
  "Returns md5sum for a message object of type 'simRosSetUIButtonLabel-response"
  "43f15cd21d5f9887f83532420e4a3463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetUIButtonLabel-response>)))
  "Returns full string definition for message of type '<simRosSetUIButtonLabel-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetUIButtonLabel-response)))
  "Returns full string definition for message of type 'simRosSetUIButtonLabel-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetUIButtonLabel-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetUIButtonLabel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetUIButtonLabel-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetUIButtonLabel)))
  'simRosSetUIButtonLabel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetUIButtonLabel)))
  'simRosSetUIButtonLabel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUIButtonLabel)))
  "Returns string type for a service object of type '<simRosSetUIButtonLabel>"
  "vrep_common/simRosSetUIButtonLabel")