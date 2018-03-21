; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetUISlider-request.msg.html

(cl:defclass <simRosSetUISlider-request> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetUISlider-request (<simRosSetUISlider-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetUISlider-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetUISlider-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetUISlider-request> is deprecated: use vrep_common-srv:simRosSetUISlider-request instead.")))

(cl:ensure-generic-function 'uiHandle-val :lambda-list '(m))
(cl:defmethod uiHandle-val ((m <simRosSetUISlider-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandle-val is deprecated.  Use vrep_common-srv:uiHandle instead.")
  (uiHandle m))

(cl:ensure-generic-function 'buttonID-val :lambda-list '(m))
(cl:defmethod buttonID-val ((m <simRosSetUISlider-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:buttonID-val is deprecated.  Use vrep_common-srv:buttonID instead.")
  (buttonID m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <simRosSetUISlider-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:position-val is deprecated.  Use vrep_common-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetUISlider-request>) ostream)
  "Serializes a message object of type '<simRosSetUISlider-request>"
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
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetUISlider-request>) istream)
  "Deserializes a message object of type '<simRosSetUISlider-request>"
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
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetUISlider-request>)))
  "Returns string type for a service object of type '<simRosSetUISlider-request>"
  "vrep_common/simRosSetUISliderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUISlider-request)))
  "Returns string type for a service object of type 'simRosSetUISlider-request"
  "vrep_common/simRosSetUISliderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetUISlider-request>)))
  "Returns md5sum for a message object of type '<simRosSetUISlider-request>"
  "a3a4f1222511591c647246b4904a9a10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetUISlider-request)))
  "Returns md5sum for a message object of type 'simRosSetUISlider-request"
  "a3a4f1222511591c647246b4904a9a10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetUISlider-request>)))
  "Returns full string definition for message of type '<simRosSetUISlider-request>"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%int32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetUISlider-request)))
  "Returns full string definition for message of type 'simRosSetUISlider-request"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%int32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetUISlider-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetUISlider-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetUISlider-request
    (cl:cons ':uiHandle (uiHandle msg))
    (cl:cons ':buttonID (buttonID msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude simRosSetUISlider-response.msg.html

(cl:defclass <simRosSetUISlider-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetUISlider-response (<simRosSetUISlider-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetUISlider-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetUISlider-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetUISlider-response> is deprecated: use vrep_common-srv:simRosSetUISlider-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetUISlider-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetUISlider-response>) ostream)
  "Serializes a message object of type '<simRosSetUISlider-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetUISlider-response>) istream)
  "Deserializes a message object of type '<simRosSetUISlider-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetUISlider-response>)))
  "Returns string type for a service object of type '<simRosSetUISlider-response>"
  "vrep_common/simRosSetUISliderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUISlider-response)))
  "Returns string type for a service object of type 'simRosSetUISlider-response"
  "vrep_common/simRosSetUISliderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetUISlider-response>)))
  "Returns md5sum for a message object of type '<simRosSetUISlider-response>"
  "a3a4f1222511591c647246b4904a9a10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetUISlider-response)))
  "Returns md5sum for a message object of type 'simRosSetUISlider-response"
  "a3a4f1222511591c647246b4904a9a10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetUISlider-response>)))
  "Returns full string definition for message of type '<simRosSetUISlider-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetUISlider-response)))
  "Returns full string definition for message of type 'simRosSetUISlider-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetUISlider-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetUISlider-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetUISlider-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetUISlider)))
  'simRosSetUISlider-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetUISlider)))
  'simRosSetUISlider-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetUISlider)))
  "Returns string type for a service object of type '<simRosSetUISlider>"
  "vrep_common/simRosSetUISlider")