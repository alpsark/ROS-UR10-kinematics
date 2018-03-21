; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetUIButtonProperty-request.msg.html

(cl:defclass <simRosSetUIButtonProperty-request> (roslisp-msg-protocol:ros-message)
  ((uiHandle
    :reader uiHandle
    :initarg :uiHandle
    :type cl:integer
    :initform 0)
   (buttonID
    :reader buttonID
    :initarg :buttonID
    :type cl:integer
    :initform 0)
   (propertyValue
    :reader propertyValue
    :initarg :propertyValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetUIButtonProperty-request (<simRosSetUIButtonProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetUIButtonProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetUIButtonProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetUIButtonProperty-request> is deprecated: use vrep_common-srv:simRosSetUIButtonProperty-request instead.")))

(cl:ensure-generic-function 'uiHandle-val :lambda-list '(m))
(cl:defmethod uiHandle-val ((m <simRosSetUIButtonProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandle-val is deprecated.  Use vrep_common-srv:uiHandle instead.")
  (uiHandle m))

(cl:ensure-generic-function 'buttonID-val :lambda-list '(m))
(cl:defmethod buttonID-val ((m <simRosSetUIButtonProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:buttonID-val is deprecated.  Use vrep_common-srv:buttonID instead.")
  (buttonID m))

(cl:ensure-generic-function 'propertyValue-val :lambda-list '(m))
(cl:defmethod propertyValue-val ((m <simRosSetUIButtonProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:propertyValue-val is deprecated.  Use vrep_common-srv:propertyValue instead.")
  (propertyValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetUIButtonProperty-request>) ostream)
  "Serializes a message object of type '<simRosSetUIButtonProperty-request>"
  (cl:let* ((signed (cl:slot-value msg 'uiHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'buttonID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'propertyValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetUIButtonProperty-request>) istream)
  "Deserializes a message object of type '<simRosSetUIButtonProperty-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uiHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buttonID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'propertyValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetUIButtonProperty-request>)))
  "Returns string type for a service object of type '<simRosSetUIButtonProperty-request>"
  "vrep_common/simRosSetUIButtonPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUIButtonProperty-request)))
  "Returns string type for a service object of type 'simRosSetUIButtonProperty-request"
  "vrep_common/simRosSetUIButtonPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetUIButtonProperty-request>)))
  "Returns md5sum for a message object of type '<simRosSetUIButtonProperty-request>"
  "312d7f2f54e5998963314dbff36626e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetUIButtonProperty-request)))
  "Returns md5sum for a message object of type 'simRosSetUIButtonProperty-request"
  "312d7f2f54e5998963314dbff36626e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetUIButtonProperty-request>)))
  "Returns full string definition for message of type '<simRosSetUIButtonProperty-request>"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%int32 propertyValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetUIButtonProperty-request)))
  "Returns full string definition for message of type 'simRosSetUIButtonProperty-request"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%int32 propertyValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetUIButtonProperty-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetUIButtonProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetUIButtonProperty-request
    (cl:cons ':uiHandle (uiHandle msg))
    (cl:cons ':buttonID (buttonID msg))
    (cl:cons ':propertyValue (propertyValue msg))
))
;//! \htmlinclude simRosSetUIButtonProperty-response.msg.html

(cl:defclass <simRosSetUIButtonProperty-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetUIButtonProperty-response (<simRosSetUIButtonProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetUIButtonProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetUIButtonProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetUIButtonProperty-response> is deprecated: use vrep_common-srv:simRosSetUIButtonProperty-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetUIButtonProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetUIButtonProperty-response>) ostream)
  "Serializes a message object of type '<simRosSetUIButtonProperty-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetUIButtonProperty-response>) istream)
  "Deserializes a message object of type '<simRosSetUIButtonProperty-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetUIButtonProperty-response>)))
  "Returns string type for a service object of type '<simRosSetUIButtonProperty-response>"
  "vrep_common/simRosSetUIButtonPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUIButtonProperty-response)))
  "Returns string type for a service object of type 'simRosSetUIButtonProperty-response"
  "vrep_common/simRosSetUIButtonPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetUIButtonProperty-response>)))
  "Returns md5sum for a message object of type '<simRosSetUIButtonProperty-response>"
  "312d7f2f54e5998963314dbff36626e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetUIButtonProperty-response)))
  "Returns md5sum for a message object of type 'simRosSetUIButtonProperty-response"
  "312d7f2f54e5998963314dbff36626e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetUIButtonProperty-response>)))
  "Returns full string definition for message of type '<simRosSetUIButtonProperty-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetUIButtonProperty-response)))
  "Returns full string definition for message of type 'simRosSetUIButtonProperty-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetUIButtonProperty-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetUIButtonProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetUIButtonProperty-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetUIButtonProperty)))
  'simRosSetUIButtonProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetUIButtonProperty)))
  'simRosSetUIButtonProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUIButtonProperty)))
  "Returns string type for a service object of type '<simRosSetUIButtonProperty>"
  "vrep_common/simRosSetUIButtonProperty")