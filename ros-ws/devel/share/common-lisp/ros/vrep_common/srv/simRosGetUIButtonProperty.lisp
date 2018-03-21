; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetUIButtonProperty-request.msg.html

(cl:defclass <simRosGetUIButtonProperty-request> (roslisp-msg-protocol:ros-message)
  ((uiHandle
    :reader uiHandle
    :initarg :uiHandle
    :type cl:integer
    :initform 0)
   (buttonID
    :reader buttonID
    :initarg :buttonID
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetUIButtonProperty-request (<simRosGetUIButtonProperty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUIButtonProperty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUIButtonProperty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUIButtonProperty-request> is deprecated: use vrep_common-srv:simRosGetUIButtonProperty-request instead.")))

(cl:ensure-generic-function 'uiHandle-val :lambda-list '(m))
(cl:defmethod uiHandle-val ((m <simRosGetUIButtonProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandle-val is deprecated.  Use vrep_common-srv:uiHandle instead.")
  (uiHandle m))

(cl:ensure-generic-function 'buttonID-val :lambda-list '(m))
(cl:defmethod buttonID-val ((m <simRosGetUIButtonProperty-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:buttonID-val is deprecated.  Use vrep_common-srv:buttonID instead.")
  (buttonID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUIButtonProperty-request>) ostream)
  "Serializes a message object of type '<simRosGetUIButtonProperty-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUIButtonProperty-request>) istream)
  "Deserializes a message object of type '<simRosGetUIButtonProperty-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUIButtonProperty-request>)))
  "Returns string type for a service object of type '<simRosGetUIButtonProperty-request>"
  "vrep_common/simRosGetUIButtonPropertyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIButtonProperty-request)))
  "Returns string type for a service object of type 'simRosGetUIButtonProperty-request"
  "vrep_common/simRosGetUIButtonPropertyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUIButtonProperty-request>)))
  "Returns md5sum for a message object of type '<simRosGetUIButtonProperty-request>"
  "3c5af3530571fd8a5d18090795eb3f0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUIButtonProperty-request)))
  "Returns md5sum for a message object of type 'simRosGetUIButtonProperty-request"
  "3c5af3530571fd8a5d18090795eb3f0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUIButtonProperty-request>)))
  "Returns full string definition for message of type '<simRosGetUIButtonProperty-request>"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUIButtonProperty-request)))
  "Returns full string definition for message of type 'simRosGetUIButtonProperty-request"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUIButtonProperty-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUIButtonProperty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUIButtonProperty-request
    (cl:cons ':uiHandle (uiHandle msg))
    (cl:cons ':buttonID (buttonID msg))
))
;//! \htmlinclude simRosGetUIButtonProperty-response.msg.html

(cl:defclass <simRosGetUIButtonProperty-response> (roslisp-msg-protocol:ros-message)
  ((propertyValue
    :reader propertyValue
    :initarg :propertyValue
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetUIButtonProperty-response (<simRosGetUIButtonProperty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUIButtonProperty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUIButtonProperty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUIButtonProperty-response> is deprecated: use vrep_common-srv:simRosGetUIButtonProperty-response instead.")))

(cl:ensure-generic-function 'propertyValue-val :lambda-list '(m))
(cl:defmethod propertyValue-val ((m <simRosGetUIButtonProperty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:propertyValue-val is deprecated.  Use vrep_common-srv:propertyValue instead.")
  (propertyValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUIButtonProperty-response>) ostream)
  "Serializes a message object of type '<simRosGetUIButtonProperty-response>"
  (cl:let* ((signed (cl:slot-value msg 'propertyValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUIButtonProperty-response>) istream)
  "Deserializes a message object of type '<simRosGetUIButtonProperty-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'propertyValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUIButtonProperty-response>)))
  "Returns string type for a service object of type '<simRosGetUIButtonProperty-response>"
  "vrep_common/simRosGetUIButtonPropertyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIButtonProperty-response)))
  "Returns string type for a service object of type 'simRosGetUIButtonProperty-response"
  "vrep_common/simRosGetUIButtonPropertyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUIButtonProperty-response>)))
  "Returns md5sum for a message object of type '<simRosGetUIButtonProperty-response>"
  "3c5af3530571fd8a5d18090795eb3f0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUIButtonProperty-response)))
  "Returns md5sum for a message object of type 'simRosGetUIButtonProperty-response"
  "3c5af3530571fd8a5d18090795eb3f0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUIButtonProperty-response>)))
  "Returns full string definition for message of type '<simRosGetUIButtonProperty-response>"
  (cl:format cl:nil "int32 propertyValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUIButtonProperty-response)))
  "Returns full string definition for message of type 'simRosGetUIButtonProperty-response"
  (cl:format cl:nil "int32 propertyValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUIButtonProperty-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUIButtonProperty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUIButtonProperty-response
    (cl:cons ':propertyValue (propertyValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetUIButtonProperty)))
  'simRosGetUIButtonProperty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetUIButtonProperty)))
  'simRosGetUIButtonProperty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIButtonProperty)))
  "Returns string type for a service object of type '<simRosGetUIButtonProperty>"
  "vrep_common/simRosGetUIButtonProperty")