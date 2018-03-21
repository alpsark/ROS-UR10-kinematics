; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosDisplayDialog-request.msg.html

(cl:defclass <simRosDisplayDialog-request> (roslisp-msg-protocol:ros-message)
  ((titleText
    :reader titleText
    :initarg :titleText
    :type cl:string
    :initform "")
   (mainText
    :reader mainText
    :initarg :mainText
    :type cl:string
    :initform "")
   (dialogType
    :reader dialogType
    :initarg :dialogType
    :type cl:integer
    :initform 0)
   (initialText
    :reader initialText
    :initarg :initialText
    :type cl:string
    :initform "")
   (titleColors
    :reader titleColors
    :initarg :titleColors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (dialogColors
    :reader dialogColors
    :initarg :dialogColors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass simRosDisplayDialog-request (<simRosDisplayDialog-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosDisplayDialog-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosDisplayDialog-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosDisplayDialog-request> is deprecated: use vrep_common-srv:simRosDisplayDialog-request instead.")))

(cl:ensure-generic-function 'titleText-val :lambda-list '(m))
(cl:defmethod titleText-val ((m <simRosDisplayDialog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:titleText-val is deprecated.  Use vrep_common-srv:titleText instead.")
  (titleText m))

(cl:ensure-generic-function 'mainText-val :lambda-list '(m))
(cl:defmethod mainText-val ((m <simRosDisplayDialog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:mainText-val is deprecated.  Use vrep_common-srv:mainText instead.")
  (mainText m))

(cl:ensure-generic-function 'dialogType-val :lambda-list '(m))
(cl:defmethod dialogType-val ((m <simRosDisplayDialog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dialogType-val is deprecated.  Use vrep_common-srv:dialogType instead.")
  (dialogType m))

(cl:ensure-generic-function 'initialText-val :lambda-list '(m))
(cl:defmethod initialText-val ((m <simRosDisplayDialog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:initialText-val is deprecated.  Use vrep_common-srv:initialText instead.")
  (initialText m))

(cl:ensure-generic-function 'titleColors-val :lambda-list '(m))
(cl:defmethod titleColors-val ((m <simRosDisplayDialog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:titleColors-val is deprecated.  Use vrep_common-srv:titleColors instead.")
  (titleColors m))

(cl:ensure-generic-function 'dialogColors-val :lambda-list '(m))
(cl:defmethod dialogColors-val ((m <simRosDisplayDialog-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dialogColors-val is deprecated.  Use vrep_common-srv:dialogColors instead.")
  (dialogColors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosDisplayDialog-request>) ostream)
  "Serializes a message object of type '<simRosDisplayDialog-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'titleText))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'titleText))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mainText))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mainText))
  (cl:let* ((signed (cl:slot-value msg 'dialogType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'initialText))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'initialText))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'titleColors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'titleColors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dialogColors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dialogColors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosDisplayDialog-request>) istream)
  "Deserializes a message object of type '<simRosDisplayDialog-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'titleText) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'titleText) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mainText) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mainText) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dialogType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'initialText) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'initialText) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'titleColors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'titleColors)))
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
  (cl:setf (cl:slot-value msg 'dialogColors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dialogColors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosDisplayDialog-request>)))
  "Returns string type for a service object of type '<simRosDisplayDialog-request>"
  "vrep_common/simRosDisplayDialogRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisplayDialog-request)))
  "Returns string type for a service object of type 'simRosDisplayDialog-request"
  "vrep_common/simRosDisplayDialogRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosDisplayDialog-request>)))
  "Returns md5sum for a message object of type '<simRosDisplayDialog-request>"
  "948197fff5a2d242998cebb95fb8cae1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosDisplayDialog-request)))
  "Returns md5sum for a message object of type 'simRosDisplayDialog-request"
  "948197fff5a2d242998cebb95fb8cae1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosDisplayDialog-request>)))
  "Returns full string definition for message of type '<simRosDisplayDialog-request>"
  (cl:format cl:nil "~%~%~%~%string titleText~%string mainText~%int32 dialogType~%string initialText~%float32[] titleColors~%float32[] dialogColors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosDisplayDialog-request)))
  "Returns full string definition for message of type 'simRosDisplayDialog-request"
  (cl:format cl:nil "~%~%~%~%string titleText~%string mainText~%int32 dialogType~%string initialText~%float32[] titleColors~%float32[] dialogColors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosDisplayDialog-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'titleText))
     4 (cl:length (cl:slot-value msg 'mainText))
     4
     4 (cl:length (cl:slot-value msg 'initialText))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'titleColors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dialogColors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosDisplayDialog-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosDisplayDialog-request
    (cl:cons ':titleText (titleText msg))
    (cl:cons ':mainText (mainText msg))
    (cl:cons ':dialogType (dialogType msg))
    (cl:cons ':initialText (initialText msg))
    (cl:cons ':titleColors (titleColors msg))
    (cl:cons ':dialogColors (dialogColors msg))
))
;//! \htmlinclude simRosDisplayDialog-response.msg.html

(cl:defclass <simRosDisplayDialog-response> (roslisp-msg-protocol:ros-message)
  ((dialogHandle
    :reader dialogHandle
    :initarg :dialogHandle
    :type cl:integer
    :initform 0)
   (uiHandle
    :reader uiHandle
    :initarg :uiHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosDisplayDialog-response (<simRosDisplayDialog-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosDisplayDialog-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosDisplayDialog-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosDisplayDialog-response> is deprecated: use vrep_common-srv:simRosDisplayDialog-response instead.")))

(cl:ensure-generic-function 'dialogHandle-val :lambda-list '(m))
(cl:defmethod dialogHandle-val ((m <simRosDisplayDialog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:dialogHandle-val is deprecated.  Use vrep_common-srv:dialogHandle instead.")
  (dialogHandle m))

(cl:ensure-generic-function 'uiHandle-val :lambda-list '(m))
(cl:defmethod uiHandle-val ((m <simRosDisplayDialog-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandle-val is deprecated.  Use vrep_common-srv:uiHandle instead.")
  (uiHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosDisplayDialog-response>) ostream)
  "Serializes a message object of type '<simRosDisplayDialog-response>"
  (cl:let* ((signed (cl:slot-value msg 'dialogHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'uiHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosDisplayDialog-response>) istream)
  "Deserializes a message object of type '<simRosDisplayDialog-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dialogHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uiHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosDisplayDialog-response>)))
  "Returns string type for a service object of type '<simRosDisplayDialog-response>"
  "vrep_common/simRosDisplayDialogResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisplayDialog-response)))
  "Returns string type for a service object of type 'simRosDisplayDialog-response"
  "vrep_common/simRosDisplayDialogResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosDisplayDialog-response>)))
  "Returns md5sum for a message object of type '<simRosDisplayDialog-response>"
  "948197fff5a2d242998cebb95fb8cae1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosDisplayDialog-response)))
  "Returns md5sum for a message object of type 'simRosDisplayDialog-response"
  "948197fff5a2d242998cebb95fb8cae1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosDisplayDialog-response>)))
  "Returns full string definition for message of type '<simRosDisplayDialog-response>"
  (cl:format cl:nil "int32 dialogHandle~%int32 uiHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosDisplayDialog-response)))
  "Returns full string definition for message of type 'simRosDisplayDialog-response"
  (cl:format cl:nil "int32 dialogHandle~%int32 uiHandle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosDisplayDialog-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosDisplayDialog-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosDisplayDialog-response
    (cl:cons ':dialogHandle (dialogHandle msg))
    (cl:cons ':uiHandle (uiHandle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosDisplayDialog)))
  'simRosDisplayDialog-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosDisplayDialog)))
  'simRosDisplayDialog-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosDisplayDialog)))
  "Returns string type for a service object of type '<simRosDisplayDialog>"
  "vrep_common/simRosDisplayDialog")