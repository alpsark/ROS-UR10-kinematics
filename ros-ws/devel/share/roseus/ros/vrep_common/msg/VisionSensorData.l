;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::VisionSensorData)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'VisionSensorData (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::VISIONSENSORDATA")
  (make-package "VREP_COMMON::VISIONSENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude VisionSensorData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::VisionSensorData
  :super ros::object
  :slots (_triggerState _packetData _packetSizes ))

(defmethod vrep_common::VisionSensorData
  (:init
   (&key
    ((:triggerState __triggerState) (instance std_msgs::Int32 :init))
    ((:packetData __packetData) (instance std_msgs::Float32MultiArray :init))
    ((:packetSizes __packetSizes) (instance std_msgs::Int32MultiArray :init))
    )
   (send-super :init)
   (setq _triggerState __triggerState)
   (setq _packetData __packetData)
   (setq _packetSizes __packetSizes)
   self)
  (:triggerState
   (&rest __triggerState)
   (if (keywordp (car __triggerState))
       (send* _triggerState __triggerState)
     (progn
       (if __triggerState (setq _triggerState (car __triggerState)))
       _triggerState)))
  (:packetData
   (&rest __packetData)
   (if (keywordp (car __packetData))
       (send* _packetData __packetData)
     (progn
       (if __packetData (setq _packetData (car __packetData)))
       _packetData)))
  (:packetSizes
   (&rest __packetSizes)
   (if (keywordp (car __packetSizes))
       (send* _packetSizes __packetSizes)
     (progn
       (if __packetSizes (setq _packetSizes (car __packetSizes)))
       _packetSizes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _triggerState
    (send _triggerState :serialization-length)
    ;; std_msgs/Float32MultiArray _packetData
    (send _packetData :serialization-length)
    ;; std_msgs/Int32MultiArray _packetSizes
    (send _packetSizes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _triggerState
       (send _triggerState :serialize s)
     ;; std_msgs/Float32MultiArray _packetData
       (send _packetData :serialize s)
     ;; std_msgs/Int32MultiArray _packetSizes
       (send _packetSizes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _triggerState
     (send _triggerState :deserialize buf ptr-) (incf ptr- (send _triggerState :serialization-length))
   ;; std_msgs/Float32MultiArray _packetData
     (send _packetData :deserialize buf ptr-) (incf ptr- (send _packetData :serialization-length))
   ;; std_msgs/Int32MultiArray _packetSizes
     (send _packetSizes :deserialize buf ptr-) (incf ptr- (send _packetSizes :serialization-length))
   ;;
   self)
  )

(setf (get vrep_common::VisionSensorData :md5sum-) "f2ef61369c5dd779545031da241014b8")
(setf (get vrep_common::VisionSensorData :datatype-) "vrep_common/VisionSensorData")
(setf (get vrep_common::VisionSensorData :definition-)
      "std_msgs/Int32 triggerState
std_msgs/Float32MultiArray packetData
std_msgs/Int32MultiArray packetSizes

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


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
MSG: std_msgs/Int32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int32[]           data          # array of data


")



(provide :vrep_common/VisionSensorData "f2ef61369c5dd779545031da241014b8")


