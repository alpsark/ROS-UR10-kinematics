; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude VisionSensorData.msg.html

(cl:defclass <VisionSensorData> (roslisp-msg-protocol:ros-message)
  ((triggerState
    :reader triggerState
    :initarg :triggerState
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (packetData
    :reader packetData
    :initarg :packetData
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray))
   (packetSizes
    :reader packetSizes
    :initarg :packetSizes
    :type std_msgs-msg:Int32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int32MultiArray)))
)

(cl:defclass VisionSensorData (<VisionSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<VisionSensorData> is deprecated: use vrep_common-msg:VisionSensorData instead.")))

(cl:ensure-generic-function 'triggerState-val :lambda-list '(m))
(cl:defmethod triggerState-val ((m <VisionSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:triggerState-val is deprecated.  Use vrep_common-msg:triggerState instead.")
  (triggerState m))

(cl:ensure-generic-function 'packetData-val :lambda-list '(m))
(cl:defmethod packetData-val ((m <VisionSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:packetData-val is deprecated.  Use vrep_common-msg:packetData instead.")
  (packetData m))

(cl:ensure-generic-function 'packetSizes-val :lambda-list '(m))
(cl:defmethod packetSizes-val ((m <VisionSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:packetSizes-val is deprecated.  Use vrep_common-msg:packetSizes instead.")
  (packetSizes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionSensorData>) ostream)
  "Serializes a message object of type '<VisionSensorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'triggerState) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'packetData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'packetSizes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionSensorData>) istream)
  "Deserializes a message object of type '<VisionSensorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'triggerState) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'packetData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'packetSizes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionSensorData>)))
  "Returns string type for a message object of type '<VisionSensorData>"
  "vrep_common/VisionSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionSensorData)))
  "Returns string type for a message object of type 'VisionSensorData"
  "vrep_common/VisionSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionSensorData>)))
  "Returns md5sum for a message object of type '<VisionSensorData>"
  "f2ef61369c5dd779545031da241014b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionSensorData)))
  "Returns md5sum for a message object of type 'VisionSensorData"
  "f2ef61369c5dd779545031da241014b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionSensorData>)))
  "Returns full string definition for message of type '<VisionSensorData>"
  (cl:format cl:nil "std_msgs/Int32 triggerState~%std_msgs/Float32MultiArray packetData~%std_msgs/Int32MultiArray packetSizes~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionSensorData)))
  "Returns full string definition for message of type 'VisionSensorData"
  (cl:format cl:nil "std_msgs/Int32 triggerState~%std_msgs/Float32MultiArray packetData~%std_msgs/Int32MultiArray packetSizes~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionSensorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'triggerState))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'packetData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'packetSizes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionSensorData
    (cl:cons ':triggerState (triggerState msg))
    (cl:cons ':packetData (packetData msg))
    (cl:cons ':packetSizes (packetSizes msg))
))
