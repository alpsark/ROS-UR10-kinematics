; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude ScriptFunctionCallData.msg.html

(cl:defclass <ScriptFunctionCallData> (roslisp-msg-protocol:ros-message)
  ((intData
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
    :initform (cl:make-instance 'std_msgs-msg:String))
   (bufferData
    :reader bufferData
    :initarg :bufferData
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ScriptFunctionCallData (<ScriptFunctionCallData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScriptFunctionCallData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScriptFunctionCallData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<ScriptFunctionCallData> is deprecated: use vrep_common-msg:ScriptFunctionCallData instead.")))

(cl:ensure-generic-function 'intData-val :lambda-list '(m))
(cl:defmethod intData-val ((m <ScriptFunctionCallData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:intData-val is deprecated.  Use vrep_common-msg:intData instead.")
  (intData m))

(cl:ensure-generic-function 'floatData-val :lambda-list '(m))
(cl:defmethod floatData-val ((m <ScriptFunctionCallData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:floatData-val is deprecated.  Use vrep_common-msg:floatData instead.")
  (floatData m))

(cl:ensure-generic-function 'stringData-val :lambda-list '(m))
(cl:defmethod stringData-val ((m <ScriptFunctionCallData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:stringData-val is deprecated.  Use vrep_common-msg:stringData instead.")
  (stringData m))

(cl:ensure-generic-function 'bufferData-val :lambda-list '(m))
(cl:defmethod bufferData-val ((m <ScriptFunctionCallData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:bufferData-val is deprecated.  Use vrep_common-msg:bufferData instead.")
  (bufferData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScriptFunctionCallData>) ostream)
  "Serializes a message object of type '<ScriptFunctionCallData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'floatData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stringData) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bufferData) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScriptFunctionCallData>) istream)
  "Deserializes a message object of type '<ScriptFunctionCallData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'floatData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stringData) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bufferData) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScriptFunctionCallData>)))
  "Returns string type for a message object of type '<ScriptFunctionCallData>"
  "vrep_common/ScriptFunctionCallData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScriptFunctionCallData)))
  "Returns string type for a message object of type 'ScriptFunctionCallData"
  "vrep_common/ScriptFunctionCallData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScriptFunctionCallData>)))
  "Returns md5sum for a message object of type '<ScriptFunctionCallData>"
  "0b1e9358c71aec4e099bb2937a5121eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScriptFunctionCallData)))
  "Returns md5sum for a message object of type 'ScriptFunctionCallData"
  "0b1e9358c71aec4e099bb2937a5121eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScriptFunctionCallData>)))
  "Returns full string definition for message of type '<ScriptFunctionCallData>"
  (cl:format cl:nil "std_msgs/Int32MultiArray intData~%std_msgs/Float32MultiArray floatData~%std_msgs/String stringData~%std_msgs/String bufferData~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScriptFunctionCallData)))
  "Returns full string definition for message of type 'ScriptFunctionCallData"
  (cl:format cl:nil "std_msgs/Int32MultiArray intData~%std_msgs/Float32MultiArray floatData~%std_msgs/String stringData~%std_msgs/String bufferData~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScriptFunctionCallData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'floatData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stringData))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bufferData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScriptFunctionCallData>))
  "Converts a ROS message object to a list"
  (cl:list 'ScriptFunctionCallData
    (cl:cons ':intData (intData msg))
    (cl:cons ':floatData (floatData msg))
    (cl:cons ':stringData (stringData msg))
    (cl:cons ':bufferData (bufferData msg))
))
