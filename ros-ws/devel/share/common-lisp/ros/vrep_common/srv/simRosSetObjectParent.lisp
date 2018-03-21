; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetObjectParent-request.msg.html

(cl:defclass <simRosSetObjectParent-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (parentHandle
    :reader parentHandle
    :initarg :parentHandle
    :type cl:integer
    :initform 0)
   (keepInPlace
    :reader keepInPlace
    :initarg :keepInPlace
    :type cl:fixnum
    :initform 0))
)

(cl:defclass simRosSetObjectParent-request (<simRosSetObjectParent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectParent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectParent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectParent-request> is deprecated: use vrep_common-srv:simRosSetObjectParent-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetObjectParent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'parentHandle-val :lambda-list '(m))
(cl:defmethod parentHandle-val ((m <simRosSetObjectParent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parentHandle-val is deprecated.  Use vrep_common-srv:parentHandle instead.")
  (parentHandle m))

(cl:ensure-generic-function 'keepInPlace-val :lambda-list '(m))
(cl:defmethod keepInPlace-val ((m <simRosSetObjectParent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:keepInPlace-val is deprecated.  Use vrep_common-srv:keepInPlace instead.")
  (keepInPlace m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectParent-request>) ostream)
  "Serializes a message object of type '<simRosSetObjectParent-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parentHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keepInPlace)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectParent-request>) istream)
  "Deserializes a message object of type '<simRosSetObjectParent-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parentHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keepInPlace)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectParent-request>)))
  "Returns string type for a service object of type '<simRosSetObjectParent-request>"
  "vrep_common/simRosSetObjectParentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectParent-request)))
  "Returns string type for a service object of type 'simRosSetObjectParent-request"
  "vrep_common/simRosSetObjectParentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectParent-request>)))
  "Returns md5sum for a message object of type '<simRosSetObjectParent-request>"
  "3fe38263068d68ac8ee5d5462c95bf28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectParent-request)))
  "Returns md5sum for a message object of type 'simRosSetObjectParent-request"
  "3fe38263068d68ac8ee5d5462c95bf28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectParent-request>)))
  "Returns full string definition for message of type '<simRosSetObjectParent-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parentHandle~%uint8 keepInPlace~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectParent-request)))
  "Returns full string definition for message of type 'simRosSetObjectParent-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 parentHandle~%uint8 keepInPlace~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectParent-request>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectParent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectParent-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':parentHandle (parentHandle msg))
    (cl:cons ':keepInPlace (keepInPlace msg))
))
;//! \htmlinclude simRosSetObjectParent-response.msg.html

(cl:defclass <simRosSetObjectParent-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetObjectParent-response (<simRosSetObjectParent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectParent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectParent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectParent-response> is deprecated: use vrep_common-srv:simRosSetObjectParent-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetObjectParent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectParent-response>) ostream)
  "Serializes a message object of type '<simRosSetObjectParent-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectParent-response>) istream)
  "Deserializes a message object of type '<simRosSetObjectParent-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectParent-response>)))
  "Returns string type for a service object of type '<simRosSetObjectParent-response>"
  "vrep_common/simRosSetObjectParentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectParent-response)))
  "Returns string type for a service object of type 'simRosSetObjectParent-response"
  "vrep_common/simRosSetObjectParentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectParent-response>)))
  "Returns md5sum for a message object of type '<simRosSetObjectParent-response>"
  "3fe38263068d68ac8ee5d5462c95bf28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectParent-response)))
  "Returns md5sum for a message object of type 'simRosSetObjectParent-response"
  "3fe38263068d68ac8ee5d5462c95bf28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectParent-response>)))
  "Returns full string definition for message of type '<simRosSetObjectParent-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectParent-response)))
  "Returns full string definition for message of type 'simRosSetObjectParent-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectParent-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectParent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectParent-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetObjectParent)))
  'simRosSetObjectParent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetObjectParent)))
  'simRosSetObjectParent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectParent)))
  "Returns string type for a service object of type '<simRosSetObjectParent>"
  "vrep_common/simRosSetObjectParent")