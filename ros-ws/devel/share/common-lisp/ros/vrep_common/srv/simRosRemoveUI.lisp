; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosRemoveUI-request.msg.html

(cl:defclass <simRosRemoveUI-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosRemoveUI-request (<simRosRemoveUI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosRemoveUI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosRemoveUI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosRemoveUI-request> is deprecated: use vrep_common-srv:simRosRemoveUI-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosRemoveUI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosRemoveUI-request>) ostream)
  "Serializes a message object of type '<simRosRemoveUI-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosRemoveUI-request>) istream)
  "Deserializes a message object of type '<simRosRemoveUI-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosRemoveUI-request>)))
  "Returns string type for a service object of type '<simRosRemoveUI-request>"
  "vrep_common/simRosRemoveUIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveUI-request)))
  "Returns string type for a service object of type 'simRosRemoveUI-request"
  "vrep_common/simRosRemoveUIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosRemoveUI-request>)))
  "Returns md5sum for a message object of type '<simRosRemoveUI-request>"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosRemoveUI-request)))
  "Returns md5sum for a message object of type 'simRosRemoveUI-request"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosRemoveUI-request>)))
  "Returns full string definition for message of type '<simRosRemoveUI-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosRemoveUI-request)))
  "Returns full string definition for message of type 'simRosRemoveUI-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosRemoveUI-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosRemoveUI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosRemoveUI-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosRemoveUI-response.msg.html

(cl:defclass <simRosRemoveUI-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosRemoveUI-response (<simRosRemoveUI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosRemoveUI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosRemoveUI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosRemoveUI-response> is deprecated: use vrep_common-srv:simRosRemoveUI-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosRemoveUI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosRemoveUI-response>) ostream)
  "Serializes a message object of type '<simRosRemoveUI-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosRemoveUI-response>) istream)
  "Deserializes a message object of type '<simRosRemoveUI-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosRemoveUI-response>)))
  "Returns string type for a service object of type '<simRosRemoveUI-response>"
  "vrep_common/simRosRemoveUIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveUI-response)))
  "Returns string type for a service object of type 'simRosRemoveUI-response"
  "vrep_common/simRosRemoveUIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosRemoveUI-response>)))
  "Returns md5sum for a message object of type '<simRosRemoveUI-response>"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosRemoveUI-response)))
  "Returns md5sum for a message object of type 'simRosRemoveUI-response"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosRemoveUI-response>)))
  "Returns full string definition for message of type '<simRosRemoveUI-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosRemoveUI-response)))
  "Returns full string definition for message of type 'simRosRemoveUI-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosRemoveUI-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosRemoveUI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosRemoveUI-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosRemoveUI)))
  'simRosRemoveUI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosRemoveUI)))
  'simRosRemoveUI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveUI)))
  "Returns string type for a service object of type '<simRosRemoveUI>"
  "vrep_common/simRosRemoveUI")