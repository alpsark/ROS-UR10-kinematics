; Auto-generated. Do not edit!


(cl:in-package vrep_common-srv)


;//! \htmlinclude simRosSetVisionSensorImage-request.msg.html

(cl:defclass <simRosSetVisionSensorImage-request> (roslisp-msg-protocol:ros-message)
  ((handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass simRosSetVisionSensorImage-request (<simRosSetVisionSensorImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetVisionSensorImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetVisionSensorImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetVisionSensorImage-request> is deprecated: use vrep_common-srv:simRosSetVisionSensorImage-request instead.")))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <simRosSetVisionSensorImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:handle-val is deprecated.  Use vrep_common-srv:handle instead.")
  (handle m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <simRosSetVisionSensorImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:image-val is deprecated.  Use vrep_common-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetVisionSensorImage-request>) ostream)
  "Serializes a message object of type '<simRosSetVisionSensorImage-request>"
  (cl:let* ((signed (cl:slot-value msg 'handle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetVisionSensorImage-request>) istream)
  "Deserializes a message object of type '<simRosSetVisionSensorImage-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'handle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetVisionSensorImage-request>)))
  "Returns string type for a service object of type '<simRosSetVisionSensorImage-request>"
  "vrep_common/simRosSetVisionSensorImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetVisionSensorImage-request)))
  "Returns string type for a service object of type 'simRosSetVisionSensorImage-request"
  "vrep_common/simRosSetVisionSensorImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetVisionSensorImage-request>)))
  "Returns md5sum for a message object of type '<simRosSetVisionSensorImage-request>"
  "e312c990380d2289b9e07f7a0295ef34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetVisionSensorImage-request)))
  "Returns md5sum for a message object of type 'simRosSetVisionSensorImage-request"
  "e312c990380d2289b9e07f7a0295ef34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetVisionSensorImage-request>)))
  "Returns full string definition for message of type '<simRosSetVisionSensorImage-request>"
  (cl:format cl:nil "~%~%~%~%int32 handle~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetVisionSensorImage-request)))
  "Returns full string definition for message of type 'simRosSetVisionSensorImage-request"
  (cl:format cl:nil "~%~%~%~%int32 handle~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetVisionSensorImage-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetVisionSensorImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetVisionSensorImage-request
    (cl:cons ':handle (handle msg))
    (cl:cons ':image (image msg))
))
;//! \htmlinclude simRosSetVisionSensorImage-response.msg.html

(cl:defclass <simRosSetVisionSensorImage-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass simRosSetVisionSensorImage-response (<simRosSetVisionSensorImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simRosSetVisionSensorImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simRosSetVisionSensorImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-srv:<simRosSetVisionSensorImage-response> is deprecated: use vrep_common-srv:simRosSetVisionSensorImage-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <simRosSetVisionSensorImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-srv:result-val is deprecated.  Use vrep_common-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simRosSetVisionSensorImage-response>) ostream)
  "Serializes a message object of type '<simRosSetVisionSensorImage-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simRosSetVisionSensorImage-response>) istream)
  "Deserializes a message object of type '<simRosSetVisionSensorImage-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simRosSetVisionSensorImage-response>)))
  "Returns string type for a service object of type '<simRosSetVisionSensorImage-response>"
  "vrep_common/simRosSetVisionSensorImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetVisionSensorImage-response)))
  "Returns string type for a service object of type 'simRosSetVisionSensorImage-response"
  "vrep_common/simRosSetVisionSensorImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simRosSetVisionSensorImage-response>)))
  "Returns md5sum for a message object of type '<simRosSetVisionSensorImage-response>"
  "e312c990380d2289b9e07f7a0295ef34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simRosSetVisionSensorImage-response)))
  "Returns md5sum for a message object of type 'simRosSetVisionSensorImage-response"
  "e312c990380d2289b9e07f7a0295ef34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simRosSetVisionSensorImage-response>)))
  "Returns full string definition for message of type '<simRosSetVisionSensorImage-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simRosSetVisionSensorImage-response)))
  "Returns full string definition for message of type 'simRosSetVisionSensorImage-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simRosSetVisionSensorImage-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simRosSetVisionSensorImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'simRosSetVisionSensorImage-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'simRosSetVisionSensorImage)))
  'simRosSetVisionSensorImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'simRosSetVisionSensorImage)))
  'simRosSetVisionSensorImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simRosSetVisionSensorImage)))
  "Returns string type for a service object of type '<simRosSetVisionSensorImage>"
  "vrep_common/simRosSetVisionSensorImage")