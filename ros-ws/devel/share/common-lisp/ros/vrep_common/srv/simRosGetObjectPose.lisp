; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetObjectPose-request.msg.html

(cl:defclass <simRosGetObjectPose-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (relativeToObjectHandle
    :reader relativeToObjectHandle
    :initarg :relativeToObjectHandle
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosGetObjectPose-request (<simRosGetObjectPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectPose-request> is deprecated: use vrep_common-srv:simRosGetObjectPose-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetObjectPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'relativeToObjectHandle-val :lambda-list '(m))
(cl:defmethod relativeToObjectHandle-val ((m <simRosGetObjectPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:relativeToObjectHandle-val is deprecated.  Use vrep_common-srv:relativeToObjectHandle instead.")
  (relativeToObjectHandle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectPose-request>) ostream)
  "Serializes a message object of type '<simRosGetObjectPose-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'relativeToObjectHandle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectPose-request>) istream)
  "Deserializes a message object of type '<simRosGetObjectPose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relativeToObjectHandle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectPose-request>)))
  "Returns string type for a service object of type '<simRosGetObjectPose-request>"
  "vrep_common/simRosGetObjectPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectPose-request)))
  "Returns string type for a service object of type 'simRosGetObjectPose-request"
  "vrep_common/simRosGetObjectPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectPose-request>)))
  "Returns md5sum for a message object of type '<simRosGetObjectPose-request>"
  "dcc153fe8e4754d793983e414eb1b664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectPose-request)))
  "Returns md5sum for a message object of type 'simRosGetObjectPose-request"
  "dcc153fe8e4754d793983e414eb1b664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectPose-request>)))
  "Returns full string definition for message of type '<simRosGetObjectPose-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 relativeToObjectHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectPose-request)))
  "Returns full string definition for message of type 'simRosGetObjectPose-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%int32 relativeToObjectHandle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectPose-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectPose-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':relativeToObjectHandle (relativeToObjectHandle msg))
))
;//! \htmlinclude simRosGetObjectPose-response.msg.html

(cl:defclass <simRosGetObjectPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass simRosGetObjectPose-response (<simRosGetObjectPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetObjectPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetObjectPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetObjectPose-response> is deprecated: use vrep_common-srv:simRosGetObjectPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetObjectPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <simRosGetObjectPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:pose-val is deprecated.  Use vrep_common-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetObjectPose-response>) ostream)
  "Serializes a message object of type '<simRosGetObjectPose-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetObjectPose-response>) istream)
  "Deserializes a message object of type '<simRosGetObjectPose-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetObjectPose-response>)))
  "Returns string type for a service object of type '<simRosGetObjectPose-response>"
  "vrep_common/simRosGetObjectPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectPose-response)))
  "Returns string type for a service object of type 'simRosGetObjectPose-response"
  "vrep_common/simRosGetObjectPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetObjectPose-response>)))
  "Returns md5sum for a message object of type '<simRosGetObjectPose-response>"
  "dcc153fe8e4754d793983e414eb1b664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetObjectPose-response)))
  "Returns md5sum for a message object of type 'simRosGetObjectPose-response"
  "dcc153fe8e4754d793983e414eb1b664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetObjectPose-response>)))
  "Returns full string definition for message of type '<simRosGetObjectPose-response>"
  (cl:format cl:nil "int32 result~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetObjectPose-response)))
  "Returns full string definition for message of type 'simRosGetObjectPose-response"
  (cl:format cl:nil "int32 result~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetObjectPose-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetObjectPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetObjectPose-response
    (cl:cons ':result (result msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetObjectPose)))
  'simRosGetObjectPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetObjectPose)))
  'simRosGetObjectPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetObjectPose)))
  "Returns string type for a service object of type '<simRosGetObjectPose>"
  "vrep_common/simRosGetObjectPose")