; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude JointSetStateData.msg.html

(cl:defclass <JointSetStateData> (roslisp-msg-protocol:ros-message)
  ((handles
    :reader handles
    :initarg :handles
    :type std_msgs-msg:Int32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int32MultiArray))
   (setModes
    :reader setModes
    :initarg :setModes
    :type std_msgs-msg:UInt8MultiArray
    :initform (cl:make-instance 'std_msgs-msg:UInt8MultiArray))
   (values
    :reader values
    :initarg :values
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray)))
)

(cl:defclass JointSetStateData (<JointSetStateData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSetStateData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSetStateData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<JointSetStateData> is deprecated: use vrep_common-msg:JointSetStateData instead.")))

(cl:ensure-generic-function 'handles-val :lambda-list '(m))
(cl:defmethod handles-val ((m <JointSetStateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:handles-val is deprecated.  Use vrep_common-msg:handles instead.")
  (handles m))

(cl:ensure-generic-function 'setModes-val :lambda-list '(m))
(cl:defmethod setModes-val ((m <JointSetStateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:setModes-val is deprecated.  Use vrep_common-msg:setModes instead.")
  (setModes m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <JointSetStateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:values-val is deprecated.  Use vrep_common-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSetStateData>) ostream)
  "Serializes a message object of type '<JointSetStateData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'handles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'setModes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'values) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSetStateData>) istream)
  "Deserializes a message object of type '<JointSetStateData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'handles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'setModes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'values) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSetStateData>)))
  "Returns string type for a message object of type '<JointSetStateData>"
  "vrep_common/JointSetStateData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSetStateData)))
  "Returns string type for a message object of type 'JointSetStateData"
  "vrep_common/JointSetStateData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSetStateData>)))
  "Returns md5sum for a message object of type '<JointSetStateData>"
  "bd1161cd602435f02e226bb73e4acdb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSetStateData)))
  "Returns md5sum for a message object of type 'JointSetStateData"
  "bd1161cd602435f02e226bb73e4acdb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSetStateData>)))
  "Returns full string definition for message of type '<JointSetStateData>"
  (cl:format cl:nil "std_msgs/Int32MultiArray handles~%std_msgs/UInt8MultiArray setModes~%std_msgs/Float32MultiArray values~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/UInt8MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint8[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSetStateData)))
  "Returns full string definition for message of type 'JointSetStateData"
  (cl:format cl:nil "std_msgs/Int32MultiArray handles~%std_msgs/UInt8MultiArray setModes~%std_msgs/Float32MultiArray values~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/UInt8MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint8[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSetStateData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'handles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'setModes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'values))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSetStateData>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSetStateData
    (cl:cons ':handles (handles msg))
    (cl:cons ':setModes (setModes msg))
    (cl:cons ':values (values msg))
))
