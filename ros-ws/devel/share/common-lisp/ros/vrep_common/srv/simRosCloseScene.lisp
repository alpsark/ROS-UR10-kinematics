; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosCloseScene-request.msg.html

(cl:defclass <simRosCloseScene-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosCloseScene-request (<simRosCloseScene-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosCloseScene-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosCloseScene-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosCloseScene-request> is deprecated: use vrep_common-srv:simRosCloseScene-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosCloseScene-request>) ostream)
  "Serializes a message object of type '<simRosCloseScene-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosCloseScene-request>) istream)
  "Deserializes a message object of type '<simRosCloseScene-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosCloseScene-request>)))
  "Returns string type for a service object of type '<simRosCloseScene-request>"
  "vrep_common/simRosCloseSceneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCloseScene-request)))
  "Returns string type for a service object of type 'simRosCloseScene-request"
  "vrep_common/simRosCloseSceneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosCloseScene-request>)))
  "Returns md5sum for a message object of type '<simRosCloseScene-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosCloseScene-request)))
  "Returns md5sum for a message object of type 'simRosCloseScene-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosCloseScene-request>)))
  "Returns full string definition for message of type '<simRosCloseScene-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosCloseScene-request)))
  "Returns full string definition for message of type 'simRosCloseScene-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosCloseScene-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosCloseScene-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosCloseScene-request
))
;//! \htmlinclude simRosCloseScene-response.msg.html

(cl:defclass <simRosCloseScene-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosCloseScene-response (<simRosCloseScene-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosCloseScene-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosCloseScene-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosCloseScene-response> is deprecated: use vrep_common-srv:simRosCloseScene-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosCloseScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosCloseScene-response>) ostream)
  "Serializes a message object of type '<simRosCloseScene-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosCloseScene-response>) istream)
  "Deserializes a message object of type '<simRosCloseScene-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosCloseScene-response>)))
  "Returns string type for a service object of type '<simRosCloseScene-response>"
  "vrep_common/simRosCloseSceneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCloseScene-response)))
  "Returns string type for a service object of type 'simRosCloseScene-response"
  "vrep_common/simRosCloseSceneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosCloseScene-response>)))
  "Returns md5sum for a message object of type '<simRosCloseScene-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosCloseScene-response)))
  "Returns md5sum for a message object of type 'simRosCloseScene-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosCloseScene-response>)))
  "Returns full string definition for message of type '<simRosCloseScene-response>"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosCloseScene-response)))
  "Returns full string definition for message of type 'simRosCloseScene-response"
  (cl:format cl:nil "int32 result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosCloseScene-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosCloseScene-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosCloseScene-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosCloseScene)))
  'simRosCloseScene-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosCloseScene)))
  'simRosCloseScene-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCloseScene)))
  "Returns string type for a service object of type '<simRosCloseScene>"
  "vrep_common/simRosCloseScene")