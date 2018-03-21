; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosAuxiliaryConsoleOpen-request.msg.html

(cl:defclass <simRosAuxiliaryConsoleOpen-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (maxLines
    :reader maxLines
    :initarg :maxLines
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (size
    :reader size
    :initarg :size
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (textColor
    :reader textColor
    :initarg :textColor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (backgroundColor
    :reader backgroundColor
    :initarg :backgroundColor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass simRosAuxiliaryConsoleOpen-request (<simRosAuxiliaryConsoleOpen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsoleOpen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsoleOpen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsoleOpen-request> is deprecated: use vrep_common-srv:simRosAuxiliaryConsoleOpen-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <simRosAuxiliaryConsoleOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:title-val is deprecated.  Use vrep_common-srv:title instead.")
  (title m))

(cl:ensure-generic-function 'maxLines-val :lambda-list '(m))
(cl:defmethod maxLines-val ((m <simRosAuxiliaryConsoleOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:maxLines-val is deprecated.  Use vrep_common-srv:maxLines instead.")
  (maxLines m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <simRosAuxiliaryConsoleOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:mode-val is deprecated.  Use vrep_common-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <simRosAuxiliaryConsoleOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:position-val is deprecated.  Use vrep_common-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <simRosAuxiliaryConsoleOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:size-val is deprecated.  Use vrep_common-srv:size instead.")
  (size m))

(cl:ensure-generic-function 'textColor-val :lambda-list '(m))
(cl:defmethod textColor-val ((m <simRosAuxiliaryConsoleOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:textColor-val is deprecated.  Use vrep_common-srv:textColor instead.")
  (textColor m))

(cl:ensure-generic-function 'backgroundColor-val :lambda-list '(m))
(cl:defmethod backgroundColor-val ((m <simRosAuxiliaryConsoleOpen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:backgroundColor-val is deprecated.  Use vrep_common-srv:backgroundColor instead.")
  (backgroundColor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsoleOpen-request>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsoleOpen-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:let* ((signed (cl:slot-value msg 'maxLines)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
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
   (cl:slot-value msg 'position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'size))))
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
   (cl:slot-value msg 'size))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'textColor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'textColor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'backgroundColor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'backgroundColor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsoleOpen-request>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsoleOpen-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maxLines) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
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
  (cl:setf (cl:slot-value msg 'size) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'size)))
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
  (cl:setf (cl:slot-value msg 'textColor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'textColor)))
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
  (cl:setf (cl:slot-value msg 'backgroundColor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'backgroundColor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsoleOpen-request>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleOpen-request>"
  "vrep_common/simRosAuxiliaryConsoleOpenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleOpen-request)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsoleOpen-request"
  "vrep_common/simRosAuxiliaryConsoleOpenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsoleOpen-request>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsoleOpen-request>"
  "f861a9b4fa1cfe42d343017f3c8914a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsoleOpen-request)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsoleOpen-request"
  "f861a9b4fa1cfe42d343017f3c8914a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsoleOpen-request>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsoleOpen-request>"
  (cl:format cl:nil "~%~%~%~%string title~%int32 maxLines~%int32 mode~%int32[] position~%int32[] size~%float32[] textColor~%float32[] backgroundColor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsoleOpen-request)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsoleOpen-request"
  (cl:format cl:nil "~%~%~%~%string title~%int32 maxLines~%int32 mode~%int32[] position~%int32[] size~%float32[] textColor~%float32[] backgroundColor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsoleOpen-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'size) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'textColor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'backgroundColor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsoleOpen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsoleOpen-request
    (cl:cons ':title (title msg))
    (cl:cons ':maxLines (maxLines msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':position (position msg))
    (cl:cons ':size (size msg))
    (cl:cons ':textColor (textColor msg))
    (cl:cons ':backgroundColor (backgroundColor msg))
))
;//! \htmlinclude simRosAuxiliaryConsoleOpen-response.msg.html

(cl:defclass <simRosAuxiliaryConsoleOpen-response> (roslisp-msg-protocol:ros-message)
  ((consoleHandle
    :reader consoleHandle
    :initarg :consoleHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosAuxiliaryConsoleOpen-response (<simRosAuxiliaryConsoleOpen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosAuxiliaryConsoleOpen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosAuxiliaryConsoleOpen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosAuxiliaryConsoleOpen-response> is deprecated: use vrep_common-srv:simRosAuxiliaryConsoleOpen-response instead.")))

(cl:ensure-generic-function 'consoleHandle-val :lambda-list '(m))
(cl:defmethod consoleHandle-val ((m <simRosAuxiliaryConsoleOpen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:consoleHandle-val is deprecated.  Use vrep_common-srv:consoleHandle instead.")
  (consoleHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosAuxiliaryConsoleOpen-response>) ostream)
  "Serializes a message object of type '<simRosAuxiliaryConsoleOpen-response>"
  (cl:let* ((signed (cl:slot-value msg 'consoleHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosAuxiliaryConsoleOpen-response>) istream)
  "Deserializes a message object of type '<simRosAuxiliaryConsoleOpen-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'consoleHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosAuxiliaryConsoleOpen-response>)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleOpen-response>"
  "vrep_common/simRosAuxiliaryConsoleOpenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleOpen-response)))
  "Returns string type for a service object of type 'simRosAuxiliaryConsoleOpen-response"
  "vrep_common/simRosAuxiliaryConsoleOpenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosAuxiliaryConsoleOpen-response>)))
  "Returns md5sum for a message object of type '<simRosAuxiliaryConsoleOpen-response>"
  "f861a9b4fa1cfe42d343017f3c8914a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosAuxiliaryConsoleOpen-response)))
  "Returns md5sum for a message object of type 'simRosAuxiliaryConsoleOpen-response"
  "f861a9b4fa1cfe42d343017f3c8914a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosAuxiliaryConsoleOpen-response>)))
  "Returns full string definition for message of type '<simRosAuxiliaryConsoleOpen-response>"
  (cl:format cl:nil "int32 consoleHandle~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosAuxiliaryConsoleOpen-response)))
  "Returns full string definition for message of type 'simRosAuxiliaryConsoleOpen-response"
  (cl:format cl:nil "int32 consoleHandle~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosAuxiliaryConsoleOpen-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosAuxiliaryConsoleOpen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosAuxiliaryConsoleOpen-response
    (cl:cons ':consoleHandle (consoleHandle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosAuxiliaryConsoleOpen)))
  'simRosAuxiliaryConsoleOpen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosAuxiliaryConsoleOpen)))
  'simRosAuxiliaryConsoleOpen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosAuxiliaryConsoleOpen)))
  "Returns string type for a service object of type '<simRosAuxiliaryConsoleOpen>"
  "vrep_common/simRosAuxiliaryConsoleOpen")