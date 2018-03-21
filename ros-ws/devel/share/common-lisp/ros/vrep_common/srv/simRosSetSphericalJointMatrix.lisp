; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetSphericalJointMatrix-request.msg.html

(cl:defclass <simRosSetSphericalJointMatrix-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (quaternion
    :reader quaternion
    :initarg :quaternion
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass simRosSetSphericalJointMatrix-request (<simRosSetSphericalJointMatrix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetSphericalJointMatrix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetSphericalJointMatrix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetSphericalJointMatrix-request> is deprecated: use vrep_common-srv:simRosSetSphericalJointMatrix-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetSphericalJointMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <simRosSetSphericalJointMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:quaternion-val is deprecated.  Use vrep_common-srv:quaternion instead.")
  (quaternion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetSphericalJointMatrix-request>) ostream)
  "Serializes a message object of type '<simRosSetSphericalJointMatrix-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetSphericalJointMatrix-request>) istream)
  "Deserializes a message object of type '<simRosSetSphericalJointMatrix-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetSphericalJointMatrix-request>)))
  "Returns string type for a service object of type '<simRosSetSphericalJointMatrix-request>"
  "vrep_common/simRosSetSphericalJointMatrixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetSphericalJointMatrix-request)))
  "Returns string type for a service object of type 'simRosSetSphericalJointMatrix-request"
  "vrep_common/simRosSetSphericalJointMatrixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetSphericalJointMatrix-request>)))
  "Returns md5sum for a message object of type '<simRosSetSphericalJointMatrix-request>"
  "ff6022ac5ed35d4a73c1ed756bc036db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetSphericalJointMatrix-request)))
  "Returns md5sum for a message object of type 'simRosSetSphericalJointMatrix-request"
  "ff6022ac5ed35d4a73c1ed756bc036db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetSphericalJointMatrix-request>)))
  "Returns full string definition for message of type '<simRosSetSphericalJointMatrix-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%geometry_msgs/Quaternion quaternion~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetSphericalJointMatrix-request)))
  "Returns full string definition for message of type 'simRosSetSphericalJointMatrix-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%geometry_msgs/Quaternion quaternion~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetSphericalJointMatrix-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetSphericalJointMatrix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetSphericalJointMatrix-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':quaternion (quaternion msg))
))
;//! \htmlinclude simRosSetSphericalJointMatrix-response.msg.html

(cl:defclass <simRosSetSphericalJointMatrix-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetSphericalJointMatrix-response (<simRosSetSphericalJointMatrix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetSphericalJointMatrix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetSphericalJointMatrix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetSphericalJointMatrix-response> is deprecated: use vrep_common-srv:simRosSetSphericalJointMatrix-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetSphericalJointMatrix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetSphericalJointMatrix-response>) ostream)
  "Serializes a message object of type '<simRosSetSphericalJointMatrix-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetSphericalJointMatrix-response>) istream)
  "Deserializes a message object of type '<simRosSetSphericalJointMatrix-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetSphericalJointMatrix-response>)))
  "Returns string type for a service object of type '<simRosSetSphericalJointMatrix-response>"
  "vrep_common/simRosSetSphericalJointMatrixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetSphericalJointMatrix-response)))
  "Returns string type for a service object of type 'simRosSetSphericalJointMatrix-response"
  "vrep_common/simRosSetSphericalJointMatrixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetSphericalJointMatrix-response>)))
  "Returns md5sum for a message object of type '<simRosSetSphericalJointMatrix-response>"
  "ff6022ac5ed35d4a73c1ed756bc036db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetSphericalJointMatrix-response)))
  "Returns md5sum for a message object of type 'simRosSetSphericalJointMatrix-response"
  "ff6022ac5ed35d4a73c1ed756bc036db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetSphericalJointMatrix-response>)))
  "Returns full string definition for message of type '<simRosSetSphericalJointMatrix-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetSphericalJointMatrix-response)))
  "Returns full string definition for message of type 'simRosSetSphericalJointMatrix-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetSphericalJointMatrix-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetSphericalJointMatrix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetSphericalJointMatrix-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetSphericalJointMatrix)))
  'simRosSetSphericalJointMatrix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetSphericalJointMatrix)))
  'simRosSetSphericalJointMatrix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetSphericalJointMatrix)))
  "Returns string type for a service object of type '<simRosSetSphericalJointMatrix>"
  "vrep_common/simRosSetSphericalJointMatrix")