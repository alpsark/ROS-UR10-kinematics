; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetJointForce-request.msg.html

(cl:defclass <simRosSetJointForce-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (forceOrTorque
    :reader forceOrTorque
    :initarg :forceOrTorque
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosSetJointForce-request (<simRosSetJointForce-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointForce-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointForce-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointForce-request> is deprecated: use vrep_common-srv:simRosSetJointForce-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetJointForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'forceOrTorque-val :lambda-list '(m))
(cl:defmethod forceOrTorque-val ((m <simRosSetJointForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:forceOrTorque-val is deprecated.  Use vrep_common-srv:forceOrTorque instead.")
  (forceOrTorque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointForce-request>) ostream)
  "Serializes a message object of type '<simRosSetJointForce-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'forceOrTorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointForce-request>) istream)
  "Deserializes a message object of type '<simRosSetJointForce-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'forceOrTorque) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointForce-request>)))
  "Returns string type for a service object of type '<simRosSetJointForce-request>"
  "vrep_common/simRosSetJointForceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointForce-request)))
  "Returns string type for a service object of type 'simRosSetJointForce-request"
  "vrep_common/simRosSetJointForceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointForce-request>)))
  "Returns md5sum for a message object of type '<simRosSetJointForce-request>"
  "fbe07bacf4f20c3b14d370f9a1bdae4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointForce-request)))
  "Returns md5sum for a message object of type 'simRosSetJointForce-request"
  "fbe07bacf4f20c3b14d370f9a1bdae4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointForce-request>)))
  "Returns full string definition for message of type '<simRosSetJointForce-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 forceOrTorque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointForce-request)))
  "Returns full string definition for message of type 'simRosSetJointForce-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 forceOrTorque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointForce-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointForce-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointForce-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':forceOrTorque (forceOrTorque msg))
))
;//! \htmlinclude simRosSetJointForce-response.msg.html

(cl:defclass <simRosSetJointForce-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetJointForce-response (<simRosSetJointForce-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointForce-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointForce-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointForce-response> is deprecated: use vrep_common-srv:simRosSetJointForce-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetJointForce-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointForce-response>) ostream)
  "Serializes a message object of type '<simRosSetJointForce-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointForce-response>) istream)
  "Deserializes a message object of type '<simRosSetJointForce-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointForce-response>)))
  "Returns string type for a service object of type '<simRosSetJointForce-response>"
  "vrep_common/simRosSetJointForceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointForce-response)))
  "Returns string type for a service object of type 'simRosSetJointForce-response"
  "vrep_common/simRosSetJointForceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointForce-response>)))
  "Returns md5sum for a message object of type '<simRosSetJointForce-response>"
  "fbe07bacf4f20c3b14d370f9a1bdae4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointForce-response)))
  "Returns md5sum for a message object of type 'simRosSetJointForce-response"
  "fbe07bacf4f20c3b14d370f9a1bdae4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointForce-response>)))
  "Returns full string definition for message of type '<simRosSetJointForce-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointForce-response)))
  "Returns full string definition for message of type 'simRosSetJointForce-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointForce-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointForce-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointForce-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetJointForce)))
  'simRosSetJointForce-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetJointForce)))
  'simRosSetJointForce-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointForce)))
  "Returns string type for a service object of type '<simRosSetJointForce>"
  "vrep_common/simRosSetJointForce")