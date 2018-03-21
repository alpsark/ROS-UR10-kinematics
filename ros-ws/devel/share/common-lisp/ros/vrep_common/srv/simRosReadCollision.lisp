; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosReadCollision-request.msg.html

(cl:defclass <simRosReadCollision-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosReadCollision-request (<simRosReadCollision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadCollision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadCollision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadCollision-request> is deprecated: use vrep_common-srv:simRosReadCollision-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosReadCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadCollision-request>) ostream)
  "Serializes a message object of type '<simRosReadCollision-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadCollision-request>) istream)
  "Deserializes a message object of type '<simRosReadCollision-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadCollision-request>)))
  "Returns string type for a service object of type '<simRosReadCollision-request>"
  "vrep_common/simRosReadCollisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadCollision-request)))
  "Returns string type for a service object of type 'simRosReadCollision-request"
  "vrep_common/simRosReadCollisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadCollision-request>)))
  "Returns md5sum for a message object of type '<simRosReadCollision-request>"
  "37515f25a62d19573a6222165e612868")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadCollision-request)))
  "Returns md5sum for a message object of type 'simRosReadCollision-request"
  "37515f25a62d19573a6222165e612868")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadCollision-request>)))
  "Returns full string definition for message of type '<simRosReadCollision-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadCollision-request)))
  "Returns full string definition for message of type 'simRosReadCollision-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadCollision-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadCollision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadCollision-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosReadCollision-response.msg.html

(cl:defclass <simRosReadCollision-response> (roslisp-msg-protocol:ros-message)
  ((collisionState
    :reader collisionState
    :initarg :collisionState
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosReadCollision-response (<simRosReadCollision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadCollision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadCollision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadCollision-response> is deprecated: use vrep_common-srv:simRosReadCollision-response instead.")))

(cl:ensure-generic-function 'collisionState-val :lambda-list '(m))
(cl:defmethod collisionState-val ((m <simRosReadCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:collisionState-val is deprecated.  Use vrep_common-srv:collisionState instead.")
  (collisionState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadCollision-response>) ostream)
  "Serializes a message object of type '<simRosReadCollision-response>"
  (cl:let* ((signed (cl:slot-value msg 'collisionState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadCollision-response>) istream)
  "Deserializes a message object of type '<simRosReadCollision-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collisionState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadCollision-response>)))
  "Returns string type for a service object of type '<simRosReadCollision-response>"
  "vrep_common/simRosReadCollisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadCollision-response)))
  "Returns string type for a service object of type 'simRosReadCollision-response"
  "vrep_common/simRosReadCollisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadCollision-response>)))
  "Returns md5sum for a message object of type '<simRosReadCollision-response>"
  "37515f25a62d19573a6222165e612868")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadCollision-response)))
  "Returns md5sum for a message object of type 'simRosReadCollision-response"
  "37515f25a62d19573a6222165e612868")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadCollision-response>)))
  "Returns full string definition for message of type '<simRosReadCollision-response>"
  (cl:format cl:nil "int32 collisionState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadCollision-response)))
  "Returns full string definition for message of type 'simRosReadCollision-response"
  (cl:format cl:nil "int32 collisionState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadCollision-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadCollision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadCollision-response
    (cl:cons ':collisionState (collisionState msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosReadCollision)))
  'simRosReadCollision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosReadCollision)))
  'simRosReadCollision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadCollision)))
  "Returns string type for a service object of type '<simRosReadCollision>"
  "vrep_common/simRosReadCollision")