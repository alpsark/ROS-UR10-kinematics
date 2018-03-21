; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosStopSimulation-request.msg.html

(cl:defclass <simRosStopSimulation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosStopSimulation-request (<simRosStopSimulation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosStopSimulation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosStopSimulation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosStopSimulation-request> is deprecated: use vrep_common-srv:simRosStopSimulation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosStopSimulation-request>) ostream)
  "Serializes a message object of type '<simRosStopSimulation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosStopSimulation-request>) istream)
  "Deserializes a message object of type '<simRosStopSimulation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosStopSimulation-request>)))
  "Returns string type for a service object of type '<simRosStopSimulation-request>"
  "vrep_common/simRosStopSimulationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosStopSimulation-request)))
  "Returns string type for a service object of type 'simRosStopSimulation-request"
  "vrep_common/simRosStopSimulationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosStopSimulation-request>)))
  "Returns md5sum for a message object of type '<simRosStopSimulation-request>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosStopSimulation-request)))
  "Returns md5sum for a message object of type 'simRosStopSimulation-request"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosStopSimulation-request>)))
  "Returns full string definition for message of type '<simRosStopSimulation-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosStopSimulation-request)))
  "Returns full string definition for message of type 'simRosStopSimulation-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosStopSimulation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosStopSimulation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosStopSimulation-request
))
;//! \htmlinclude simRosStopSimulation-response.msg.html

(cl:defclass <simRosStopSimulation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosStopSimulation-response (<simRosStopSimulation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosStopSimulation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosStopSimulation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosStopSimulation-response> is deprecated: use vrep_common-srv:simRosStopSimulation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosStopSimulation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosStopSimulation-response>) ostream)
  "Serializes a message object of type '<simRosStopSimulation-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosStopSimulation-response>) istream)
  "Deserializes a message object of type '<simRosStopSimulation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosStopSimulation-response>)))
  "Returns string type for a service object of type '<simRosStopSimulation-response>"
  "vrep_common/simRosStopSimulationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosStopSimulation-response)))
  "Returns string type for a service object of type 'simRosStopSimulation-response"
  "vrep_common/simRosStopSimulationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosStopSimulation-response>)))
  "Returns md5sum for a message object of type '<simRosStopSimulation-response>"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosStopSimulation-response)))
  "Returns md5sum for a message object of type 'simRosStopSimulation-response"
  "034a8e20d6a306665e3a5b340fab3f09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosStopSimulation-response>)))
  "Returns full string definition for message of type '<simRosStopSimulation-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosStopSimulation-response)))
  "Returns full string definition for message of type 'simRosStopSimulation-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosStopSimulation-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosStopSimulation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosStopSimulation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosStopSimulation)))
  'simRosStopSimulation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosStopSimulation)))
  'simRosStopSimulation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosStopSimulation)))
  "Returns string type for a service object of type '<simRosStopSimulation>"
  "vrep_common/simRosStopSimulation")