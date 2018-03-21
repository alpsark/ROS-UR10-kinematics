; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetDialogInput-request.msg.html

(cl:defclass <simRosGetDialogInput-request> (roslisp-msg-protocol:ros-message)
  ((dialogHandle
    :reader dialogHandle
    :initarg :dialogHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetDialogInput-request (<simRosGetDialogInput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetDialogInput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetDialogInput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetDialogInput-request> is deprecated: use vrep_common-srv:simRosGetDialogInput-request instead.")))

(cl:ensure-generic-function 'dialogHandle-val :lambda-list '(m))
(cl:defmethod dialogHandle-val ((m <simRosGetDialogInput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dialogHandle-val is deprecated.  Use vrep_common-srv:dialogHandle instead.")
  (dialogHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetDialogInput-request>) ostream)
  "Serializes a message object of type '<simRosGetDialogInput-request>"
  (cl:let* ((signed (cl:slot-value msg 'dialogHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetDialogInput-request>) istream)
  "Deserializes a message object of type '<simRosGetDialogInput-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dialogHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetDialogInput-request>)))
  "Returns string type for a service object of type '<simRosGetDialogInput-request>"
  "vrep_common/simRosGetDialogInputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDialogInput-request)))
  "Returns string type for a service object of type 'simRosGetDialogInput-request"
  "vrep_common/simRosGetDialogInputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetDialogInput-request>)))
  "Returns md5sum for a message object of type '<simRosGetDialogInput-request>"
  "a7a320351d6344ea2112d3892daa9e7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetDialogInput-request)))
  "Returns md5sum for a message object of type 'simRosGetDialogInput-request"
  "a7a320351d6344ea2112d3892daa9e7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetDialogInput-request>)))
  "Returns full string definition for message of type '<simRosGetDialogInput-request>"
  (cl:format cl:nil "~%~%~%~%int32 dialogHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetDialogInput-request)))
  "Returns full string definition for message of type 'simRosGetDialogInput-request"
  (cl:format cl:nil "~%~%~%~%int32 dialogHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetDialogInput-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetDialogInput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetDialogInput-request
    (cl:cons ':dialogHandle (dialogHandle msg))
))
;//! \htmlinclude simRosGetDialogInput-response.msg.html

(cl:defclass <simRosGetDialogInput-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetDialogInput-response (<simRosGetDialogInput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetDialogInput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetDialogInput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetDialogInput-response> is deprecated: use vrep_common-srv:simRosGetDialogInput-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetDialogInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <simRosGetDialogInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:input-val is deprecated.  Use vrep_common-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetDialogInput-response>) ostream)
  "Serializes a message object of type '<simRosGetDialogInput-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetDialogInput-response>) istream)
  "Deserializes a message object of type '<simRosGetDialogInput-response>"
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
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetDialogInput-response>)))
  "Returns string type for a service object of type '<simRosGetDialogInput-response>"
  "vrep_common/simRosGetDialogInputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDialogInput-response)))
  "Returns string type for a service object of type 'simRosGetDialogInput-response"
  "vrep_common/simRosGetDialogInputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetDialogInput-response>)))
  "Returns md5sum for a message object of type '<simRosGetDialogInput-response>"
  "a7a320351d6344ea2112d3892daa9e7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetDialogInput-response)))
  "Returns md5sum for a message object of type 'simRosGetDialogInput-response"
  "a7a320351d6344ea2112d3892daa9e7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetDialogInput-response>)))
  "Returns full string definition for message of type '<simRosGetDialogInput-response>"
  (cl:format cl:nil "int32 result~%string input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetDialogInput-response)))
  "Returns full string definition for message of type 'simRosGetDialogInput-response"
  (cl:format cl:nil "int32 result~%string input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetDialogInput-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetDialogInput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetDialogInput-response
    (cl:cons ':result (result msg))
    (cl:cons ':input (input msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetDialogInput)))
  'simRosGetDialogInput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetDialogInput)))
  'simRosGetDialogInput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDialogInput)))
  "Returns string type for a service object of type '<simRosGetDialogInput>"
  "vrep_common/simRosGetDialogInput")