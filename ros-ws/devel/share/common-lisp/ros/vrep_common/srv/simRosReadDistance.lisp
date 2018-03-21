; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosReadDistance-request.msg.html

(cl:defclass <simRosReadDistance-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosReadDistance-request (<simRosReadDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadDistance-request> is deprecated: use vrep_common-srv:simRosReadDistance-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosReadDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadDistance-request>) ostream)
  "Serializes a message object of type '<simRosReadDistance-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadDistance-request>) istream)
  "Deserializes a message object of type '<simRosReadDistance-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadDistance-request>)))
  "Returns string type for a service object of type '<simRosReadDistance-request>"
  "vrep_common/simRosReadDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadDistance-request)))
  "Returns string type for a service object of type 'simRosReadDistance-request"
  "vrep_common/simRosReadDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadDistance-request>)))
  "Returns md5sum for a message object of type '<simRosReadDistance-request>"
  "099258cb82ad99c080c59f94344f9f24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadDistance-request)))
  "Returns md5sum for a message object of type 'simRosReadDistance-request"
  "099258cb82ad99c080c59f94344f9f24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadDistance-request>)))
  "Returns full string definition for message of type '<simRosReadDistance-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadDistance-request)))
  "Returns full string definition for message of type 'simRosReadDistance-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadDistance-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadDistance-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosReadDistance-response.msg.html

(cl:defclass <simRosReadDistance-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosReadDistance-response (<simRosReadDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadDistance-response> is deprecated: use vrep_common-srv:simRosReadDistance-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosReadDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <simRosReadDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:distance-val is deprecated.  Use vrep_common-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadDistance-response>) ostream)
  "Serializes a message object of type '<simRosReadDistance-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadDistance-response>) istream)
  "Deserializes a message object of type '<simRosReadDistance-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadDistance-response>)))
  "Returns string type for a service object of type '<simRosReadDistance-response>"
  "vrep_common/simRosReadDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadDistance-response)))
  "Returns string type for a service object of type 'simRosReadDistance-response"
  "vrep_common/simRosReadDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadDistance-response>)))
  "Returns md5sum for a message object of type '<simRosReadDistance-response>"
  "099258cb82ad99c080c59f94344f9f24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadDistance-response)))
  "Returns md5sum for a message object of type 'simRosReadDistance-response"
  "099258cb82ad99c080c59f94344f9f24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadDistance-response>)))
  "Returns full string definition for message of type '<simRosReadDistance-response>"
  (cl:format cl:nil "int32 result~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadDistance-response)))
  "Returns full string definition for message of type 'simRosReadDistance-response"
  (cl:format cl:nil "int32 result~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadDistance-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadDistance-response
    (cl:cons ':result (result msg))
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosReadDistance)))
  'simRosReadDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosReadDistance)))
  'simRosReadDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadDistance)))
  "Returns string type for a service object of type '<simRosReadDistance>"
  "vrep_common/simRosReadDistance")