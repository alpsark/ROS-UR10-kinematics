; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosReadVisionSensor-request.msg.html

(cl:defclass <simRosReadVisionSensor-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosReadVisionSensor-request (<simRosReadVisionSensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadVisionSensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadVisionSensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadVisionSensor-request> is deprecated: use vrep_common-srv:simRosReadVisionSensor-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosReadVisionSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadVisionSensor-request>) ostream)
  "Serializes a message object of type '<simRosReadVisionSensor-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadVisionSensor-request>) istream)
  "Deserializes a message object of type '<simRosReadVisionSensor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadVisionSensor-request>)))
  "Returns string type for a service object of type '<simRosReadVisionSensor-request>"
  "vrep_common/simRosReadVisionSensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadVisionSensor-request)))
  "Returns string type for a service object of type 'simRosReadVisionSensor-request"
  "vrep_common/simRosReadVisionSensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadVisionSensor-request>)))
  "Returns md5sum for a message object of type '<simRosReadVisionSensor-request>"
  "06a229ce8d1f580db5bd558c65f74c4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadVisionSensor-request)))
  "Returns md5sum for a message object of type 'simRosReadVisionSensor-request"
  "06a229ce8d1f580db5bd558c65f74c4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadVisionSensor-request>)))
  "Returns full string definition for message of type '<simRosReadVisionSensor-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadVisionSensor-request)))
  "Returns full string definition for message of type 'simRosReadVisionSensor-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadVisionSensor-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadVisionSensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadVisionSensor-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosReadVisionSensor-response.msg.html

(cl:defclass <simRosReadVisionSensor-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (packetData
    :reader packetData
    :initarg :packetData
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (packetSizes
    :reader packetSizes
    :initarg :packetSizes
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosReadVisionSensor-response (<simRosReadVisionSensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadVisionSensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadVisionSensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadVisionSensor-response> is deprecated: use vrep_common-srv:simRosReadVisionSensor-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosReadVisionSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'packetData-val :lambda-list '(m))
(cl:defmethod packetData-val ((m <simRosReadVisionSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:packetData-val is deprecated.  Use vrep_common-srv:packetData instead.")
  (packetData m))

(cl:ensure-generic-function 'packetSizes-val :lambda-list '(m))
(cl:defmethod packetSizes-val ((m <simRosReadVisionSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:packetSizes-val is deprecated.  Use vrep_common-srv:packetSizes instead.")
  (packetSizes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadVisionSensor-response>) ostream)
  "Serializes a message object of type '<simRosReadVisionSensor-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'packetData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'packetData))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'packetSizes))))
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
   (cl:slot-value msg 'packetSizes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadVisionSensor-response>) istream)
  "Deserializes a message object of type '<simRosReadVisionSensor-response>"
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
  (cl:setf (cl:slot-value msg 'packetData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'packetData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'packetSizes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'packetSizes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadVisionSensor-response>)))
  "Returns string type for a service object of type '<simRosReadVisionSensor-response>"
  "vrep_common/simRosReadVisionSensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadVisionSensor-response)))
  "Returns string type for a service object of type 'simRosReadVisionSensor-response"
  "vrep_common/simRosReadVisionSensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadVisionSensor-response>)))
  "Returns md5sum for a message object of type '<simRosReadVisionSensor-response>"
  "06a229ce8d1f580db5bd558c65f74c4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadVisionSensor-response)))
  "Returns md5sum for a message object of type 'simRosReadVisionSensor-response"
  "06a229ce8d1f580db5bd558c65f74c4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadVisionSensor-response>)))
  "Returns full string definition for message of type '<simRosReadVisionSensor-response>"
  (cl:format cl:nil "int32 result~%float32[] packetData~%int32[] packetSizes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadVisionSensor-response)))
  "Returns full string definition for message of type 'simRosReadVisionSensor-response"
  (cl:format cl:nil "int32 result~%float32[] packetData~%int32[] packetSizes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadVisionSensor-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'packetData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'packetSizes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadVisionSensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadVisionSensor-response
    (cl:cons ':result (result msg))
    (cl:cons ':packetData (packetData msg))
    (cl:cons ':packetSizes (packetSizes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosReadVisionSensor)))
  'simRosReadVisionSensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosReadVisionSensor)))
  'simRosReadVisionSensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadVisionSensor)))
  "Returns string type for a service object of type '<simRosReadVisionSensor>"
  "vrep_common/simRosReadVisionSensor")