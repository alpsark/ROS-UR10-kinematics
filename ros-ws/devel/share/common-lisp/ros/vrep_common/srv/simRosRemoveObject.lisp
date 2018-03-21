; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosRemoveObject-request.msg.html

(cl:defclass <simRosRemoveObject-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosRemoveObject-request (<simRosRemoveObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosRemoveObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosRemoveObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosRemoveObject-request> is deprecated: use vrep_common-srv:simRosRemoveObject-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosRemoveObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosRemoveObject-request>) ostream)
  "Serializes a message object of type '<simRosRemoveObject-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosRemoveObject-request>) istream)
  "Deserializes a message object of type '<simRosRemoveObject-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosRemoveObject-request>)))
  "Returns string type for a service object of type '<simRosRemoveObject-request>"
  "vrep_common/simRosRemoveObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveObject-request)))
  "Returns string type for a service object of type 'simRosRemoveObject-request"
  "vrep_common/simRosRemoveObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosRemoveObject-request>)))
  "Returns md5sum for a message object of type '<simRosRemoveObject-request>"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosRemoveObject-request)))
  "Returns md5sum for a message object of type 'simRosRemoveObject-request"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosRemoveObject-request>)))
  "Returns full string definition for message of type '<simRosRemoveObject-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosRemoveObject-request)))
  "Returns full string definition for message of type 'simRosRemoveObject-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosRemoveObject-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosRemoveObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosRemoveObject-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosRemoveObject-response.msg.html

(cl:defclass <simRosRemoveObject-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosRemoveObject-response (<simRosRemoveObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosRemoveObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosRemoveObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosRemoveObject-response> is deprecated: use vrep_common-srv:simRosRemoveObject-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosRemoveObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosRemoveObject-response>) ostream)
  "Serializes a message object of type '<simRosRemoveObject-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosRemoveObject-response>) istream)
  "Deserializes a message object of type '<simRosRemoveObject-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosRemoveObject-response>)))
  "Returns string type for a service object of type '<simRosRemoveObject-response>"
  "vrep_common/simRosRemoveObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveObject-response)))
  "Returns string type for a service object of type 'simRosRemoveObject-response"
  "vrep_common/simRosRemoveObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosRemoveObject-response>)))
  "Returns md5sum for a message object of type '<simRosRemoveObject-response>"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosRemoveObject-response)))
  "Returns md5sum for a message object of type 'simRosRemoveObject-response"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosRemoveObject-response>)))
  "Returns full string definition for message of type '<simRosRemoveObject-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosRemoveObject-response)))
  "Returns full string definition for message of type 'simRosRemoveObject-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosRemoveObject-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosRemoveObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosRemoveObject-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosRemoveObject)))
  'simRosRemoveObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosRemoveObject)))
  'simRosRemoveObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveObject)))
  "Returns string type for a service object of type '<simRosRemoveObject>"
  "vrep_common/simRosRemoveObject")