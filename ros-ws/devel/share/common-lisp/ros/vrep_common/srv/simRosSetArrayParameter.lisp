; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetArrayParameter-request.msg.html

(cl:defclass <simRosSetArrayParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0)
   (parameterValues
    :reader parameterValues
    :initarg :parameterValues
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass simRosSetArrayParameter-request (<simRosSetArrayParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetArrayParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetArrayParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetArrayParameter-request> is deprecated: use vrep_common-srv:simRosSetArrayParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosSetArrayParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'parameterValues-val :lambda-list '(m))
(cl:defmethod parameterValues-val ((m <simRosSetArrayParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValues-val is deprecated.  Use vrep_common-srv:parameterValues instead.")
  (parameterValues m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetArrayParameter-request>) ostream)
  "Serializes a message object of type '<simRosSetArrayParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameterValues))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'parameterValues))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetArrayParameter-request>) istream)
  "Deserializes a message object of type '<simRosSetArrayParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameterValues) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameterValues)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetArrayParameter-request>)))
  "Returns string type for a service object of type '<simRosSetArrayParameter-request>"
  "vrep_common/simRosSetArrayParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetArrayParameter-request)))
  "Returns string type for a service object of type 'simRosSetArrayParameter-request"
  "vrep_common/simRosSetArrayParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetArrayParameter-request>)))
  "Returns md5sum for a message object of type '<simRosSetArrayParameter-request>"
  "4d1073567d098840261016d80dc91684")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetArrayParameter-request)))
  "Returns md5sum for a message object of type 'simRosSetArrayParameter-request"
  "4d1073567d098840261016d80dc91684")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetArrayParameter-request>)))
  "Returns full string definition for message of type '<simRosSetArrayParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%float32[] parameterValues~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetArrayParameter-request)))
  "Returns full string definition for message of type 'simRosSetArrayParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%float32[] parameterValues~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetArrayParameter-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameterValues) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetArrayParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetArrayParameter-request
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':parameterValues (parameterValues msg))
))
;//! \htmlinclude simRosSetArrayParameter-response.msg.html

(cl:defclass <simRosSetArrayParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetArrayParameter-response (<simRosSetArrayParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetArrayParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetArrayParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetArrayParameter-response> is deprecated: use vrep_common-srv:simRosSetArrayParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetArrayParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetArrayParameter-response>) ostream)
  "Serializes a message object of type '<simRosSetArrayParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetArrayParameter-response>) istream)
  "Deserializes a message object of type '<simRosSetArrayParameter-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetArrayParameter-response>)))
  "Returns string type for a service object of type '<simRosSetArrayParameter-response>"
  "vrep_common/simRosSetArrayParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetArrayParameter-response)))
  "Returns string type for a service object of type 'simRosSetArrayParameter-response"
  "vrep_common/simRosSetArrayParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetArrayParameter-response>)))
  "Returns md5sum for a message object of type '<simRosSetArrayParameter-response>"
  "4d1073567d098840261016d80dc91684")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetArrayParameter-response)))
  "Returns md5sum for a message object of type 'simRosSetArrayParameter-response"
  "4d1073567d098840261016d80dc91684")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetArrayParameter-response>)))
  "Returns full string definition for message of type '<simRosSetArrayParameter-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetArrayParameter-response)))
  "Returns full string definition for message of type 'simRosSetArrayParameter-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetArrayParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetArrayParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetArrayParameter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetArrayParameter)))
  'simRosSetArrayParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetArrayParameter)))
  'simRosSetArrayParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetArrayParameter)))
  "Returns string type for a service object of type '<simRosSetArrayParameter>"
  "vrep_common/simRosSetArrayParameter")