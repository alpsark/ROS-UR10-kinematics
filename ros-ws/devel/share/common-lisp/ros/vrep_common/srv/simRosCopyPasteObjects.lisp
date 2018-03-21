; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosCopyPasteObjects-request.msg.html

(cl:defclass <simRosCopyPasteObjects-request> (roslisp-msg-protocol:ros-message)
  ((objectHandles
    :reader objectHandles
    :initarg :objectHandles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosCopyPasteObjects-request (<simRosCopyPasteObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosCopyPasteObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosCopyPasteObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosCopyPasteObjects-request> is deprecated: use vrep_common-srv:simRosCopyPasteObjects-request instead.")))

(cl:ensure-generic-function 'objectHandles-val :lambda-list '(m))
(cl:defmethod objectHandles-val ((m <simRosCopyPasteObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:objectHandles-val is deprecated.  Use vrep_common-srv:objectHandles instead.")
  (objectHandles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosCopyPasteObjects-request>) ostream)
  "Serializes a message object of type '<simRosCopyPasteObjects-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objectHandles))))
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
   (cl:slot-value msg 'objectHandles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosCopyPasteObjects-request>) istream)
  "Deserializes a message object of type '<simRosCopyPasteObjects-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objectHandles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objectHandles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosCopyPasteObjects-request>)))
  "Returns string type for a service object of type '<simRosCopyPasteObjects-request>"
  "vrep_common/simRosCopyPasteObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCopyPasteObjects-request)))
  "Returns string type for a service object of type 'simRosCopyPasteObjects-request"
  "vrep_common/simRosCopyPasteObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosCopyPasteObjects-request>)))
  "Returns md5sum for a message object of type '<simRosCopyPasteObjects-request>"
  "6c736eb743dc1dca49bfc35e3f009776")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosCopyPasteObjects-request)))
  "Returns md5sum for a message object of type 'simRosCopyPasteObjects-request"
  "6c736eb743dc1dca49bfc35e3f009776")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosCopyPasteObjects-request>)))
  "Returns full string definition for message of type '<simRosCopyPasteObjects-request>"
  (cl:format cl:nil "~%~%~%~%int32[] objectHandles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosCopyPasteObjects-request)))
  "Returns full string definition for message of type 'simRosCopyPasteObjects-request"
  (cl:format cl:nil "~%~%~%~%int32[] objectHandles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosCopyPasteObjects-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objectHandles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosCopyPasteObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosCopyPasteObjects-request
    (cl:cons ':objectHandles (objectHandles msg))
))
;//! \htmlinclude simRosCopyPasteObjects-response.msg.html

(cl:defclass <simRosCopyPasteObjects-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (newObjectHandles
    :reader newObjectHandles
    :initarg :newObjectHandles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosCopyPasteObjects-response (<simRosCopyPasteObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosCopyPasteObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosCopyPasteObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosCopyPasteObjects-response> is deprecated: use vrep_common-srv:simRosCopyPasteObjects-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosCopyPasteObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'newObjectHandles-val :lambda-list '(m))
(cl:defmethod newObjectHandles-val ((m <simRosCopyPasteObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:newObjectHandles-val is deprecated.  Use vrep_common-srv:newObjectHandles instead.")
  (newObjectHandles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosCopyPasteObjects-response>) ostream)
  "Serializes a message object of type '<simRosCopyPasteObjects-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'newObjectHandles))))
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
   (cl:slot-value msg 'newObjectHandles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosCopyPasteObjects-response>) istream)
  "Deserializes a message object of type '<simRosCopyPasteObjects-response>"
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
  (cl:setf (cl:slot-value msg 'newObjectHandles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'newObjectHandles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosCopyPasteObjects-response>)))
  "Returns string type for a service object of type '<simRosCopyPasteObjects-response>"
  "vrep_common/simRosCopyPasteObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCopyPasteObjects-response)))
  "Returns string type for a service object of type 'simRosCopyPasteObjects-response"
  "vrep_common/simRosCopyPasteObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosCopyPasteObjects-response>)))
  "Returns md5sum for a message object of type '<simRosCopyPasteObjects-response>"
  "6c736eb743dc1dca49bfc35e3f009776")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosCopyPasteObjects-response)))
  "Returns md5sum for a message object of type 'simRosCopyPasteObjects-response"
  "6c736eb743dc1dca49bfc35e3f009776")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosCopyPasteObjects-response>)))
  "Returns full string definition for message of type '<simRosCopyPasteObjects-response>"
  (cl:format cl:nil "int32 result~%int32[] newObjectHandles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosCopyPasteObjects-response)))
  "Returns full string definition for message of type 'simRosCopyPasteObjects-response"
  (cl:format cl:nil "int32 result~%int32[] newObjectHandles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosCopyPasteObjects-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'newObjectHandles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosCopyPasteObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosCopyPasteObjects-response
    (cl:cons ':result (result msg))
    (cl:cons ':newObjectHandles (newObjectHandles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosCopyPasteObjects)))
  'simRosCopyPasteObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosCopyPasteObjects)))
  'simRosCopyPasteObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosCopyPasteObjects)))
  "Returns string type for a service object of type '<simRosCopyPasteObjects>"
  "vrep_common/simRosCopyPasteObjects")