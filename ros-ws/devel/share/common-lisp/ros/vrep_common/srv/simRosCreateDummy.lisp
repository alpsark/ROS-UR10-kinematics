; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosCreateDummy-request.msg.html

(cl:defclass <simRosCreateDummy-request> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:float
    :initform 0.0)
   (colors
    :reader colors
    :initarg :colors
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass simRosCreateDummy-request (<simRosCreateDummy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosCreateDummy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosCreateDummy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosCreateDummy-request> is deprecated: use vrep_common-srv:simRosCreateDummy-request instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <simRosCreateDummy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:size-val is deprecated.  Use vrep_common-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'colors-val :lambda-list '(m))
(cl:defmethod colors-val ((m <simRosCreateDummy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:colors-val is deprecated.  Use vrep_common-srv:colors instead.")
  (colors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosCreateDummy-request>) ostream)
  "Serializes a message object of type '<simRosCreateDummy-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'colors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosCreateDummy-request>) istream)
  "Deserializes a message object of type '<simRosCreateDummy-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosCreateDummy-request>)))
  "Returns string type for a service object of type '<simRosCreateDummy-request>"
  "vrep_common/simRosCreateDummyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCreateDummy-request)))
  "Returns string type for a service object of type 'simRosCreateDummy-request"
  "vrep_common/simRosCreateDummyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosCreateDummy-request>)))
  "Returns md5sum for a message object of type '<simRosCreateDummy-request>"
  "ca160749088e63e26f75d439232c561a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosCreateDummy-request)))
  "Returns md5sum for a message object of type 'simRosCreateDummy-request"
  "ca160749088e63e26f75d439232c561a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosCreateDummy-request>)))
  "Returns full string definition for message of type '<simRosCreateDummy-request>"
  (cl:format cl:nil "~%~%~%~%float32 size~%int8[] colors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosCreateDummy-request)))
  "Returns full string definition for message of type 'simRosCreateDummy-request"
  (cl:format cl:nil "~%~%~%~%float32 size~%int8[] colors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosCreateDummy-request>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosCreateDummy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosCreateDummy-request
    (cl:cons ':size (size msg))
    (cl:cons ':colors (colors msg))
))
;//! \htmlinclude simRosCreateDummy-response.msg.html

(cl:defclass <simRosCreateDummy-response> (roslisp-msg-protocol:ros-message)
  ((dummyHandle
    :reader dummyHandle
    :initarg :dummyHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosCreateDummy-response (<simRosCreateDummy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosCreateDummy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosCreateDummy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosCreateDummy-response> is deprecated: use vrep_common-srv:simRosCreateDummy-response instead.")))

(cl:ensure-generic-function 'dummyHandle-val :lambda-list '(m))
(cl:defmethod dummyHandle-val ((m <simRosCreateDummy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dummyHandle-val is deprecated.  Use vrep_common-srv:dummyHandle instead.")
  (dummyHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosCreateDummy-response>) ostream)
  "Serializes a message object of type '<simRosCreateDummy-response>"
  (cl:let* ((signed (cl:slot-value msg 'dummyHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosCreateDummy-response>) istream)
  "Deserializes a message object of type '<simRosCreateDummy-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dummyHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosCreateDummy-response>)))
  "Returns string type for a service object of type '<simRosCreateDummy-response>"
  "vrep_common/simRosCreateDummyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCreateDummy-response)))
  "Returns string type for a service object of type 'simRosCreateDummy-response"
  "vrep_common/simRosCreateDummyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosCreateDummy-response>)))
  "Returns md5sum for a message object of type '<simRosCreateDummy-response>"
  "ca160749088e63e26f75d439232c561a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosCreateDummy-response)))
  "Returns md5sum for a message object of type 'simRosCreateDummy-response"
  "ca160749088e63e26f75d439232c561a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosCreateDummy-response>)))
  "Returns full string definition for message of type '<simRosCreateDummy-response>"
  (cl:format cl:nil "int32 dummyHandle~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosCreateDummy-response)))
  "Returns full string definition for message of type 'simRosCreateDummy-response"
  (cl:format cl:nil "int32 dummyHandle~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosCreateDummy-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosCreateDummy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosCreateDummy-response
    (cl:cons ':dummyHandle (dummyHandle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosCreateDummy)))
  'simRosCreateDummy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosCreateDummy)))
  'simRosCreateDummy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCreateDummy)))
  "Returns string type for a service object of type '<simRosCreateDummy>"
  "vrep_common/simRosCreateDummy")