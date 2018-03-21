; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosEndDialog-request.msg.html

(cl:defclass <simRosEndDialog-request> (roslisp-msg-protocol:ros-message)
  ((dialogHandle
    :reader dialogHandle
    :initarg :dialogHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosEndDialog-request (<simRosEndDialog-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEndDialog-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEndDialog-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEndDialog-request> is deprecated: use vrep_common-srv:simRosEndDialog-request instead.")))

(cl:ensure-generic-function 'dialogHandle-val :lambda-list '(m))
(cl:defmethod dialogHandle-val ((m <simRosEndDialog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dialogHandle-val is deprecated.  Use vrep_common-srv:dialogHandle instead.")
  (dialogHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEndDialog-request>) ostream)
  "Serializes a message object of type '<simRosEndDialog-request>"
  (cl:let* ((signed (cl:slot-value msg 'dialogHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEndDialog-request>) istream)
  "Deserializes a message object of type '<simRosEndDialog-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dialogHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEndDialog-request>)))
  "Returns string type for a service object of type '<simRosEndDialog-request>"
  "vrep_common/simRosEndDialogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEndDialog-request)))
  "Returns string type for a service object of type 'simRosEndDialog-request"
  "vrep_common/simRosEndDialogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEndDialog-request>)))
  "Returns md5sum for a message object of type '<simRosEndDialog-request>"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEndDialog-request)))
  "Returns md5sum for a message object of type 'simRosEndDialog-request"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEndDialog-request>)))
  "Returns full string definition for message of type '<simRosEndDialog-request>"
  (cl:format cl:nil "~%~%~%~%int32 dialogHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEndDialog-request)))
  "Returns full string definition for message of type 'simRosEndDialog-request"
  (cl:format cl:nil "~%~%~%~%int32 dialogHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEndDialog-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEndDialog-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEndDialog-request
    (cl:cons ':dialogHandle (dialogHandle msg))
))
;//! \htmlinclude simRosEndDialog-response.msg.html

(cl:defclass <simRosEndDialog-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosEndDialog-response (<simRosEndDialog-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosEndDialog-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosEndDialog-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosEndDialog-response> is deprecated: use vrep_common-srv:simRosEndDialog-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosEndDialog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosEndDialog-response>) ostream)
  "Serializes a message object of type '<simRosEndDialog-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosEndDialog-response>) istream)
  "Deserializes a message object of type '<simRosEndDialog-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosEndDialog-response>)))
  "Returns string type for a service object of type '<simRosEndDialog-response>"
  "vrep_common/simRosEndDialogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEndDialog-response)))
  "Returns string type for a service object of type 'simRosEndDialog-response"
  "vrep_common/simRosEndDialogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosEndDialog-response>)))
  "Returns md5sum for a message object of type '<simRosEndDialog-response>"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosEndDialog-response)))
  "Returns md5sum for a message object of type 'simRosEndDialog-response"
  "3a2c67a393403ca4628ae721d28678fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosEndDialog-response>)))
  "Returns full string definition for message of type '<simRosEndDialog-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosEndDialog-response)))
  "Returns full string definition for message of type 'simRosEndDialog-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosEndDialog-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosEndDialog-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosEndDialog-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosEndDialog)))
  'simRosEndDialog-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosEndDialog)))
  'simRosEndDialog-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosEndDialog)))
  "Returns string type for a service object of type '<simRosEndDialog>"
  "vrep_common/simRosEndDialog")