; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetUIEventButton-request.msg.html

(cl:defclass <simRosGetUIEventButton-request> (roslisp-msg-protocol:ros-message)
  ((uiHandle
    :reader uiHandle
    :initarg :uiHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetUIEventButton-request (<simRosGetUIEventButton-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUIEventButton-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUIEventButton-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUIEventButton-request> is deprecated: use vrep_common-srv:simRosGetUIEventButton-request instead.")))

(cl:ensure-generic-function 'uiHandle-val :lambda-list '(m))
(cl:defmethod uiHandle-val ((m <simRosGetUIEventButton-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:uiHandle-val is deprecated.  Use vrep_common-srv:uiHandle instead.")
  (uiHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUIEventButton-request>) ostream)
  "Serializes a message object of type '<simRosGetUIEventButton-request>"
  (cl:let* ((signed (cl:slot-value msg 'uiHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUIEventButton-request>) istream)
  "Deserializes a message object of type '<simRosGetUIEventButton-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uiHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUIEventButton-request>)))
  "Returns string type for a service object of type '<simRosGetUIEventButton-request>"
  "vrep_common/simRosGetUIEventButtonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIEventButton-request)))
  "Returns string type for a service object of type 'simRosGetUIEventButton-request"
  "vrep_common/simRosGetUIEventButtonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUIEventButton-request>)))
  "Returns md5sum for a message object of type '<simRosGetUIEventButton-request>"
  "73f7d10c9f731ce35564b7e9b645aa25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUIEventButton-request)))
  "Returns md5sum for a message object of type 'simRosGetUIEventButton-request"
  "73f7d10c9f731ce35564b7e9b645aa25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUIEventButton-request>)))
  "Returns full string definition for message of type '<simRosGetUIEventButton-request>"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUIEventButton-request)))
  "Returns full string definition for message of type 'simRosGetUIEventButton-request"
  (cl:format cl:nil "~%~%~%~%int32 uiHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUIEventButton-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUIEventButton-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUIEventButton-request
    (cl:cons ':uiHandle (uiHandle msg))
))
;//! \htmlinclude simRosGetUIEventButton-response.msg.html

(cl:defclass <simRosGetUIEventButton-response> (roslisp-msg-protocol:ros-message)
  ((buttonID
    :reader buttonID
    :initarg :buttonID
    :type cl:integer
    :initform 0)
   (auxiliaryValues
    :reader auxiliaryValues
    :initarg :auxiliaryValues
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass simRosGetUIEventButton-response (<simRosGetUIEventButton-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetUIEventButton-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetUIEventButton-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetUIEventButton-response> is deprecated: use vrep_common-srv:simRosGetUIEventButton-response instead.")))

(cl:ensure-generic-function 'buttonID-val :lambda-list '(m))
(cl:defmethod buttonID-val ((m <simRosGetUIEventButton-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:buttonID-val is deprecated.  Use vrep_common-srv:buttonID instead.")
  (buttonID m))

(cl:ensure-generic-function 'auxiliaryValues-val :lambda-list '(m))
(cl:defmethod auxiliaryValues-val ((m <simRosGetUIEventButton-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:auxiliaryValues-val is deprecated.  Use vrep_common-srv:auxiliaryValues instead.")
  (auxiliaryValues m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetUIEventButton-response>) ostream)
  "Serializes a message object of type '<simRosGetUIEventButton-response>"
  (cl:let* ((signed (cl:slot-value msg 'buttonID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'auxiliaryValues))))
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
   (cl:slot-value msg 'auxiliaryValues))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetUIEventButton-response>) istream)
  "Deserializes a message object of type '<simRosGetUIEventButton-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buttonID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'auxiliaryValues) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'auxiliaryValues)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetUIEventButton-response>)))
  "Returns string type for a service object of type '<simRosGetUIEventButton-response>"
  "vrep_common/simRosGetUIEventButtonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIEventButton-response)))
  "Returns string type for a service object of type 'simRosGetUIEventButton-response"
  "vrep_common/simRosGetUIEventButtonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetUIEventButton-response>)))
  "Returns md5sum for a message object of type '<simRosGetUIEventButton-response>"
  "73f7d10c9f731ce35564b7e9b645aa25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetUIEventButton-response)))
  "Returns md5sum for a message object of type 'simRosGetUIEventButton-response"
  "73f7d10c9f731ce35564b7e9b645aa25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetUIEventButton-response>)))
  "Returns full string definition for message of type '<simRosGetUIEventButton-response>"
  (cl:format cl:nil "int32 buttonID~%int32[] auxiliaryValues~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetUIEventButton-response)))
  "Returns full string definition for message of type 'simRosGetUIEventButton-response"
  (cl:format cl:nil "int32 buttonID~%int32[] auxiliaryValues~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetUIEventButton-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'auxiliaryValues) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetUIEventButton-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetUIEventButton-response
    (cl:cons ':buttonID (buttonID msg))
    (cl:cons ':auxiliaryValues (auxiliaryValues msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetUIEventButton)))
  'simRosGetUIEventButton-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetUIEventButton)))
  'simRosGetUIEventButton-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetUIEventButton)))
  "Returns string type for a service object of type '<simRosGetUIEventButton>"
  "vrep_common/simRosGetUIEventButton")