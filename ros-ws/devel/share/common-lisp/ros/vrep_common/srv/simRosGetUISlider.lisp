; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetUISlider-request.msg.html

(cl:defclass <simRosGetUISlider-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass simRosGetUISlider-request (<simRosGetUISlider-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUISlider-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUISlider-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUISlider-request> is deprecated: use vrep_common-srv:simRosGetUISlider-request instead.")))

(cl:ensure-generic-function 'uiHandle-val :lambda-list '(m))
(cl:defmethod uiHandle-val ((m <simRosGetUISlider-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandle-val is deprecated.  Use vrep_common-srv:uiHandle instead.")
  (uiHandle m))

(cl:ensure-generic-function 'buttonID-val :lambda-list '(m))
(cl:defmethod buttonID-val ((m <simRosGetUISlider-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:buttonID-val is deprecated.  Use vrep_common-srv:buttonID instead.")
  (buttonID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUISlider-request>) ostream)
  "Serializes a message object of type '<simRosGetUISlider-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUISlider-request>) istream)
  "Deserializes a message object of type '<simRosGetUISlider-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUISlider-request>)))
  "Returns string type for a service object of type '<simRosGetUISlider-request>"
  "vrep_common/simRosGetUISliderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUISlider-request)))
  "Returns string type for a service object of type 'simRosGetUISlider-request"
  "vrep_common/simRosGetUISliderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUISlider-request>)))
  "Returns md5sum for a message object of type '<simRosGetUISlider-request>"
  "5406790310ec56ad5fb998c1037f3650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUISlider-request)))
  "Returns md5sum for a message object of type 'simRosGetUISlider-request"
  "5406790310ec56ad5fb998c1037f3650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUISlider-request>)))
  "Returns full string definition for message of type '<simRosGetUISlider-request>"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUISlider-request)))
  "Returns full string definition for message of type 'simRosGetUISlider-request"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%int32 buttonID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUISlider-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUISlider-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUISlider-request
    (cl:cons ':uiHandle (uiHandle msg))
    (cl:cons ':buttonID (buttonID msg))
))
;//! \htmlinclude simRosGetUISlider-response.msg.html

(cl:defclass <simRosGetUISlider-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetUISlider-response (<simRosGetUISlider-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUISlider-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUISlider-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUISlider-response> is deprecated: use vrep_common-srv:simRosGetUISlider-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <simRosGetUISlider-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:position-val is deprecated.  Use vrep_common-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUISlider-response>) ostream)
  "Serializes a message object of type '<simRosGetUISlider-response>"
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUISlider-response>) istream)
  "Deserializes a message object of type '<simRosGetUISlider-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUISlider-response>)))
  "Returns string type for a service object of type '<simRosGetUISlider-response>"
  "vrep_common/simRosGetUISliderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUISlider-response)))
  "Returns string type for a service object of type 'simRosGetUISlider-response"
  "vrep_common/simRosGetUISliderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUISlider-response>)))
  "Returns md5sum for a message object of type '<simRosGetUISlider-response>"
  "5406790310ec56ad5fb998c1037f3650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUISlider-response)))
  "Returns md5sum for a message object of type 'simRosGetUISlider-response"
  "5406790310ec56ad5fb998c1037f3650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUISlider-response>)))
  "Returns full string definition for message of type '<simRosGetUISlider-response>"
  (cl:format cl:nil "int32 position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUISlider-response)))
  "Returns full string definition for message of type 'simRosGetUISlider-response"
  (cl:format cl:nil "int32 position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUISlider-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUISlider-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUISlider-response
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetUISlider)))
  'simRosGetUISlider-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetUISlider)))
  'simRosGetUISlider-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUISlider)))
  "Returns string type for a service object of type '<simRosGetUISlider>"
  "vrep_common/simRosGetUISlider")