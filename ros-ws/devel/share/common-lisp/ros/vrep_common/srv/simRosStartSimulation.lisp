; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosStartSimulation-request.msg.html

(cl:defclass <simRosStartSimulation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosStartSimulation-request (<simRosStartSimulation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosStartSimulation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosStartSimulation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosStartSimulation-request> is deprecated: use vrep_common-srv:simRosStartSimulation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosStartSimulation-request>) ostream)
  "Serializes a message object of type '<simRosStartSimulation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosStartSimulation-request>) istream)
  "Deserializes a message object of type '<simRosStartSimulation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosStartSimulation-request>)))
  "Returns string type for a service object of type '<simRosStartSimulation-request>"
  "vrep_common/simRosStartSimulationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosStartSimulation-request)))
  "Returns string type for a service object of type 'simRosStartSimulation-request"
  "vrep_common/simRosStartSimulationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosStartSimulation-request>)))
  "Returns md5sum for a message object of type '<simRosStartSimulation-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosStartSimulation-request)))
  "Returns md5sum for a message object of type 'simRosStartSimulation-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosStartSimulation-request>)))
  "Returns full string definition for message of type '<simRosStartSimulation-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosStartSimulation-request)))
  "Returns full string definition for message of type 'simRosStartSimulation-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosStartSimulation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosStartSimulation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosStartSimulation-request
))
;//! \htmlinclude simRosStartSimulation-response.msg.html

(cl:defclass <simRosStartSimulation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosStartSimulation-response (<simRosStartSimulation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosStartSimulation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosStartSimulation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosStartSimulation-response> is deprecated: use vrep_common-srv:simRosStartSimulation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosStartSimulation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosStartSimulation-response>) ostream)
  "Serializes a message object of type '<simRosStartSimulation-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosStartSimulation-response>) istream)
  "Deserializes a message object of type '<simRosStartSimulation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosStartSimulation-response>)))
  "Returns string type for a service object of type '<simRosStartSimulation-response>"
  "vrep_common/simRosStartSimulationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosStartSimulation-response)))
  "Returns string type for a service object of type 'simRosStartSimulation-response"
  "vrep_common/simRosStartSimulationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosStartSimulation-response>)))
  "Returns md5sum for a message object of type '<simRosStartSimulation-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosStartSimulation-response)))
  "Returns md5sum for a message object of type 'simRosStartSimulation-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosStartSimulation-response>)))
  "Returns full string definition for message of type '<simRosStartSimulation-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosStartSimulation-response)))
  "Returns full string definition for message of type 'simRosStartSimulation-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosStartSimulation-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosStartSimulation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosStartSimulation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosStartSimulation)))
  'simRosStartSimulation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosStartSimulation)))
  'simRosStartSimulation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosStartSimulation)))
  "Returns string type for a service object of type '<simRosStartSimulation>"
  "vrep_common/simRosStartSimulation")