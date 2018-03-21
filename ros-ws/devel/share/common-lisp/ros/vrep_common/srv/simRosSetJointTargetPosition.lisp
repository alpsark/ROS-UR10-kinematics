; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetJointTargetPosition-request.msg.html

(cl:defclass <simRosSetJointTargetPosition-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (targetPosition
    :reader targetPosition
    :initarg :targetPosition
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosSetJointTargetPosition-request (<simRosSetJointTargetPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointTargetPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointTargetPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointTargetPosition-request> is deprecated: use vrep_common-srv:simRosSetJointTargetPosition-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetJointTargetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'targetPosition-val :lambda-list '(m))
(cl:defmethod targetPosition-val ((m <simRosSetJointTargetPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:targetPosition-val is deprecated.  Use vrep_common-srv:targetPosition instead.")
  (targetPosition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointTargetPosition-request>) ostream)
  "Serializes a message object of type '<simRosSetJointTargetPosition-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'targetPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointTargetPosition-request>) istream)
  "Deserializes a message object of type '<simRosSetJointTargetPosition-request>"
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
    (cl:setf (cl:slot-value msg 'targetPosition) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointTargetPosition-request>)))
  "Returns string type for a service object of type '<simRosSetJointTargetPosition-request>"
  "vrep_common/simRosSetJointTargetPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointTargetPosition-request)))
  "Returns string type for a service object of type 'simRosSetJointTargetPosition-request"
  "vrep_common/simRosSetJointTargetPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointTargetPosition-request>)))
  "Returns md5sum for a message object of type '<simRosSetJointTargetPosition-request>"
  "b23bfbd3cc670ebc2b50d027597762b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointTargetPosition-request)))
  "Returns md5sum for a message object of type 'simRosSetJointTargetPosition-request"
  "b23bfbd3cc670ebc2b50d027597762b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointTargetPosition-request>)))
  "Returns full string definition for message of type '<simRosSetJointTargetPosition-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 targetPosition~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointTargetPosition-request)))
  "Returns full string definition for message of type 'simRosSetJointTargetPosition-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 targetPosition~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointTargetPosition-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointTargetPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointTargetPosition-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':targetPosition (targetPosition msg))
))
;//! \htmlinclude simRosSetJointTargetPosition-response.msg.html

(cl:defclass <simRosSetJointTargetPosition-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetJointTargetPosition-response (<simRosSetJointTargetPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointTargetPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointTargetPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointTargetPosition-response> is deprecated: use vrep_common-srv:simRosSetJointTargetPosition-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetJointTargetPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointTargetPosition-response>) ostream)
  "Serializes a message object of type '<simRosSetJointTargetPosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointTargetPosition-response>) istream)
  "Deserializes a message object of type '<simRosSetJointTargetPosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointTargetPosition-response>)))
  "Returns string type for a service object of type '<simRosSetJointTargetPosition-response>"
  "vrep_common/simRosSetJointTargetPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointTargetPosition-response)))
  "Returns string type for a service object of type 'simRosSetJointTargetPosition-response"
  "vrep_common/simRosSetJointTargetPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointTargetPosition-response>)))
  "Returns md5sum for a message object of type '<simRosSetJointTargetPosition-response>"
  "b23bfbd3cc670ebc2b50d027597762b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointTargetPosition-response)))
  "Returns md5sum for a message object of type 'simRosSetJointTargetPosition-response"
  "b23bfbd3cc670ebc2b50d027597762b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointTargetPosition-response>)))
  "Returns full string definition for message of type '<simRosSetJointTargetPosition-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointTargetPosition-response)))
  "Returns full string definition for message of type 'simRosSetJointTargetPosition-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointTargetPosition-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointTargetPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointTargetPosition-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetJointTargetPosition)))
  'simRosSetJointTargetPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetJointTargetPosition)))
  'simRosSetJointTargetPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointTargetPosition)))
  "Returns string type for a service object of type '<simRosSetJointTargetPosition>"
  "vrep_common/simRosSetJointTargetPosition")