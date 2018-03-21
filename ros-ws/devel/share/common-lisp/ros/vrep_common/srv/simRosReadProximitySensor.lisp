; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosReadProximitySensor-request.msg.html

(cl:defclass <simRosReadProximitySensor-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosReadProximitySensor-request (<simRosReadProximitySensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadProximitySensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadProximitySensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadProximitySensor-request> is deprecated: use vrep_common-srv:simRosReadProximitySensor-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosReadProximitySensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadProximitySensor-request>) ostream)
  "Serializes a message object of type '<simRosReadProximitySensor-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadProximitySensor-request>) istream)
  "Deserializes a message object of type '<simRosReadProximitySensor-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadProximitySensor-request>)))
  "Returns string type for a service object of type '<simRosReadProximitySensor-request>"
  "vrep_common/simRosReadProximitySensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadProximitySensor-request)))
  "Returns string type for a service object of type 'simRosReadProximitySensor-request"
  "vrep_common/simRosReadProximitySensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadProximitySensor-request>)))
  "Returns md5sum for a message object of type '<simRosReadProximitySensor-request>"
  "05a1fa096e5ff4ba7072c60e22ef589e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadProximitySensor-request)))
  "Returns md5sum for a message object of type 'simRosReadProximitySensor-request"
  "05a1fa096e5ff4ba7072c60e22ef589e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadProximitySensor-request>)))
  "Returns full string definition for message of type '<simRosReadProximitySensor-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadProximitySensor-request)))
  "Returns full string definition for message of type 'simRosReadProximitySensor-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadProximitySensor-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadProximitySensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadProximitySensor-request
    (cl:cons ':handle (handle msg))
))
;//! \htmlinclude simRosReadProximitySensor-response.msg.html

(cl:defclass <simRosReadProximitySensor-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (detectedPoint
    :reader detectedPoint
    :initarg :detectedPoint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (detectedObject
    :reader detectedObject
    :initarg :detectedObject
    :type cl:integer
    :initform 0)
   (normalVector
    :reader normalVector
    :initarg :normalVector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass simRosReadProximitySensor-response (<simRosReadProximitySensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosReadProximitySensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosReadProximitySensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosReadProximitySensor-response> is deprecated: use vrep_common-srv:simRosReadProximitySensor-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosReadProximitySensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'detectedPoint-val :lambda-list '(m))
(cl:defmethod detectedPoint-val ((m <simRosReadProximitySensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:detectedPoint-val is deprecated.  Use vrep_common-srv:detectedPoint instead.")
  (detectedPoint m))

(cl:ensure-generic-function 'detectedObject-val :lambda-list '(m))
(cl:defmethod detectedObject-val ((m <simRosReadProximitySensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:detectedObject-val is deprecated.  Use vrep_common-srv:detectedObject instead.")
  (detectedObject m))

(cl:ensure-generic-function 'normalVector-val :lambda-list '(m))
(cl:defmethod normalVector-val ((m <simRosReadProximitySensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:normalVector-val is deprecated.  Use vrep_common-srv:normalVector instead.")
  (normalVector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosReadProximitySensor-response>) ostream)
  "Serializes a message object of type '<simRosReadProximitySensor-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detectedPoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'detectedPoint))
  (cl:let* ((signed (cl:slot-value msg 'detectedObject)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'normalVector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'normalVector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosReadProximitySensor-response>) istream)
  "Deserializes a message object of type '<simRosReadProximitySensor-response>"
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
  (cl:setf (cl:slot-value msg 'detectedPoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detectedPoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detectedObject) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'normalVector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'normalVector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosReadProximitySensor-response>)))
  "Returns string type for a service object of type '<simRosReadProximitySensor-response>"
  "vrep_common/simRosReadProximitySensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadProximitySensor-response)))
  "Returns string type for a service object of type 'simRosReadProximitySensor-response"
  "vrep_common/simRosReadProximitySensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosReadProximitySensor-response>)))
  "Returns md5sum for a message object of type '<simRosReadProximitySensor-response>"
  "05a1fa096e5ff4ba7072c60e22ef589e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosReadProximitySensor-response)))
  "Returns md5sum for a message object of type 'simRosReadProximitySensor-response"
  "05a1fa096e5ff4ba7072c60e22ef589e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosReadProximitySensor-response>)))
  "Returns full string definition for message of type '<simRosReadProximitySensor-response>"
  (cl:format cl:nil "int32 result~%float32[] detectedPoint~%int32 detectedObject~%float32[] normalVector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosReadProximitySensor-response)))
  "Returns full string definition for message of type 'simRosReadProximitySensor-response"
  (cl:format cl:nil "int32 result~%float32[] detectedPoint~%int32 detectedObject~%float32[] normalVector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosReadProximitySensor-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detectedPoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'normalVector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosReadProximitySensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosReadProximitySensor-response
    (cl:cons ':result (result msg))
    (cl:cons ':detectedPoint (detectedPoint msg))
    (cl:cons ':detectedObject (detectedObject msg))
    (cl:cons ':normalVector (normalVector msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosReadProximitySensor)))
  'simRosReadProximitySensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosReadProximitySensor)))
  'simRosReadProximitySensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosReadProximitySensor)))
  "Returns string type for a service object of type '<simRosReadProximitySensor>"
  "vrep_common/simRosReadProximitySensor")