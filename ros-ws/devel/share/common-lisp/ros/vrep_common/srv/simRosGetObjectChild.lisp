; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectChild-request.msg.html

(cl:defclass <simRosGetObjectChild-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectChild-request (<simRosGetObjectChild-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectChild-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectChild-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectChild-request> is deprecated: use vrep_common-srv:simRosGetObjectChild-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetObjectChild-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <simRosGetObjectChild-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:index-val is deprecated.  Use vrep_common-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectChild-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectChild-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectChild-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectChild-request>"
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
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectChild-request>)))
  "Returns string type for a service object of type '<simRosGetObjectChild-request>"
  "vrep_common/simRosGetObjectChildRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectChild-request)))
  "Returns string type for a service object of type 'simRosGetObjectChild-request"
  "vrep_common/simRosGetObjectChildRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectChild-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectChild-request>"
  "2fc24ec13ef12d145e6853d1469b925c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectChild-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectChild-request"
  "2fc24ec13ef12d145e6853d1469b925c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectChild-request>)))
  "Returns full string definition for message of type '<simRosGetObjectChild-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectChild-request)))
  "Returns full string definition for message of type 'simRosGetObjectChild-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectChild-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectChild-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectChild-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude simRosGetObjectChild-response.msg.html

(cl:defclass <simRosGetObjectChild-response> (roslisp-msg-protocol:ros-message)
  ((childHandle
    :reader childHandle
    :initarg :childHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectChild-response (<simRosGetObjectChild-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectChild-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectChild-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectChild-response> is deprecated: use vrep_common-srv:simRosGetObjectChild-response instead.")))

(cl:ensure-generic-function 'childHandle-val :lambda-list '(m))
(cl:defmethod childHandle-val ((m <simRosGetObjectChild-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:childHandle-val is deprecated.  Use vrep_common-srv:childHandle instead.")
  (childHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectChild-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectChild-response>"
  (cl:let* ((signed (cl:slot-value msg 'childHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectChild-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectChild-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'childHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectChild-response>)))
  "Returns string type for a service object of type '<simRosGetObjectChild-response>"
  "vrep_common/simRosGetObjectChildResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectChild-response)))
  "Returns string type for a service object of type 'simRosGetObjectChild-response"
  "vrep_common/simRosGetObjectChildResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectChild-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectChild-response>"
  "2fc24ec13ef12d145e6853d1469b925c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectChild-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectChild-response"
  "2fc24ec13ef12d145e6853d1469b925c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectChild-response>)))
  "Returns full string definition for message of type '<simRosGetObjectChild-response>"
  (cl:format cl:nil "int32 childHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectChild-response)))
  "Returns full string definition for message of type 'simRosGetObjectChild-response"
  (cl:format cl:nil "int32 childHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectChild-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectChild-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectChild-response
    (cl:cons ':childHandle (childHandle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectChild)))
  'simRosGetObjectChild-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectChild)))
  'simRosGetObjectChild-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectChild)))
  "Returns string type for a service object of type '<simRosGetObjectChild>"
  "vrep_common/simRosGetObjectChild")