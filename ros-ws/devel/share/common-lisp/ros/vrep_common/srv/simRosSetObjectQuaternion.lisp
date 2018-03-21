; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetObjectQuaternion-request.msg.html

(cl:defclass <simRosSetObjectQuaternion-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (relativeToObjectHandle
    :reader relativeToObjectHandle
    :initarg :relativeToObjectHandle
    :type cl:integer
    :initform 0)
   (quaternion
    :reader quaternion
    :initarg :quaternion
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass simRosSetObjectQuaternion-request (<simRosSetObjectQuaternion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectQuaternion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectQuaternion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectQuaternion-request> is deprecated: use vrep_common-srv:simRosSetObjectQuaternion-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetObjectQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'relativeToObjectHandle-val :lambda-list '(m))
(cl:defmethod relativeToObjectHandle-val ((m <simRosSetObjectQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:relativeToObjectHandle-val is deprecated.  Use vrep_common-srv:relativeToObjectHandle instead.")
  (relativeToObjectHandle m))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <simRosSetObjectQuaternion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:quaternion-val is deprecated.  Use vrep_common-srv:quaternion instead.")
  (quaternion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectQuaternion-request>) ostream)
  "Serializes a message object of type '<simRosSetObjectQuaternion-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relativeToObjectHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectQuaternion-request>) istream)
  "Deserializes a message object of type '<simRosSetObjectQuaternion-request>"
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
      (cl:setf (cl:slot-value msg 'relativeToObjectHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectQuaternion-request>)))
  "Returns string type for a service object of type '<simRosSetObjectQuaternion-request>"
  "vrep_common/simRosSetObjectQuaternionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectQuaternion-request)))
  "Returns string type for a service object of type 'simRosSetObjectQuaternion-request"
  "vrep_common/simRosSetObjectQuaternionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectQuaternion-request>)))
  "Returns md5sum for a message object of type '<simRosSetObjectQuaternion-request>"
  "f5fe7b4813e58c37e0cb1c1585da009e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectQuaternion-request)))
  "Returns md5sum for a message object of type 'simRosSetObjectQuaternion-request"
  "f5fe7b4813e58c37e0cb1c1585da009e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectQuaternion-request>)))
  "Returns full string definition for message of type '<simRosSetObjectQuaternion-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 relativeToObjectHandle~%geometry_msgs/Quaternion quaternion~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectQuaternion-request)))
  "Returns full string definition for message of type 'simRosSetObjectQuaternion-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 relativeToObjectHandle~%geometry_msgs/Quaternion quaternion~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectQuaternion-request>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectQuaternion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectQuaternion-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':relativeToObjectHandle (relativeToObjectHandle msg))
    (cl:cons ':quaternion (quaternion msg))
))
;//! \htmlinclude simRosSetObjectQuaternion-response.msg.html

(cl:defclass <simRosSetObjectQuaternion-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetObjectQuaternion-response (<simRosSetObjectQuaternion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectQuaternion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectQuaternion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectQuaternion-response> is deprecated: use vrep_common-srv:simRosSetObjectQuaternion-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetObjectQuaternion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectQuaternion-response>) ostream)
  "Serializes a message object of type '<simRosSetObjectQuaternion-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectQuaternion-response>) istream)
  "Deserializes a message object of type '<simRosSetObjectQuaternion-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectQuaternion-response>)))
  "Returns string type for a service object of type '<simRosSetObjectQuaternion-response>"
  "vrep_common/simRosSetObjectQuaternionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectQuaternion-response)))
  "Returns string type for a service object of type 'simRosSetObjectQuaternion-response"
  "vrep_common/simRosSetObjectQuaternionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectQuaternion-response>)))
  "Returns md5sum for a message object of type '<simRosSetObjectQuaternion-response>"
  "f5fe7b4813e58c37e0cb1c1585da009e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectQuaternion-response)))
  "Returns md5sum for a message object of type 'simRosSetObjectQuaternion-response"
  "f5fe7b4813e58c37e0cb1c1585da009e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectQuaternion-response>)))
  "Returns full string definition for message of type '<simRosSetObjectQuaternion-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectQuaternion-response)))
  "Returns full string definition for message of type 'simRosSetObjectQuaternion-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectQuaternion-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectQuaternion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectQuaternion-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetObjectQuaternion)))
  'simRosSetObjectQuaternion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetObjectQuaternion)))
  'simRosSetObjectQuaternion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectQuaternion)))
  "Returns string type for a service object of type '<simRosSetObjectQuaternion>"
  "vrep_common/simRosSetObjectQuaternion")