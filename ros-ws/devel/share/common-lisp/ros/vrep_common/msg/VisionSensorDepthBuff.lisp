; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude VisionSensorDepthBuff.msg.html

(cl:defclass <VisionSensorDepthBuff> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (data
    :reader data
    :initarg :data
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray)))
)

(cl:defclass VisionSensorDepthBuff (<VisionSensorDepthBuff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionSensorDepthBuff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionSensorDepthBuff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<VisionSensorDepthBuff> is deprecated: use vrep_common-msg:VisionSensorDepthBuff instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <VisionSensorDepthBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:x-val is deprecated.  Use vrep_common-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <VisionSensorDepthBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:y-val is deprecated.  Use vrep_common-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <VisionSensorDepthBuff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:data-val is deprecated.  Use vrep_common-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionSensorDepthBuff>) ostream)
  "Serializes a message object of type '<VisionSensorDepthBuff>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionSensorDepthBuff>) istream)
  "Deserializes a message object of type '<VisionSensorDepthBuff>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionSensorDepthBuff>)))
  "Returns string type for a message object of type '<VisionSensorDepthBuff>"
  "vrep_common/VisionSensorDepthBuff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionSensorDepthBuff)))
  "Returns string type for a message object of type 'VisionSensorDepthBuff"
  "vrep_common/VisionSensorDepthBuff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionSensorDepthBuff>)))
  "Returns md5sum for a message object of type '<VisionSensorDepthBuff>"
  "fe6c62e891cf9e2aef9b4742b6ae660f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionSensorDepthBuff)))
  "Returns md5sum for a message object of type 'VisionSensorDepthBuff"
  "fe6c62e891cf9e2aef9b4742b6ae660f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionSensorDepthBuff>)))
  "Returns full string definition for message of type '<VisionSensorDepthBuff>"
  (cl:format cl:nil "std_msgs/Int32 x~%std_msgs/Int32 y~%std_msgs/Float32MultiArray data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionSensorDepthBuff)))
  "Returns full string definition for message of type 'VisionSensorDepthBuff"
  (cl:format cl:nil "std_msgs/Int32 x~%std_msgs/Int32 y~%std_msgs/Float32MultiArray data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionSensorDepthBuff>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionSensorDepthBuff>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionSensorDepthBuff
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':data (data msg))
))
