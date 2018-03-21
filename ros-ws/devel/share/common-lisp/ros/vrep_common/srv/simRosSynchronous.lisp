; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSynchronous-request.msg.html

(cl:defclass <simRosSynchronous-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass simRosSynchronous-request (<simRosSynchronous-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSynchronous-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSynchronous-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSynchronous-request> is deprecated: use vrep_common-srv:simRosSynchronous-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <simRosSynchronous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:enable-val is deprecated.  Use vrep_common-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSynchronous-request>) ostream)
  "Serializes a message object of type '<simRosSynchronous-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSynchronous-request>) istream)
  "Deserializes a message object of type '<simRosSynchronous-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSynchronous-request>)))
  "Returns string type for a service object of type '<simRosSynchronous-request>"
  "vrep_common/simRosSynchronousRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSynchronous-request)))
  "Returns string type for a service object of type 'simRosSynchronous-request"
  "vrep_common/simRosSynchronousRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSynchronous-request>)))
  "Returns md5sum for a message object of type '<simRosSynchronous-request>"
  "ee99577c106b55d579549e7b24b16926")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSynchronous-request)))
  "Returns md5sum for a message object of type 'simRosSynchronous-request"
  "ee99577c106b55d579549e7b24b16926")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSynchronous-request>)))
  "Returns full string definition for message of type '<simRosSynchronous-request>"
  (cl:format cl:nil "~%~%~%~%uint8 enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSynchronous-request)))
  "Returns full string definition for message of type 'simRosSynchronous-request"
  (cl:format cl:nil "~%~%~%~%uint8 enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSynchronous-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSynchronous-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSynchronous-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude simRosSynchronous-response.msg.html

(cl:defclass <simRosSynchronous-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSynchronous-response (<simRosSynchronous-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSynchronous-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSynchronous-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSynchronous-response> is deprecated: use vrep_common-srv:simRosSynchronous-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSynchronous-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSynchronous-response>) ostream)
  "Serializes a message object of type '<simRosSynchronous-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSynchronous-response>) istream)
  "Deserializes a message object of type '<simRosSynchronous-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSynchronous-response>)))
  "Returns string type for a service object of type '<simRosSynchronous-response>"
  "vrep_common/simRosSynchronousResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSynchronous-response)))
  "Returns string type for a service object of type 'simRosSynchronous-response"
  "vrep_common/simRosSynchronousResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSynchronous-response>)))
  "Returns md5sum for a message object of type '<simRosSynchronous-response>"
  "ee99577c106b55d579549e7b24b16926")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSynchronous-response)))
  "Returns md5sum for a message object of type 'simRosSynchronous-response"
  "ee99577c106b55d579549e7b24b16926")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSynchronous-response>)))
  "Returns full string definition for message of type '<simRosSynchronous-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSynchronous-response)))
  "Returns full string definition for message of type 'simRosSynchronous-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSynchronous-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSynchronous-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSynchronous-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSynchronous)))
  'simRosSynchronous-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSynchronous)))
  'simRosSynchronous-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSynchronous)))
  "Returns string type for a service object of type '<simRosSynchronous>"
  "vrep_common/simRosSynchronous")