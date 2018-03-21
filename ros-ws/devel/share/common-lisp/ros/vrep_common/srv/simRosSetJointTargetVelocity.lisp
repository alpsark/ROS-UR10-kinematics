; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetJointTargetVelocity-request.msg.html

(cl:defclass <simRosSetJointTargetVelocity-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (targetVelocity
    :reader targetVelocity
    :initarg :targetVelocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosSetJointTargetVelocity-request (<simRosSetJointTargetVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointTargetVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointTargetVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointTargetVelocity-request> is deprecated: use vrep_common-srv:simRosSetJointTargetVelocity-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetJointTargetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'targetVelocity-val :lambda-list '(m))
(cl:defmethod targetVelocity-val ((m <simRosSetJointTargetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:targetVelocity-val is deprecated.  Use vrep_common-srv:targetVelocity instead.")
  (targetVelocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointTargetVelocity-request>) ostream)
  "Serializes a message object of type '<simRosSetJointTargetVelocity-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'targetVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointTargetVelocity-request>) istream)
  "Deserializes a message object of type '<simRosSetJointTargetVelocity-request>"
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
    (cl:setf (cl:slot-value msg 'targetVelocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointTargetVelocity-request>)))
  "Returns string type for a service object of type '<simRosSetJointTargetVelocity-request>"
  "vrep_common/simRosSetJointTargetVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointTargetVelocity-request)))
  "Returns string type for a service object of type 'simRosSetJointTargetVelocity-request"
  "vrep_common/simRosSetJointTargetVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointTargetVelocity-request>)))
  "Returns md5sum for a message object of type '<simRosSetJointTargetVelocity-request>"
  "4f4a9bd7fbc203cc2e92559ecddbacea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointTargetVelocity-request)))
  "Returns md5sum for a message object of type 'simRosSetJointTargetVelocity-request"
  "4f4a9bd7fbc203cc2e92559ecddbacea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointTargetVelocity-request>)))
  "Returns full string definition for message of type '<simRosSetJointTargetVelocity-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 targetVelocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointTargetVelocity-request)))
  "Returns full string definition for message of type 'simRosSetJointTargetVelocity-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 targetVelocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointTargetVelocity-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointTargetVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointTargetVelocity-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':targetVelocity (targetVelocity msg))
))
;//! \htmlinclude simRosSetJointTargetVelocity-response.msg.html

(cl:defclass <simRosSetJointTargetVelocity-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetJointTargetVelocity-response (<simRosSetJointTargetVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointTargetVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointTargetVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointTargetVelocity-response> is deprecated: use vrep_common-srv:simRosSetJointTargetVelocity-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetJointTargetVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointTargetVelocity-response>) ostream)
  "Serializes a message object of type '<simRosSetJointTargetVelocity-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointTargetVelocity-response>) istream)
  "Deserializes a message object of type '<simRosSetJointTargetVelocity-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointTargetVelocity-response>)))
  "Returns string type for a service object of type '<simRosSetJointTargetVelocity-response>"
  "vrep_common/simRosSetJointTargetVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointTargetVelocity-response)))
  "Returns string type for a service object of type 'simRosSetJointTargetVelocity-response"
  "vrep_common/simRosSetJointTargetVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointTargetVelocity-response>)))
  "Returns md5sum for a message object of type '<simRosSetJointTargetVelocity-response>"
  "4f4a9bd7fbc203cc2e92559ecddbacea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointTargetVelocity-response)))
  "Returns md5sum for a message object of type 'simRosSetJointTargetVelocity-response"
  "4f4a9bd7fbc203cc2e92559ecddbacea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointTargetVelocity-response>)))
  "Returns full string definition for message of type '<simRosSetJointTargetVelocity-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointTargetVelocity-response)))
  "Returns full string definition for message of type 'simRosSetJointTargetVelocity-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointTargetVelocity-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointTargetVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointTargetVelocity-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetJointTargetVelocity)))
  'simRosSetJointTargetVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetJointTargetVelocity)))
  'simRosSetJointTargetVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointTargetVelocity)))
  "Returns string type for a service object of type '<simRosSetJointTargetVelocity>"
  "vrep_common/simRosSetJointTargetVelocity")