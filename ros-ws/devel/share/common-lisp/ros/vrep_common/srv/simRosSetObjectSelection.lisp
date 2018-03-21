; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetObjectSelection-request.msg.html

(cl:defclass <simRosSetObjectSelection-request> (roslisp-msg-protocol:ros-message)
  ((handles
    :reader handles
    :initarg :handles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosSetObjectSelection-request (<simRosSetObjectSelection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectSelection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectSelection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectSelection-request> is deprecated: use vrep_common-srv:simRosSetObjectSelection-request instead.")))

(cl:ensure-generic-function 'handles-val :lambda-list '(m))
(cl:defmethod handles-val ((m <simRosSetObjectSelection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handles-val is deprecated.  Use vrep_common-srv:handles instead.")
  (handles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectSelection-request>) ostream)
  "Serializes a message object of type '<simRosSetObjectSelection-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectSelection-request>) istream)
  "Deserializes a message object of type '<simRosSetObjectSelection-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectSelection-request>)))
  "Returns string type for a service object of type '<simRosSetObjectSelection-request>"
  "vrep_common/simRosSetObjectSelectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectSelection-request)))
  "Returns string type for a service object of type 'simRosSetObjectSelection-request"
  "vrep_common/simRosSetObjectSelectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectSelection-request>)))
  "Returns md5sum for a message object of type '<simRosSetObjectSelection-request>"
  "e00e479c133a7c8d25d2f7b4d86be540")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectSelection-request)))
  "Returns md5sum for a message object of type 'simRosSetObjectSelection-request"
  "e00e479c133a7c8d25d2f7b4d86be540")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectSelection-request>)))
  "Returns full string definition for message of type '<simRosSetObjectSelection-request>"
  (cl:format cl:nil "~%~%~%~%int32[] handles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectSelection-request)))
  "Returns full string definition for message of type 'simRosSetObjectSelection-request"
  (cl:format cl:nil "~%~%~%~%int32[] handles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectSelection-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'handles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectSelection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectSelection-request
    (cl:cons ':handles (handles msg))
))
;//! \htmlinclude simRosSetObjectSelection-response.msg.html

(cl:defclass <simRosSetObjectSelection-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetObjectSelection-response (<simRosSetObjectSelection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetObjectSelection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetObjectSelection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetObjectSelection-response> is deprecated: use vrep_common-srv:simRosSetObjectSelection-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetObjectSelection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetObjectSelection-response>) ostream)
  "Serializes a message object of type '<simRosSetObjectSelection-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetObjectSelection-response>) istream)
  "Deserializes a message object of type '<simRosSetObjectSelection-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetObjectSelection-response>)))
  "Returns string type for a service object of type '<simRosSetObjectSelection-response>"
  "vrep_common/simRosSetObjectSelectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectSelection-response)))
  "Returns string type for a service object of type 'simRosSetObjectSelection-response"
  "vrep_common/simRosSetObjectSelectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetObjectSelection-response>)))
  "Returns md5sum for a message object of type '<simRosSetObjectSelection-response>"
  "e00e479c133a7c8d25d2f7b4d86be540")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetObjectSelection-response)))
  "Returns md5sum for a message object of type 'simRosSetObjectSelection-response"
  "e00e479c133a7c8d25d2f7b4d86be540")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetObjectSelection-response>)))
  "Returns full string definition for message of type '<simRosSetObjectSelection-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetObjectSelection-response)))
  "Returns full string definition for message of type 'simRosSetObjectSelection-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetObjectSelection-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetObjectSelection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetObjectSelection-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetObjectSelection)))
  'simRosSetObjectSelection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetObjectSelection)))
  'simRosSetObjectSelection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetObjectSelection)))
  "Returns string type for a service object of type '<simRosSetObjectSelection>"
  "vrep_common/simRosSetObjectSelection")