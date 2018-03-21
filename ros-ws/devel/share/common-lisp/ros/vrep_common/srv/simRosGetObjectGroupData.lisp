; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectGroupData-request.msg.html

(cl:defclass <simRosGetObjectGroupData-request> (roslisp-msg-protocol:ros-message)
  ((objectType
    :reader objectType
    :initarg :objectType
    :type cl:integer
    :initform 0)
   (dataType
    :reader dataType
    :initarg :dataType
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectGroupData-request (<simRosGetObjectGroupData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectGroupData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectGroupData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectGroupData-request> is deprecated: use vrep_common-srv:simRosGetObjectGroupData-request instead.")))

(cl:ensure-generic-function 'objectType-val :lambda-list '(m))
(cl:defmethod objectType-val ((m <simRosGetObjectGroupData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:objectType-val is deprecated.  Use vrep_common-srv:objectType instead.")
  (objectType m))

(cl:ensure-generic-function 'dataType-val :lambda-list '(m))
(cl:defmethod dataType-val ((m <simRosGetObjectGroupData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dataType-val is deprecated.  Use vrep_common-srv:dataType instead.")
  (dataType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectGroupData-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectGroupData-request>"
  (cl:let* ((signed (cl:slot-value msg 'objectType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dataType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectGroupData-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectGroupData-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectGroupData-request>)))
  "Returns string type for a service object of type '<simRosGetObjectGroupData-request>"
  "vrep_common/simRosGetObjectGroupDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectGroupData-request)))
  "Returns string type for a service object of type 'simRosGetObjectGroupData-request"
  "vrep_common/simRosGetObjectGroupDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectGroupData-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectGroupData-request>"
  "8d0534a840a5e37715f425228506250e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectGroupData-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectGroupData-request"
  "8d0534a840a5e37715f425228506250e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectGroupData-request>)))
  "Returns full string definition for message of type '<simRosGetObjectGroupData-request>"
  (cl:format cl:nil "~%~%~%~%int32 objectType~%int32 dataType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectGroupData-request)))
  "Returns full string definition for message of type 'simRosGetObjectGroupData-request"
  (cl:format cl:nil "~%~%~%~%int32 objectType~%int32 dataType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectGroupData-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectGroupData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectGroupData-request
    (cl:cons ':objectType (objectType msg))
    (cl:cons ':dataType (dataType msg))
))
;//! \htmlinclude simRosGetObjectGroupData-response.msg.html

(cl:defclass <simRosGetObjectGroupData-response> (roslisp-msg-protocol:ros-message)
  ((handles
    :reader handles
    :initarg :handles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (intData
    :reader intData
    :initarg :intData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (floatData
    :reader floatData
    :initarg :floatData
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (strings
    :reader strings
    :initarg :strings
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass simRosGetObjectGroupData-response (<simRosGetObjectGroupData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectGroupData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectGroupData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectGroupData-response> is deprecated: use vrep_common-srv:simRosGetObjectGroupData-response instead.")))

(cl:ensure-generic-function 'handles-val :lambda-list '(m))
(cl:defmethod handles-val ((m <simRosGetObjectGroupData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handles-val is deprecated.  Use vrep_common-srv:handles instead.")
  (handles m))

(cl:ensure-generic-function 'intData-val :lambda-list '(m))
(cl:defmethod intData-val ((m <simRosGetObjectGroupData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:intData-val is deprecated.  Use vrep_common-srv:intData instead.")
  (intData m))

(cl:ensure-generic-function 'floatData-val :lambda-list '(m))
(cl:defmethod floatData-val ((m <simRosGetObjectGroupData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:floatData-val is deprecated.  Use vrep_common-srv:floatData instead.")
  (floatData m))

(cl:ensure-generic-function 'strings-val :lambda-list '(m))
(cl:defmethod strings-val ((m <simRosGetObjectGroupData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:strings-val is deprecated.  Use vrep_common-srv:strings instead.")
  (strings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectGroupData-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectGroupData-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intData))))
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
   (cl:slot-value msg 'intData))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'floatData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'floatData))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'strings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectGroupData-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectGroupData-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intData)))
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
  (cl:setf (cl:slot-value msg 'floatData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'floatData)))
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
  (cl:setf (cl:slot-value msg 'strings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectGroupData-response>)))
  "Returns string type for a service object of type '<simRosGetObjectGroupData-response>"
  "vrep_common/simRosGetObjectGroupDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectGroupData-response)))
  "Returns string type for a service object of type 'simRosGetObjectGroupData-response"
  "vrep_common/simRosGetObjectGroupDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectGroupData-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectGroupData-response>"
  "8d0534a840a5e37715f425228506250e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectGroupData-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectGroupData-response"
  "8d0534a840a5e37715f425228506250e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectGroupData-response>)))
  "Returns full string definition for message of type '<simRosGetObjectGroupData-response>"
  (cl:format cl:nil "int32[] handles~%int32[] intData~%float32[] floatData~%string[] strings~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectGroupData-response)))
  "Returns full string definition for message of type 'simRosGetObjectGroupData-response"
  (cl:format cl:nil "int32[] handles~%int32[] intData~%float32[] floatData~%string[] strings~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectGroupData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'handles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'floatData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectGroupData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectGroupData-response
    (cl:cons ':handles (handles msg))
    (cl:cons ':intData (intData msg))
    (cl:cons ':floatData (floatData msg))
    (cl:cons ':strings (strings msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectGroupData)))
  'simRosGetObjectGroupData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectGroupData)))
  'simRosGetObjectGroupData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectGroupData)))
  "Returns string type for a service object of type '<simRosGetObjectGroupData>"
  "vrep_common/simRosGetObjectGroupData")