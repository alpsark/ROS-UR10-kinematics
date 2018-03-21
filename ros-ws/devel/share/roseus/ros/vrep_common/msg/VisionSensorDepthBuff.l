;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::VisionSensorDepthBuff)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'VisionSensorDepthBuff (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::VISIONSENSORDEPTHBUFF")
  (make-package "VREP_COMMON::VISIONSENSORDEPTHBUFF"))

(in-package "ROS")
;;//! \htmlinclude VisionSensorDepthBuff.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::VisionSensorDepthBuff
  :super ros::object
  :slots (_x _y _data ))

(defmethod vrep_common::VisionSensorDepthBuff
  (:init
   (&key
    ((:x __x) (instance std_msgs::Int32 :init))
    ((:y __y) (instance std_msgs::Int32 :init))
    ((:data __data) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _data __data)
   self)
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _x
    (send _x :serialization-length)
    ;; std_msgs/Int32 _y
    (send _y :serialization-length)
    ;; std_msgs/Float32MultiArray _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _x
       (send _x :serialize s)
     ;; std_msgs/Int32 _y
       (send _y :serialize s)
     ;; std_msgs/Float32MultiArray _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Int32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; std_msgs/Float32MultiArray _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get vrep_common::VisionSensorDepthBuff :md5sum-) "fe6c62e891cf9e2aef9b4742b6ae660f")
(setf (get vrep_common::VisionSensorDepthBuff :datatype-) "vrep_common/VisionSensorDepthBuff")
(setf (get vrep_common::VisionSensorDepthBuff :definition-)
      "std_msgs/Int32 x
std_msgs/Int32 y
std_msgs/Float32MultiArray data
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
")



(provide :vrep_common/VisionSensorDepthBuff "fe6c62e891cf9e2aef9b4742b6ae660f")


