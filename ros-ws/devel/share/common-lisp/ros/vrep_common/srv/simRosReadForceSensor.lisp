; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosReadForceSensor-request.msg.html

(cl:defclass <simRosReadForceSensor-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosReadForceSensor-request (<simRosReadForceSensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadForceSensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadForceSensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadForceSensor-request> is deprecated: use vrep_common-srv:simRosReadForceSensor-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosReadForceSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadForceSensor-request>) ostream)
  "Serializes a message object of type '<simRosReadForceSensor-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadForceSensor-request>) istream)
  "Deserializes a message object of type '<simRosReadForceSensor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadForceSensor-request>)))
  "Returns string type for a service object of type '<simRosReadForceSensor-request>"
  "vrep_common/simRosReadForceSensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadForceSensor-request)))
  "Returns string type for a service object of type 'simRosReadForceSensor-request"
  "vrep_common/simRosReadForceSensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadForceSensor-request>)))
  "Returns md5sum for a message object of type '<simRosReadForceSensor-request>"
  "f2a54a090baac0d8c5c08bb865b8cd2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadForceSensor-request)))
  "Returns md5sum for a message object of type 'simRosReadForceSensor-request"
  "f2a54a090baac0d8c5c08bb865b8cd2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadForceSensor-request>)))
  "Returns full string definition for message of type '<simRosReadForceSensor-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadForceSensor-request)))
  "Returns full string definition for message of type 'simRosReadForceSensor-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadForceSensor-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadForceSensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadForceSensor-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosReadForceSensor-response.msg.html

(cl:defclass <simRosReadForceSensor-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (torque
    :reader torque
    :initarg :torque
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass simRosReadForceSensor-response (<simRosReadForceSensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadForceSensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadForceSensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadForceSensor-response> is deprecated: use vrep_common-srv:simRosReadForceSensor-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosReadForceSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <simRosReadForceSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:force-val is deprecated.  Use vrep_common-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <simRosReadForceSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:torque-val is deprecated.  Use vrep_common-srv:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadForceSensor-response>) ostream)
  "Serializes a message object of type '<simRosReadForceSensor-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadForceSensor-response>) istream)
  "Deserializes a message object of type '<simRosReadForceSensor-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadForceSensor-response>)))
  "Returns string type for a service object of type '<simRosReadForceSensor-response>"
  "vrep_common/simRosReadForceSensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadForceSensor-response)))
  "Returns string type for a service object of type 'simRosReadForceSensor-response"
  "vrep_common/simRosReadForceSensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadForceSensor-response>)))
  "Returns md5sum for a message object of type '<simRosReadForceSensor-response>"
  "f2a54a090baac0d8c5c08bb865b8cd2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadForceSensor-response)))
  "Returns md5sum for a message object of type 'simRosReadForceSensor-response"
  "f2a54a090baac0d8c5c08bb865b8cd2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadForceSensor-response>)))
  "Returns full string definition for message of type '<simRosReadForceSensor-response>"
  (cl:format cl:nil "int32 result~%geometry_msgs/Vector3 force~%geometry_msgs/Vector3 torque~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadForceSensor-response)))
  "Returns full string definition for message of type 'simRosReadForceSensor-response"
  (cl:format cl:nil "int32 result~%geometry_msgs/Vector3 force~%geometry_msgs/Vector3 torque~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadForceSensor-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadForceSensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadForceSensor-response
    (cl:cons ':result (result msg))
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosReadForceSensor)))
  'simRosReadForceSensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosReadForceSensor)))
  'simRosReadForceSensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadForceSensor)))
  "Returns string type for a service object of type '<simRosReadForceSensor>"
  "vrep_common/simRosReadForceSensor")