; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjects-request.msg.html

(cl:defclass <simRosGetObjects-request> (roslisp-msg-protocol:ros-message)
  ((objectType
    :reader objectType
    :initarg :objectType
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjects-request (<simRosGetObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjects-request> is deprecated: use vrep_common-srv:simRosGetObjects-request instead.")))

(cl:ensure-generic-function 'objectType-val :lambda-list '(m))
(cl:defmethod objectType-val ((m <simRosGetObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:objectType-val is deprecated.  Use vrep_common-srv:objectType instead.")
  (objectType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjects-request>) ostream)
  "Serializes a message object of type '<simRosGetObjects-request>"
  (cl:let* ((signed (cl:slot-value msg 'objectType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjects-request>) istream)
  "Deserializes a message object of type '<simRosGetObjects-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjects-request>)))
  "Returns string type for a service object of type '<simRosGetObjects-request>"
  "vrep_common/simRosGetObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjects-request)))
  "Returns string type for a service object of type 'simRosGetObjects-request"
  "vrep_common/simRosGetObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjects-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjects-request>"
  "53b04066ba6b21f5182d36e874212727")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjects-request)))
  "Returns md5sum for a message object of type 'simRosGetObjects-request"
  "53b04066ba6b21f5182d36e874212727")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjects-request>)))
  "Returns full string definition for message of type '<simRosGetObjects-request>"
  (cl:format cl:nil "~%~%~%~%int32 objectType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjects-request)))
  "Returns full string definition for message of type 'simRosGetObjects-request"
  (cl:format cl:nil "~%~%~%~%int32 objectType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjects-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjects-request
    (cl:cons ':objectType (objectType msg))
))
;//! \htmlinclude simRosGetObjects-response.msg.html

(cl:defclass <simRosGetObjects-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (handles
    :reader handles
    :initarg :handles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosGetObjects-response (<simRosGetObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjects-response> is deprecated: use vrep_common-srv:simRosGetObjects-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'handles-val :lambda-list '(m))
(cl:defmethod handles-val ((m <simRosGetObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handles-val is deprecated.  Use vrep_common-srv:handles instead.")
  (handles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjects-response>) ostream)
  "Serializes a message object of type '<simRosGetObjects-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjects-response>) istream)
  "Deserializes a message object of type '<simRosGetObjects-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjects-response>)))
  "Returns string type for a service object of type '<simRosGetObjects-response>"
  "vrep_common/simRosGetObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjects-response)))
  "Returns string type for a service object of type 'simRosGetObjects-response"
  "vrep_common/simRosGetObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjects-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjects-response>"
  "53b04066ba6b21f5182d36e874212727")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjects-response)))
  "Returns md5sum for a message object of type 'simRosGetObjects-response"
  "53b04066ba6b21f5182d36e874212727")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjects-response>)))
  "Returns full string definition for message of type '<simRosGetObjects-response>"
  (cl:format cl:nil "int32 result~%int32[] handles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjects-response)))
  "Returns full string definition for message of type 'simRosGetObjects-response"
  (cl:format cl:nil "int32 result~%int32[] handles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjects-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'handles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjects-response
    (cl:cons ':result (result msg))
    (cl:cons ':handles (handles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjects)))
  'simRosGetObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjects)))
  'simRosGetObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjects)))
  "Returns string type for a service object of type '<simRosGetObjects>"
  "vrep_common/simRosGetObjects")