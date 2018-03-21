; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetDistanceHandle-request.msg.html

(cl:defclass <simRosGetDistanceHandle-request> (roslisp-msg-protocol:ros-message)
  ((distanceName
    :reader distanceName
    :initarg :distanceName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosGetDistanceHandle-request (<simRosGetDistanceHandle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetDistanceHandle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetDistanceHandle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetDistanceHandle-request> is deprecated: use vrep_common-srv:simRosGetDistanceHandle-request instead.")))

(cl:ensure-generic-function 'distanceName-val :lambda-list '(m))
(cl:defmethod distanceName-val ((m <simRosGetDistanceHandle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:distanceName-val is deprecated.  Use vrep_common-srv:distanceName instead.")
  (distanceName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetDistanceHandle-request>) ostream)
  "Serializes a message object of type '<simRosGetDistanceHandle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'distanceName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'distanceName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetDistanceHandle-request>) istream)
  "Deserializes a message object of type '<simRosGetDistanceHandle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distanceName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'distanceName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetDistanceHandle-request>)))
  "Returns string type for a service object of type '<simRosGetDistanceHandle-request>"
  "vrep_common/simRosGetDistanceHandleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDistanceHandle-request)))
  "Returns string type for a service object of type 'simRosGetDistanceHandle-request"
  "vrep_common/simRosGetDistanceHandleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetDistanceHandle-request>)))
  "Returns md5sum for a message object of type '<simRosGetDistanceHandle-request>"
  "78e0efe06bbf65717f2c9d16dc1a69dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetDistanceHandle-request)))
  "Returns md5sum for a message object of type 'simRosGetDistanceHandle-request"
  "78e0efe06bbf65717f2c9d16dc1a69dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetDistanceHandle-request>)))
  "Returns full string definition for message of type '<simRosGetDistanceHandle-request>"
  (cl:format cl:nil "~%~%~%~%string distanceName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetDistanceHandle-request)))
  "Returns full string definition for message of type 'simRosGetDistanceHandle-request"
  (cl:format cl:nil "~%~%~%~%string distanceName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetDistanceHandle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'distanceName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetDistanceHandle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetDistanceHandle-request
    (cl:cons ':distanceName (distanceName msg))
))
;//! \htmlinclude simRosGetDistanceHandle-response.msg.html

(cl:defclass <simRosGetDistanceHandle-response> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetDistanceHandle-response (<simRosGetDistanceHandle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetDistanceHandle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetDistanceHandle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetDistanceHandle-response> is deprecated: use vrep_common-srv:simRosGetDistanceHandle-response instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetDistanceHandle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetDistanceHandle-response>) ostream)
  "Serializes a message object of type '<simRosGetDistanceHandle-response>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetDistanceHandle-response>) istream)
  "Deserializes a message object of type '<simRosGetDistanceHandle-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetDistanceHandle-response>)))
  "Returns string type for a service object of type '<simRosGetDistanceHandle-response>"
  "vrep_common/simRosGetDistanceHandleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDistanceHandle-response)))
  "Returns string type for a service object of type 'simRosGetDistanceHandle-response"
  "vrep_common/simRosGetDistanceHandleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetDistanceHandle-response>)))
  "Returns md5sum for a message object of type '<simRosGetDistanceHandle-response>"
  "78e0efe06bbf65717f2c9d16dc1a69dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetDistanceHandle-response)))
  "Returns md5sum for a message object of type 'simRosGetDistanceHandle-response"
  "78e0efe06bbf65717f2c9d16dc1a69dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetDistanceHandle-response>)))
  "Returns full string definition for message of type '<simRosGetDistanceHandle-response>"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetDistanceHandle-response)))
  "Returns full string definition for message of type 'simRosGetDistanceHandle-response"
  (cl:format cl:nil "int32 handle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetDistanceHandle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetDistanceHandle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetDistanceHandle-response
    (cl:cons ':handle (handle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetDistanceHandle)))
  'simRosGetDistanceHandle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetDistanceHandle)))
  'simRosGetDistanceHandle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetDistanceHandle)))
  "Returns string type for a service object of type '<simRosGetDistanceHandle>"
  "vrep_common/simRosGetDistanceHandle")