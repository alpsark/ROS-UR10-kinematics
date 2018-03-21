;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::ScriptFunctionCallData)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'ScriptFunctionCallData (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SCRIPTFUNCTIONCALLDATA")
  (make-package "VREP_COMMON::SCRIPTFUNCTIONCALLDATA"))

(in-package "ROS")
;;//! \htmlinclude ScriptFunctionCallData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::ScriptFunctionCallData
  :super ros::object
  :slots (_intData _floatData _stringData _bufferData ))

(defmethod vrep_common::ScriptFunctionCallData
  (:init
   (&key
    ((:intData __intData) (instance std_msgs::Int32MultiArray :init))
    ((:floatData __floatData) (instance std_msgs::Float32MultiArray :init))
    ((:stringData __stringData) (instance std_msgs::String :init))
    ((:bufferData __bufferData) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _intData __intData)
   (setq _floatData __floatData)
   (setq _stringData __stringData)
   (setq _bufferData __bufferData)
   self)
  (:intData
   (&rest __intData)
   (if (keywordp (car __intData))
       (send* _intData __intData)
     (progn
       (if __intData (setq _intData (car __intData)))
       _intData)))
  (:floatData
   (&rest __floatData)
   (if (keywordp (car __floatData))
       (send* _floatData __floatData)
     (progn
       (if __floatData (setq _floatData (car __floatData)))
       _floatData)))
  (:stringData
   (&rest __stringData)
   (if (keywordp (car __stringData))
       (send* _stringData __stringData)
     (progn
       (if __stringData (setq _stringData (car __stringData)))
       _stringData)))
  (:bufferData
   (&rest __bufferData)
   (if (keywordp (car __bufferData))
       (send* _bufferData __bufferData)
     (progn
       (if __bufferData (setq _bufferData (car __bufferData)))
       _bufferData)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32MultiArray _intData
    (send _intData :serialization-length)
    ;; std_msgs/Float32MultiArray _floatData
    (send _floatData :serialization-length)
    ;; std_msgs/String _stringData
    (send _stringData :serialization-length)
    ;; std_msgs/String _bufferData
    (send _bufferData :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32MultiArray _intData
       (send _intData :serialize s)
     ;; std_msgs/Float32MultiArray _floatData
       (send _floatData :serialize s)
     ;; std_msgs/String _stringData
       (send _stringData :serialize s)
     ;; std_msgs/String _bufferData
       (send _bufferData :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32MultiArray _intData
     (send _intData :deserialize buf ptr-) (incf ptr- (send _intData :serialization-length))
   ;; std_msgs/Float32MultiArray _floatData
     (send _floatData :deserialize buf ptr-) (incf ptr- (send _floatData :serialization-length))
   ;; std_msgs/String _stringData
     (send _stringData :deserialize buf ptr-) (incf ptr- (send _stringData :serialization-length))
   ;; std_msgs/String _bufferData
     (send _bufferData :deserialize buf ptr-) (incf ptr- (send _bufferData :serialization-length))
   ;;
   self)
  )

(setf (get vrep_common::ScriptFunctionCallData :md5sum-) "0b1e9358c71aec4e099bb2937a5121eb")
(setf (get vrep_common::ScriptFunctionCallData :datatype-) "vrep_common/ScriptFunctionCallData")
(setf (get vrep_common::ScriptFunctionCallData :definition-)
      "std_msgs/Int32MultiArray intData
std_msgs/Float32MultiArray floatData
std_msgs/String stringData
std_msgs/String bufferData

================================================================================
MSG: std_msgs/Int32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int32[]           data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/String
string data

")



(provide :vrep_common/ScriptFunctionCallData "0b1e9358c71aec4e099bb2937a5121eb")


