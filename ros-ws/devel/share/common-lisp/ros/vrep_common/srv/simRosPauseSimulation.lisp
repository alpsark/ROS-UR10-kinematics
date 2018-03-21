; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosPauseSimulation-request.msg.html

(cl:defclass <simRosPauseSimulation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosPauseSimulation-request (<simRosPauseSimulation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosPauseSimulation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosPauseSimulation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosPauseSimulation-request> is deprecated: use vrep_common-srv:simRosPauseSimulation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosPauseSimulation-request>) ostream)
  "Serializes a message object of type '<simRosPauseSimulation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosPauseSimulation-request>) istream)
  "Deserializes a message object of type '<simRosPauseSimulation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosPauseSimulation-request>)))
  "Returns string type for a service object of type '<simRosPauseSimulation-request>"
  "vrep_common/simRosPauseSimulationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosPauseSimulation-request)))
  "Returns string type for a service object of type 'simRosPauseSimulation-request"
  "vrep_common/simRosPauseSimulationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosPauseSimulation-request>)))
  "Returns md5sum for a message object of type '<simRosPauseSimulation-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosPauseSimulation-request)))
  "Returns md5sum for a message object of type 'simRosPauseSimulation-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosPauseSimulation-request>)))
  "Returns full string definition for message of type '<simRosPauseSimulation-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosPauseSimulation-request)))
  "Returns full string definition for message of type 'simRosPauseSimulation-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosPauseSimulation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosPauseSimulation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosPauseSimulation-request
))
;//! \htmlinclude simRosPauseSimulation-response.msg.html

(cl:defclass <simRosPauseSimulation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosPauseSimulation-response (<simRosPauseSimulation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosPauseSimulation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosPauseSimulation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosPauseSimulation-response> is deprecated: use vrep_common-srv:simRosPauseSimulation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosPauseSimulation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosPauseSimulation-response>) ostream)
  "Serializes a message object of type '<simRosPauseSimulation-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosPauseSimulation-response>) istream)
  "Deserializes a message object of type '<simRosPauseSimulation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosPauseSimulation-response>)))
  "Returns string type for a service object of type '<simRosPauseSimulation-response>"
  "vrep_common/simRosPauseSimulationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosPauseSimulation-response)))
  "Returns string type for a service object of type 'simRosPauseSimulation-response"
  "vrep_common/simRosPauseSimulationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosPauseSimulation-response>)))
  "Returns md5sum for a message object of type '<simRosPauseSimulation-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosPauseSimulation-response)))
  "Returns md5sum for a message object of type 'simRosPauseSimulation-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosPauseSimulation-response>)))
  "Returns full string definition for message of type '<simRosPauseSimulation-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosPauseSimulation-response)))
  "Returns full string definition for message of type 'simRosPauseSimulation-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosPauseSimulation-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosPauseSimulation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosPauseSimulation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosPauseSimulation)))
  'simRosPauseSimulation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosPauseSimulation)))
  'simRosPauseSimulation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosPauseSimulation)))
  "Returns string type for a service object of type '<simRosPauseSimulation>"
  "vrep_common/simRosPauseSimulation")