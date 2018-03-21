; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosRemoveModel-request.msg.html

(cl:defclass <simRosRemoveModel-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosRemoveModel-request (<simRosRemoveModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosRemoveModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosRemoveModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosRemoveModel-request> is deprecated: use vrep_common-srv:simRosRemoveModel-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosRemoveModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosRemoveModel-request>) ostream)
  "Serializes a message object of type '<simRosRemoveModel-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosRemoveModel-request>) istream)
  "Deserializes a message object of type '<simRosRemoveModel-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosRemoveModel-request>)))
  "Returns string type for a service object of type '<simRosRemoveModel-request>"
  "vrep_common/simRosRemoveModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveModel-request)))
  "Returns string type for a service object of type 'simRosRemoveModel-request"
  "vrep_common/simRosRemoveModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosRemoveModel-request>)))
  "Returns md5sum for a message object of type '<simRosRemoveModel-request>"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosRemoveModel-request)))
  "Returns md5sum for a message object of type 'simRosRemoveModel-request"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosRemoveModel-request>)))
  "Returns full string definition for message of type '<simRosRemoveModel-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosRemoveModel-request)))
  "Returns full string definition for message of type 'simRosRemoveModel-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosRemoveModel-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosRemoveModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosRemoveModel-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosRemoveModel-response.msg.html

(cl:defclass <simRosRemoveModel-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosRemoveModel-response (<simRosRemoveModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosRemoveModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosRemoveModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosRemoveModel-response> is deprecated: use vrep_common-srv:simRosRemoveModel-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosRemoveModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosRemoveModel-response>) ostream)
  "Serializes a message object of type '<simRosRemoveModel-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosRemoveModel-response>) istream)
  "Deserializes a message object of type '<simRosRemoveModel-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosRemoveModel-response>)))
  "Returns string type for a service object of type '<simRosRemoveModel-response>"
  "vrep_common/simRosRemoveModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveModel-response)))
  "Returns string type for a service object of type 'simRosRemoveModel-response"
  "vrep_common/simRosRemoveModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosRemoveModel-response>)))
  "Returns md5sum for a message object of type '<simRosRemoveModel-response>"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosRemoveModel-response)))
  "Returns md5sum for a message object of type 'simRosRemoveModel-response"
  "6833353cd429b83819dab869600ce745")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosRemoveModel-response>)))
  "Returns full string definition for message of type '<simRosRemoveModel-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosRemoveModel-response)))
  "Returns full string definition for message of type 'simRosRemoveModel-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosRemoveModel-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosRemoveModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosRemoveModel-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosRemoveModel)))
  'simRosRemoveModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosRemoveModel)))
  'simRosRemoveModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosRemoveModel)))
  "Returns string type for a service object of type '<simRosRemoveModel>"
  "vrep_common/simRosRemoveModel")