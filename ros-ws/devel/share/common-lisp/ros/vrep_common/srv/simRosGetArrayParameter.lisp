; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetArrayParameter-request.msg.html

(cl:defclass <simRosGetArrayParameter-request> (roslisp-msg-protocol:ros-message)
  ((parameter
    :reader parameter
    :initarg :parameter
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetArrayParameter-request (<simRosGetArrayParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetArrayParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetArrayParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetArrayParameter-request> is deprecated: use vrep_common-srv:simRosGetArrayParameter-request instead.")))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <simRosGetArrayParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameter-val is deprecated.  Use vrep_common-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetArrayParameter-request>) ostream)
  "Serializes a message object of type '<simRosGetArrayParameter-request>"
  (cl:let* ((signed (cl:slot-value msg 'parameter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetArrayParameter-request>) istream)
  "Deserializes a message object of type '<simRosGetArrayParameter-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetArrayParameter-request>)))
  "Returns string type for a service object of type '<simRosGetArrayParameter-request>"
  "vrep_common/simRosGetArrayParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetArrayParameter-request)))
  "Returns string type for a service object of type 'simRosGetArrayParameter-request"
  "vrep_common/simRosGetArrayParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetArrayParameter-request>)))
  "Returns md5sum for a message object of type '<simRosGetArrayParameter-request>"
  "eb14c535a1358defa0617c252d433144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetArrayParameter-request)))
  "Returns md5sum for a message object of type 'simRosGetArrayParameter-request"
  "eb14c535a1358defa0617c252d433144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetArrayParameter-request>)))
  "Returns full string definition for message of type '<simRosGetArrayParameter-request>"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetArrayParameter-request)))
  "Returns full string definition for message of type 'simRosGetArrayParameter-request"
  (cl:format cl:nil "~%~%~%~%int32 parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetArrayParameter-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetArrayParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetArrayParameter-request
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude simRosGetArrayParameter-response.msg.html

(cl:defclass <simRosGetArrayParameter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (parameterValues
    :reader parameterValues
    :initarg :parameterValues
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass simRosGetArrayParameter-response (<simRosGetArrayParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetArrayParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetArrayParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetArrayParameter-response> is deprecated: use vrep_common-srv:simRosGetArrayParameter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetArrayParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'parameterValues-val :lambda-list '(m))
(cl:defmethod parameterValues-val ((m <simRosGetArrayParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:parameterValues-val is deprecated.  Use vrep_common-srv:parameterValues instead.")
  (parameterValues m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetArrayParameter-response>) ostream)
  "Serializes a message object of type '<simRosGetArrayParameter-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetArrayParameter-response>) istream)
  "Deserializes a message object of type '<simRosGetArrayParameter-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetArrayParameter-response>)))
  "Returns string type for a service object of type '<simRosGetArrayParameter-response>"
  "vrep_common/simRosGetArrayParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetArrayParameter-response)))
  "Returns string type for a service object of type 'simRosGetArrayParameter-response"
  "vrep_common/simRosGetArrayParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetArrayParameter-response>)))
  "Returns md5sum for a message object of type '<simRosGetArrayParameter-response>"
  "eb14c535a1358defa0617c252d433144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetArrayParameter-response)))
  "Returns md5sum for a message object of type 'simRosGetArrayParameter-response"
  "eb14c535a1358defa0617c252d433144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetArrayParameter-response>)))
  "Returns full string definition for message of type '<simRosGetArrayParameter-response>"
  (cl:format cl:nil "int32 result~%float32[] parameterValues~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetArrayParameter-response)))
  "Returns full string definition for message of type 'simRosGetArrayParameter-response"
  (cl:format cl:nil "int32 result~%float32[] parameterValues~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetArrayParameter-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameterValues) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetArrayParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetArrayParameter-response
    (cl:cons ':result (result msg))
    (cl:cons ':parameterValues (parameterValues msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetArrayParameter)))
  'simRosGetArrayParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetArrayParameter)))
  'simRosGetArrayParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetArrayParameter)))
  "Returns string type for a service object of type '<simRosGetArrayParameter>"
  "vrep_common/simRosGetArrayParameter")