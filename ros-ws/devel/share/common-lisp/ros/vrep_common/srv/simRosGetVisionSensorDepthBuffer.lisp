; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetVisionSensorDepthBuffer-request.msg.html

(cl:defclass <simRosGetVisionSensorDepthBuffer-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetVisionSensorDepthBuffer-request (<simRosGetVisionSensorDepthBuffer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetVisionSensorDepthBuffer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetVisionSensorDepthBuffer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetVisionSensorDepthBuffer-request> is deprecated: use vrep_common-srv:simRosGetVisionSensorDepthBuffer-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetVisionSensorDepthBuffer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetVisionSensorDepthBuffer-request>) ostream)
  "Serializes a message object of type '<simRosGetVisionSensorDepthBuffer-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetVisionSensorDepthBuffer-request>) istream)
  "Deserializes a message object of type '<simRosGetVisionSensorDepthBuffer-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetVisionSensorDepthBuffer-request>)))
  "Returns string type for a service object of type '<simRosGetVisionSensorDepthBuffer-request>"
  "vrep_common/simRosGetVisionSensorDepthBufferRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetVisionSensorDepthBuffer-request)))
  "Returns string type for a service object of type 'simRosGetVisionSensorDepthBuffer-request"
  "vrep_common/simRosGetVisionSensorDepthBufferRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetVisionSensorDepthBuffer-request>)))
  "Returns md5sum for a message object of type '<simRosGetVisionSensorDepthBuffer-request>"
  "4ba1b459e0a6f0de6bdb7a5376ec08af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetVisionSensorDepthBuffer-request)))
  "Returns md5sum for a message object of type 'simRosGetVisionSensorDepthBuffer-request"
  "4ba1b459e0a6f0de6bdb7a5376ec08af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetVisionSensorDepthBuffer-request>)))
  "Returns full string definition for message of type '<simRosGetVisionSensorDepthBuffer-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetVisionSensorDepthBuffer-request)))
  "Returns full string definition for message of type 'simRosGetVisionSensorDepthBuffer-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetVisionSensorDepthBuffer-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetVisionSensorDepthBuffer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetVisionSensorDepthBuffer-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosGetVisionSensorDepthBuffer-response.msg.html

(cl:defclass <simRosGetVisionSensorDepthBuffer-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (resolution
    :reader resolution
    :initarg :resolution
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (buffer
    :reader buffer
    :initarg :buffer
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass simRosGetVisionSensorDepthBuffer-response (<simRosGetVisionSensorDepthBuffer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetVisionSensorDepthBuffer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetVisionSensorDepthBuffer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetVisionSensorDepthBuffer-response> is deprecated: use vrep_common-srv:simRosGetVisionSensorDepthBuffer-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetVisionSensorDepthBuffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <simRosGetVisionSensorDepthBuffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:resolution-val is deprecated.  Use vrep_common-srv:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'buffer-val :lambda-list '(m))
(cl:defmethod buffer-val ((m <simRosGetVisionSensorDepthBuffer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:buffer-val is deprecated.  Use vrep_common-srv:buffer instead.")
  (buffer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetVisionSensorDepthBuffer-response>) ostream)
  "Serializes a message object of type '<simRosGetVisionSensorDepthBuffer-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resolution))))
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
   (cl:slot-value msg 'resolution))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'buffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'buffer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetVisionSensorDepthBuffer-response>) istream)
  "Deserializes a message object of type '<simRosGetVisionSensorDepthBuffer-response>"
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
  (cl:setf (cl:slot-value msg 'resolution) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resolution)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'buffer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'buffer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetVisionSensorDepthBuffer-response>)))
  "Returns string type for a service object of type '<simRosGetVisionSensorDepthBuffer-response>"
  "vrep_common/simRosGetVisionSensorDepthBufferResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetVisionSensorDepthBuffer-response)))
  "Returns string type for a service object of type 'simRosGetVisionSensorDepthBuffer-response"
  "vrep_common/simRosGetVisionSensorDepthBufferResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetVisionSensorDepthBuffer-response>)))
  "Returns md5sum for a message object of type '<simRosGetVisionSensorDepthBuffer-response>"
  "4ba1b459e0a6f0de6bdb7a5376ec08af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetVisionSensorDepthBuffer-response)))
  "Returns md5sum for a message object of type 'simRosGetVisionSensorDepthBuffer-response"
  "4ba1b459e0a6f0de6bdb7a5376ec08af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetVisionSensorDepthBuffer-response>)))
  "Returns full string definition for message of type '<simRosGetVisionSensorDepthBuffer-response>"
  (cl:format cl:nil "int32 result~%int32[] resolution~%float32[] buffer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetVisionSensorDepthBuffer-response)))
  "Returns full string definition for message of type 'simRosGetVisionSensorDepthBuffer-response"
  (cl:format cl:nil "int32 result~%int32[] resolution~%float32[] buffer~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetVisionSensorDepthBuffer-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resolution) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'buffer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetVisionSensorDepthBuffer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetVisionSensorDepthBuffer-response
    (cl:cons ':result (result msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':buffer (buffer msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetVisionSensorDepthBuffer)))
  'simRosGetVisionSensorDepthBuffer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetVisionSensorDepthBuffer)))
  'simRosGetVisionSensorDepthBuffer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetVisionSensorDepthBuffer)))
  "Returns string type for a service object of type '<simRosGetVisionSensorDepthBuffer>"
  "vrep_common/simRosGetVisionSensorDepthBuffer")