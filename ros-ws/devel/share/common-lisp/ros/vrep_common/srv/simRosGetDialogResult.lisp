; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetDialogResult-request.msg.html

(cl:defclass <simRosGetDialogResult-request> (roslisp-msg-protocol:ros-message)
  ((dialogHandle
    :reader dialogHandle
    :initarg :dialogHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetDialogResult-request (<simRosGetDialogResult-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetDialogResult-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetDialogResult-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetDialogResult-request> is deprecated: use vrep_common-srv:simRosGetDialogResult-request instead.")))

(cl:ensure-generic-function 'dialogHandle-val :lambda-list '(m))
(cl:defmethod dialogHandle-val ((m <simRosGetDialogResult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dialogHandle-val is deprecated.  Use vrep_common-srv:dialogHandle instead.")
  (dialogHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetDialogResult-request>) ostream)
  "Serializes a message object of type '<simRosGetDialogResult-request>"
  (cl:let* ((signed (cl:slot-value msg 'dialogHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetDialogResult-request>) istream)
  "Deserializes a message object of type '<simRosGetDialogResult-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dialogHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetDialogResult-request>)))
  "Returns string type for a service object of type '<simRosGetDialogResult-request>"
  "vrep_common/simRosGetDialogResultRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDialogResult-request)))
  "Returns string type for a service object of type 'simRosGetDialogResult-request"
  "vrep_common/simRosGetDialogResultRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetDialogResult-request>)))
  "Returns md5sum for a message object of type '<simRosGetDialogResult-request>"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetDialogResult-request)))
  "Returns md5sum for a message object of type 'simRosGetDialogResult-request"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetDialogResult-request>)))
  "Returns full string definition for message of type '<simRosGetDialogResult-request>"
  (cl:format cl:nil "~%~%~%~%int32 dialogHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetDialogResult-request)))
  "Returns full string definition for message of type 'simRosGetDialogResult-request"
  (cl:format cl:nil "~%~%~%~%int32 dialogHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetDialogResult-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetDialogResult-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetDialogResult-request
    (cl:cons ':dialogHandle (dialogHandle msg))
))
;//! \htmlinclude simRosGetDialogResult-response.msg.html

(cl:defclass <simRosGetDialogResult-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetDialogResult-response (<simRosGetDialogResult-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetDialogResult-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetDialogResult-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetDialogResult-response> is deprecated: use vrep_common-srv:simRosGetDialogResult-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetDialogResult-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetDialogResult-response>) ostream)
  "Serializes a message object of type '<simRosGetDialogResult-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetDialogResult-response>) istream)
  "Deserializes a message object of type '<simRosGetDialogResult-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetDialogResult-response>)))
  "Returns string type for a service object of type '<simRosGetDialogResult-response>"
  "vrep_common/simRosGetDialogResultResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDialogResult-response)))
  "Returns string type for a service object of type 'simRosGetDialogResult-response"
  "vrep_common/simRosGetDialogResultResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetDialogResult-response>)))
  "Returns md5sum for a message object of type '<simRosGetDialogResult-response>"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetDialogResult-response)))
  "Returns md5sum for a message object of type 'simRosGetDialogResult-response"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetDialogResult-response>)))
  "Returns full string definition for message of type '<simRosGetDialogResult-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetDialogResult-response)))
  "Returns full string definition for message of type 'simRosGetDialogResult-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetDialogResult-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetDialogResult-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetDialogResult-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetDialogResult)))
  'simRosGetDialogResult-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetDialogResult)))
  'simRosGetDialogResult-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDialogResult)))
  "Returns string type for a service object of type '<simRosGetDialogResult>"
  "vrep_common/simRosGetDialogResult")