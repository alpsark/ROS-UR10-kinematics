; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSynchronousTrigger-request.msg.html

(cl:defclass <simRosSynchronousTrigger-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosSynchronousTrigger-request (<simRosSynchronousTrigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSynchronousTrigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSynchronousTrigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSynchronousTrigger-request> is deprecated: use vrep_common-srv:simRosSynchronousTrigger-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSynchronousTrigger-request>) ostream)
  "Serializes a message object of type '<simRosSynchronousTrigger-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSynchronousTrigger-request>) istream)
  "Deserializes a message object of type '<simRosSynchronousTrigger-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSynchronousTrigger-request>)))
  "Returns string type for a service object of type '<simRosSynchronousTrigger-request>"
  "vrep_common/simRosSynchronousTriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSynchronousTrigger-request)))
  "Returns string type for a service object of type 'simRosSynchronousTrigger-request"
  "vrep_common/simRosSynchronousTriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSynchronousTrigger-request>)))
  "Returns md5sum for a message object of type '<simRosSynchronousTrigger-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSynchronousTrigger-request)))
  "Returns md5sum for a message object of type 'simRosSynchronousTrigger-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSynchronousTrigger-request>)))
  "Returns full string definition for message of type '<simRosSynchronousTrigger-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSynchronousTrigger-request)))
  "Returns full string definition for message of type 'simRosSynchronousTrigger-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSynchronousTrigger-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSynchronousTrigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSynchronousTrigger-request
))
;//! \htmlinclude simRosSynchronousTrigger-response.msg.html

(cl:defclass <simRosSynchronousTrigger-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSynchronousTrigger-response (<simRosSynchronousTrigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSynchronousTrigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSynchronousTrigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSynchronousTrigger-response> is deprecated: use vrep_common-srv:simRosSynchronousTrigger-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSynchronousTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSynchronousTrigger-response>) ostream)
  "Serializes a message object of type '<simRosSynchronousTrigger-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSynchronousTrigger-response>) istream)
  "Deserializes a message object of type '<simRosSynchronousTrigger-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSynchronousTrigger-response>)))
  "Returns string type for a service object of type '<simRosSynchronousTrigger-response>"
  "vrep_common/simRosSynchronousTriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSynchronousTrigger-response)))
  "Returns string type for a service object of type 'simRosSynchronousTrigger-response"
  "vrep_common/simRosSynchronousTriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSynchronousTrigger-response>)))
  "Returns md5sum for a message object of type '<simRosSynchronousTrigger-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSynchronousTrigger-response)))
  "Returns md5sum for a message object of type 'simRosSynchronousTrigger-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSynchronousTrigger-response>)))
  "Returns full string definition for message of type '<simRosSynchronousTrigger-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSynchronousTrigger-response)))
  "Returns full string definition for message of type 'simRosSynchronousTrigger-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSynchronousTrigger-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSynchronousTrigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSynchronousTrigger-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSynchronousTrigger)))
  'simRosSynchronousTrigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSynchronousTrigger)))
  'simRosSynchronousTrigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSynchronousTrigger)))
  "Returns string type for a service object of type '<simRosSynchronousTrigger>"
  "vrep_common/simRosSynchronousTrigger")