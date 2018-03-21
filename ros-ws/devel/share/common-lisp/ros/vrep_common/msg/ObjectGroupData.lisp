; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude ObjectGroupData.msg.html

(cl:defclass <ObjectGroupData> (roslisp-msg-protocol:ros-message)
  ((handles
    :reader handles
    :initarg :handles
    :type std_msgs-msg:Int32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int32MultiArray))
   (intData
    :reader intData
    :initarg :intData
    :type std_msgs-msg:Int32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int32MultiArray))
   (floatData
    :reader floatData
    :initarg :floatData
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray))
   (stringData
    :reader stringData
    :initarg :stringData
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ObjectGroupData (<ObjectGroupData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectGroupData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectGroupData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<ObjectGroupData> is deprecated: use vrep_common-msg:ObjectGroupData instead.")))

(cl:ensure-generic-function 'handles-val :lambda-list '(m))
(cl:defmethod handles-val ((m <ObjectGroupData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:handles-val is deprecated.  Use vrep_common-msg:handles instead.")
  (handles m))

(cl:ensure-generic-function 'intData-val :lambda-list '(m))
(cl:defmethod intData-val ((m <ObjectGroupData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:intData-val is deprecated.  Use vrep_common-msg:intData instead.")
  (intData m))

(cl:ensure-generic-function 'floatData-val :lambda-list '(m))
(cl:defmethod floatData-val ((m <ObjectGroupData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:floatData-val is deprecated.  Use vrep_common-msg:floatData instead.")
  (floatData m))

(cl:ensure-generic-function 'stringData-val :lambda-list '(m))
(cl:defmethod stringData-val ((m <ObjectGroupData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:stringData-val is deprecated.  Use vrep_common-msg:stringData instead.")
  (stringData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectGroupData>) ostream)
  "Serializes a message object of type '<ObjectGroupData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'handles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'floatData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stringData) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectGroupData>) istream)
  "Deserializes a message object of type '<ObjectGroupData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'handles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'floatData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stringData) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectGroupData>)))
  "Returns string type for a message object of type '<ObjectGroupData>"
  "vrep_common/ObjectGroupData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectGroupData)))
  "Returns string type for a message object of type 'ObjectGroupData"
  "vrep_common/ObjectGroupData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectGroupData>)))
  "Returns md5sum for a message object of type '<ObjectGroupData>"
  "d73f2682eafdfd3c477ba05ceeae1ada")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectGroupData)))
  "Returns md5sum for a message object of type 'ObjectGroupData"
  "d73f2682eafdfd3c477ba05ceeae1ada")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectGroupData>)))
  "Returns full string definition for message of type '<ObjectGroupData>"
  (cl:format cl:nil "std_msgs/Int32MultiArray handles~%std_msgs/Int32MultiArray intData~%std_msgs/Float32MultiArray floatData~%std_msgs/String stringData~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectGroupData)))
  "Returns full string definition for message of type 'ObjectGroupData"
  (cl:format cl:nil "std_msgs/Int32MultiArray handles~%std_msgs/Int32MultiArray intData~%std_msgs/Float32MultiArray floatData~%std_msgs/String stringData~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectGroupData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'handles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'floatData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stringData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectGroupData>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectGroupData
    (cl:cons ':handles (handles msg))
    (cl:cons ':intData (intData msg))
    (cl:cons ':floatData (floatData msg))
    (cl:cons ':stringData (stringData msg))
))
