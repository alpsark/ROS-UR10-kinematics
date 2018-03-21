; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosGetVisionSensorImage-request.msg.html

(cl:defclass <simRosGetVisionSensorImage-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (options
    :reader options
    :initarg :options
    :type cl:fixnum
    :initform 0))
)

(cl:defclass simRosGetVisionSensorImage-request (<simRosGetVisionSensorImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetVisionSensorImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetVisionSensorImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetVisionSensorImage-request> is deprecated: use vrep_common-srv:simRosGetVisionSensorImage-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosGetVisionSensorImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'options-val :lambda-list '(m))
(cl:defmethod options-val ((m <simRosGetVisionSensorImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:options-val is deprecated.  Use vrep_common-srv:options instead.")
  (options m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetVisionSensorImage-request>) ostream)
  "Serializes a message object of type '<simRosGetVisionSensorImage-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'options)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetVisionSensorImage-request>) istream)
  "Deserializes a message object of type '<simRosGetVisionSensorImage-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'options)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetVisionSensorImage-request>)))
  "Returns string type for a service object of type '<simRosGetVisionSensorImage-request>"
  "vrep_common/simRosGetVisionSensorImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetVisionSensorImage-request)))
  "Returns string type for a service object of type 'simRosGetVisionSensorImage-request"
  "vrep_common/simRosGetVisionSensorImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetVisionSensorImage-request>)))
  "Returns md5sum for a message object of type '<simRosGetVisionSensorImage-request>"
  "c9fa464de5ffa4b5a019f79bc572d29f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetVisionSensorImage-request)))
  "Returns md5sum for a message object of type 'simRosGetVisionSensorImage-request"
  "c9fa464de5ffa4b5a019f79bc572d29f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetVisionSensorImage-request>)))
  "Returns full string definition for message of type '<simRosGetVisionSensorImage-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%uint8 options~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetVisionSensorImage-request)))
  "Returns full string definition for message of type 'simRosGetVisionSensorImage-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%uint8 options~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetVisionSensorImage-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetVisionSensorImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetVisionSensorImage-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':options (options msg))
))
;//! \htmlinclude simRosGetVisionSensorImage-response.msg.html

(cl:defclass <simRosGetVisionSensorImage-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass simRosGetVisionSensorImage-response (<simRosGetVisionSensorImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosGetVisionSensorImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosGetVisionSensorImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosGetVisionSensorImage-response> is deprecated: use vrep_common-srv:simRosGetVisionSensorImage-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosGetVisionSensorImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <simRosGetVisionSensorImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:image-val is deprecated.  Use vrep_common-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosGetVisionSensorImage-response>) ostream)
  "Serializes a message object of type '<simRosGetVisionSensorImage-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosGetVisionSensorImage-response>) istream)
  "Deserializes a message object of type '<simRosGetVisionSensorImage-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosGetVisionSensorImage-response>)))
  "Returns string type for a service object of type '<simRosGetVisionSensorImage-response>"
  "vrep_common/simRosGetVisionSensorImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetVisionSensorImage-response)))
  "Returns string type for a service object of type 'simRosGetVisionSensorImage-response"
  "vrep_common/simRosGetVisionSensorImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosGetVisionSensorImage-response>)))
  "Returns md5sum for a message object of type '<simRosGetVisionSensorImage-response>"
  "c9fa464de5ffa4b5a019f79bc572d29f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosGetVisionSensorImage-response)))
  "Returns md5sum for a message object of type 'simRosGetVisionSensorImage-response"
  "c9fa464de5ffa4b5a019f79bc572d29f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosGetVisionSensorImage-response>)))
  "Returns full string definition for message of type '<simRosGetVisionSensorImage-response>"
  (cl:format cl:nil "int32 result~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosGetVisionSensorImage-response)))
  "Returns full string definition for message of type 'simRosGetVisionSensorImage-response"
  (cl:format cl:nil "int32 result~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosGetVisionSensorImage-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosGetVisionSensorImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosGetVisionSensorImage-response
    (cl:cons ':result (result msg))
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosGetVisionSensorImage)))
  'simRosGetVisionSensorImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosGetVisionSensorImage)))
  'simRosGetVisionSensorImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosGetVisionSensorImage)))
  "Returns string type for a service object of type '<simRosGetVisionSensorImage>"
  "vrep_common/simRosGetVisionSensorImage")