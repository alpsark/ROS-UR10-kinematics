; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosLoadScene-request.msg.html

(cl:defclass <simRosLoadScene-request> (roslisp-msg-protocol:ros-message)
  ((fileName
    :reader fileName
    :initarg :fileName
    :type cl:string
    :initform ""))
)

(cl:defclass simRosLoadScene-request (<simRosLoadScene-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosLoadScene-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosLoadScene-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosLoadScene-request> is deprecated: use vrep_common-srv:simRosLoadScene-request instead.")))

(cl:ensure-generic-function 'fileName-val :lambda-list '(m))
(cl:defmethod fileName-val ((m <simRosLoadScene-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:fileName-val is deprecated.  Use vrep_common-srv:fileName instead.")
  (fileName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosLoadScene-request>) ostream)
  "Serializes a message object of type '<simRosLoadScene-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fileName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosLoadScene-request>) istream)
  "Deserializes a message object of type '<simRosLoadScene-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fileName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fileName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosLoadScene-request>)))
  "Returns string type for a service object of type '<simRosLoadScene-request>"
  "vrep_common/simRosLoadSceneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadScene-request)))
  "Returns string type for a service object of type 'simRosLoadScene-request"
  "vrep_common/simRosLoadSceneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosLoadScene-request>)))
  "Returns md5sum for a message object of type '<simRosLoadScene-request>"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosLoadScene-request)))
  "Returns md5sum for a message object of type 'simRosLoadScene-request"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosLoadScene-request>)))
  "Returns full string definition for message of type '<simRosLoadScene-request>"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosLoadScene-request)))
  "Returns full string definition for message of type 'simRosLoadScene-request"
  (cl:format cl:nil "~%~%~%~%string fileName~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosLoadScene-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'fileName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosLoadScene-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosLoadScene-request
    (cl:cons ':fileName (fileName msg))
))
;//! \htmlinclude simRosLoadScene-response.msg.html

(cl:defclass <simRosLoadScene-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosLoadScene-response (<simRosLoadScene-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosLoadScene-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosLoadScene-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosLoadScene-response> is deprecated: use vrep_common-srv:simRosLoadScene-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosLoadScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosLoadScene-response>) ostream)
  "Serializes a message object of type '<simRosLoadScene-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosLoadScene-response>) istream)
  "Deserializes a message object of type '<simRosLoadScene-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosLoadScene-response>)))
  "Returns string type for a service object of type '<simRosLoadScene-response>"
  "vrep_common/simRosLoadSceneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadScene-response)))
  "Returns string type for a service object of type 'simRosLoadScene-response"
  "vrep_common/simRosLoadSceneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosLoadScene-response>)))
  "Returns md5sum for a message object of type '<simRosLoadScene-response>"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosLoadScene-response)))
  "Returns md5sum for a message object of type 'simRosLoadScene-response"
  "4ce16c0ffb6dc4c97455e3e44d2010aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosLoadScene-response>)))
  "Returns full string definition for message of type '<simRosLoadScene-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosLoadScene-response)))
  "Returns full string definition for message of type 'simRosLoadScene-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosLoadScene-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosLoadScene-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosLoadScene-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosLoadScene)))
  'simRosLoadScene-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosLoadScene)))
  'simRosLoadScene-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosLoadScene)))
  "Returns string type for a service object of type '<simRosLoadScene>"
  "vrep_common/simRosLoadScene")