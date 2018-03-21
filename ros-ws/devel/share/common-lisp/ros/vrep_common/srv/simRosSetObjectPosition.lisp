; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetObjectPosition-request.msg.html

(cl:defclass <simRosSetObjectPosition-request> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass simRosSetObjectPosition-request (<simRosSetObjectPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectPosition-request> is deprecated: use vrep_common-srv:simRosSetObjectPosition-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetObjectPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'relativeToObjectHandle-val :lambda-list '(m))
(cl:defmethod relativeToObjectHandle-val ((m <simRosSetObjectPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:relativeToObjectHandle-val is deprecated.  Use vrep_common-srv:relativeToObjectHandle instead.")
  (relativeToObjectHandle m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <simRosSetObjectPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:position-val is deprecated.  Use vrep_common-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectPosition-request>) ostream)
  "Serializes a message object of type '<simRosSetObjectPosition-request>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectPosition-request>) istream)
  "Deserializes a message object of type '<simRosSetObjectPosition-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectPosition-request>)))
  "Returns string type for a service object of type '<simRosSetObjectPosition-request>"
  "vrep_common/simRosSetObjectPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectPosition-request)))
  "Returns string type for a service object of type 'simRosSetObjectPosition-request"
  "vrep_common/simRosSetObjectPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectPosition-request>)))
  "Returns md5sum for a message object of type '<simRosSetObjectPosition-request>"
  "6f49de0c0a94265fc772061f892cd142")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectPosition-request)))
  "Returns md5sum for a message object of type 'simRosSetObjectPosition-request"
  "6f49de0c0a94265fc772061f892cd142")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectPosition-request>)))
  "Returns full string definition for message of type '<simRosSetObjectPosition-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 relativeToObjectHandle~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectPosition-request)))
  "Returns full string definition for message of type 'simRosSetObjectPosition-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 relativeToObjectHandle~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectPosition-request>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectPosition-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':relativeToObjectHandle (relativeToObjectHandle msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude simRosSetObjectPosition-response.msg.html

(cl:defclass <simRosSetObjectPosition-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetObjectPosition-response (<simRosSetObjectPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectPosition-response> is deprecated: use vrep_common-srv:simRosSetObjectPosition-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetObjectPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectPosition-response>) ostream)
  "Serializes a message object of type '<simRosSetObjectPosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectPosition-response>) istream)
  "Deserializes a message object of type '<simRosSetObjectPosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectPosition-response>)))
  "Returns string type for a service object of type '<simRosSetObjectPosition-response>"
  "vrep_common/simRosSetObjectPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectPosition-response)))
  "Returns string type for a service object of type 'simRosSetObjectPosition-response"
  "vrep_common/simRosSetObjectPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectPosition-response>)))
  "Returns md5sum for a message object of type '<simRosSetObjectPosition-response>"
  "6f49de0c0a94265fc772061f892cd142")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectPosition-response)))
  "Returns md5sum for a message object of type 'simRosSetObjectPosition-response"
  "6f49de0c0a94265fc772061f892cd142")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectPosition-response>)))
  "Returns full string definition for message of type '<simRosSetObjectPosition-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectPosition-response)))
  "Returns full string definition for message of type 'simRosSetObjectPosition-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectPosition-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectPosition-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetObjectPosition)))
  'simRosSetObjectPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetObjectPosition)))
  'simRosSetObjectPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectPosition)))
  "Returns string type for a service object of type '<simRosSetObjectPosition>"
  "vrep_common/simRosSetObjectPosition")