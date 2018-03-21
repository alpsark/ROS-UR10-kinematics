; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetJointPosition-request.msg.html

(cl:defclass <simRosSetJointPosition-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0))
)

(cl:defclass simRosSetJointPosition-request (<simRosSetJointPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointPosition-request> is deprecated: use vrep_common-srv:simRosSetJointPosition-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetJointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <simRosSetJointPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:position-val is deprecated.  Use vrep_common-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointPosition-request>) ostream)
  "Serializes a message object of type '<simRosSetJointPosition-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointPosition-request>) istream)
  "Deserializes a message object of type '<simRosSetJointPosition-request>"
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
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointPosition-request>)))
  "Returns string type for a service object of type '<simRosSetJointPosition-request>"
  "vrep_common/simRosSetJointPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointPosition-request)))
  "Returns string type for a service object of type 'simRosSetJointPosition-request"
  "vrep_common/simRosSetJointPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointPosition-request>)))
  "Returns md5sum for a message object of type '<simRosSetJointPosition-request>"
  "126349edc9c2951f8756d658f1fbb6a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointPosition-request)))
  "Returns md5sum for a message object of type 'simRosSetJointPosition-request"
  "126349edc9c2951f8756d658f1fbb6a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointPosition-request>)))
  "Returns full string definition for message of type '<simRosSetJointPosition-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointPosition-request)))
  "Returns full string definition for message of type 'simRosSetJointPosition-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%float64 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointPosition-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointPosition-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude simRosSetJointPosition-response.msg.html

(cl:defclass <simRosSetJointPosition-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetJointPosition-response (<simRosSetJointPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetJointPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetJointPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetJointPosition-response> is deprecated: use vrep_common-srv:simRosSetJointPosition-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetJointPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetJointPosition-response>) ostream)
  "Serializes a message object of type '<simRosSetJointPosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetJointPosition-response>) istream)
  "Deserializes a message object of type '<simRosSetJointPosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetJointPosition-response>)))
  "Returns string type for a service object of type '<simRosSetJointPosition-response>"
  "vrep_common/simRosSetJointPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointPosition-response)))
  "Returns string type for a service object of type 'simRosSetJointPosition-response"
  "vrep_common/simRosSetJointPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetJointPosition-response>)))
  "Returns md5sum for a message object of type '<simRosSetJointPosition-response>"
  "126349edc9c2951f8756d658f1fbb6a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetJointPosition-response)))
  "Returns md5sum for a message object of type 'simRosSetJointPosition-response"
  "126349edc9c2951f8756d658f1fbb6a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetJointPosition-response>)))
  "Returns full string definition for message of type '<simRosSetJointPosition-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetJointPosition-response)))
  "Returns full string definition for message of type 'simRosSetJointPosition-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetJointPosition-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetJointPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetJointPosition-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetJointPosition)))
  'simRosSetJointPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetJointPosition)))
  'simRosSetJointPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetJointPosition)))
  "Returns string type for a service object of type '<simRosSetJointPosition>"
  "vrep_common/simRosSetJointPosition")