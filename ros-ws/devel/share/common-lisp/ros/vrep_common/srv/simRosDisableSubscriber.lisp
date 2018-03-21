; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosDisableSubscriber-request.msg.html

(cl:defclass <simRosDisableSubscriber-request> (roslisp-msg-protocol:ros-message)
  ((subscriberID
    :reader subscriberID
    :initarg :subscriberID
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosDisableSubscriber-request (<simRosDisableSubscriber-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosDisableSubscriber-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosDisableSubscriber-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosDisableSubscriber-request> is deprecated: use vrep_common-srv:simRosDisableSubscriber-request instead.")))

(cl:ensure-generic-function 'subscriberID-val :lambda-list '(m))
(cl:defmethod subscriberID-val ((m <simRosDisableSubscriber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:subscriberID-val is deprecated.  Use vrep_common-srv:subscriberID instead.")
  (subscriberID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosDisableSubscriber-request>) ostream)
  "Serializes a message object of type '<simRosDisableSubscriber-request>"
  (cl:let* ((signed (cl:slot-value msg 'subscriberID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosDisableSubscriber-request>) istream)
  "Deserializes a message object of type '<simRosDisableSubscriber-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subscriberID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosDisableSubscriber-request>)))
  "Returns string type for a service object of type '<simRosDisableSubscriber-request>"
  "vrep_common/simRosDisableSubscriberRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisableSubscriber-request)))
  "Returns string type for a service object of type 'simRosDisableSubscriber-request"
  "vrep_common/simRosDisableSubscriberRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosDisableSubscriber-request>)))
  "Returns md5sum for a message object of type '<simRosDisableSubscriber-request>"
  "87973d82517ab997be2393d06260d68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosDisableSubscriber-request)))
  "Returns md5sum for a message object of type 'simRosDisableSubscriber-request"
  "87973d82517ab997be2393d06260d68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosDisableSubscriber-request>)))
  "Returns full string definition for message of type '<simRosDisableSubscriber-request>"
  (cl:format cl:nil "~%~%~%~%int32 subscriberID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosDisableSubscriber-request)))
  "Returns full string definition for message of type 'simRosDisableSubscriber-request"
  (cl:format cl:nil "~%~%~%~%int32 subscriberID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosDisableSubscriber-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosDisableSubscriber-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosDisableSubscriber-request
    (cl:cons ':subscriberID (subscriberID msg))
))
;//! \htmlinclude simRosDisableSubscriber-response.msg.html

(cl:defclass <simRosDisableSubscriber-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass simRosDisableSubscriber-response (<simRosDisableSubscriber-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosDisableSubscriber-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosDisableSubscriber-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosDisableSubscriber-response> is deprecated: use vrep_common-srv:simRosDisableSubscriber-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosDisableSubscriber-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosDisableSubscriber-response>) ostream)
  "Serializes a message object of type '<simRosDisableSubscriber-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosDisableSubscriber-response>) istream)
  "Deserializes a message object of type '<simRosDisableSubscriber-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosDisableSubscriber-response>)))
  "Returns string type for a service object of type '<simRosDisableSubscriber-response>"
  "vrep_common/simRosDisableSubscriberResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisableSubscriber-response)))
  "Returns string type for a service object of type 'simRosDisableSubscriber-response"
  "vrep_common/simRosDisableSubscriberResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosDisableSubscriber-response>)))
  "Returns md5sum for a message object of type '<simRosDisableSubscriber-response>"
  "87973d82517ab997be2393d06260d68a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosDisableSubscriber-response)))
  "Returns md5sum for a message object of type 'simRosDisableSubscriber-response"
  "87973d82517ab997be2393d06260d68a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosDisableSubscriber-response>)))
  "Returns full string definition for message of type '<simRosDisableSubscriber-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosDisableSubscriber-response)))
  "Returns full string definition for message of type 'simRosDisableSubscriber-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosDisableSubscriber-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosDisableSubscriber-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosDisableSubscriber-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosDisableSubscriber)))
  'simRosDisableSubscriber-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosDisableSubscriber)))
  'simRosDisableSubscriber-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisableSubscriber)))
  "Returns string type for a service object of type '<simRosDisableSubscriber>"
  "vrep_common/simRosDisableSubscriber")