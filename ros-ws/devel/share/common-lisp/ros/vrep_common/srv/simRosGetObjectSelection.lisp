; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectSelection-request.msg.html

(cl:defclass <simRosGetObjectSelection-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass simRosGetObjectSelection-request (<simRosGetObjectSelection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectSelection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectSelection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectSelection-request> is deprecated: use vrep_common-srv:simRosGetObjectSelection-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectSelection-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectSelection-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectSelection-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectSelection-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectSelection-request>)))
  "Returns string type for a service object of type '<simRosGetObjectSelection-request>"
  "vrep_common/simRosGetObjectSelectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectSelection-request)))
  "Returns string type for a service object of type 'simRosGetObjectSelection-request"
  "vrep_common/simRosGetObjectSelectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectSelection-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectSelection-request>"
  "1b24af430705cefc484ff6cc1c5669ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectSelection-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectSelection-request"
  "1b24af430705cefc484ff6cc1c5669ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectSelection-request>)))
  "Returns full string definition for message of type '<simRosGetObjectSelection-request>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectSelection-request)))
  "Returns full string definition for message of type 'simRosGetObjectSelection-request"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectSelection-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectSelection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectSelection-request
))
;//! \htmlinclude simRosGetObjectSelection-response.msg.html

(cl:defclass <simRosGetObjectSelection-response> (roslisp-msg-protocol:ros-message)
  ((handles
    :reader handles
    :initarg :handles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosGetObjectSelection-response (<simRosGetObjectSelection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectSelection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectSelection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectSelection-response> is deprecated: use vrep_common-srv:simRosGetObjectSelection-response instead.")))

(cl:ensure-generic-function 'handles-val :lambda-list '(m))
(cl:defmethod handles-val ((m <simRosGetObjectSelection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handles-val is deprecated.  Use vrep_common-srv:handles instead.")
  (handles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectSelection-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectSelection-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'handles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'handles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectSelection-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectSelection-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'handles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'handles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectSelection-response>)))
  "Returns string type for a service object of type '<simRosGetObjectSelection-response>"
  "vrep_common/simRosGetObjectSelectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectSelection-response)))
  "Returns string type for a service object of type 'simRosGetObjectSelection-response"
  "vrep_common/simRosGetObjectSelectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectSelection-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectSelection-response>"
  "1b24af430705cefc484ff6cc1c5669ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectSelection-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectSelection-response"
  "1b24af430705cefc484ff6cc1c5669ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectSelection-response>)))
  "Returns full string definition for message of type '<simRosGetObjectSelection-response>"
  (cl:format cl:nil "int32[] handles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectSelection-response)))
  "Returns full string definition for message of type 'simRosGetObjectSelection-response"
  (cl:format cl:nil "int32[] handles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectSelection-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'handles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectSelection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectSelection-response
    (cl:cons ':handles (handles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectSelection)))
  'simRosGetObjectSelection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectSelection)))
  'simRosGetObjectSelection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectSelection)))
  "Returns string type for a service object of type '<simRosGetObjectSelection>"
  "vrep_common/simRosGetObjectSelection")