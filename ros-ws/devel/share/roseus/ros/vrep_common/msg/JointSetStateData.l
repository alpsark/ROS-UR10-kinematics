;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::JointSetStateData)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'JointSetStateData (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::JOINTSETSTATEDATA")
  (make-package "VREP_COMMON::JOINTSETSTATEDATA"))

(in-package "ROS")
;;//! \htmlinclude JointSetStateData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::JointSetStateData
  :super ros::object
  :slots (_handles _setModes _values ))

(defmethod vrep_common::JointSetStateData
  (:init
   (&key
    ((:handles __handles) (instance std_msgs::Int32MultiArray :init))
    ((:setModes __setModes) (instance std_msgs::UInt8MultiArray :init))
    ((:values __values) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _handles __handles)
   (setq _setModes __setModes)
   (setq _values __values)
   self)
  (:handles
   (&rest __handles)
   (if (keywordp (car __handles))
       (send* _handles __handles)
     (progn
       (if __handles (setq _handles (car __handles)))
       _handles)))
  (:setModes
   (&rest __setModes)
   (if (keywordp (car __setModes))
       (send* _setModes __setModes)
     (progn
       (if __setModes (setq _setModes (car __setModes)))
       _setModes)))
  (:values
   (&rest __values)
   (if (keywordp (car __values))
       (send* _values __values)
     (progn
       (if __values (setq _values (car __values)))
       _values)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32MultiArray _handles
    (send _handles :serialization-length)
    ;; std_msgs/UInt8MultiArray _setModes
    (send _setModes :serialization-length)
    ;; std_msgs/Float32MultiArray _values
    (send _values :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32MultiArray _handles
       (send _handles :serialize s)
     ;; std_msgs/UInt8MultiArray _setModes
       (send _setModes :serialize s)
     ;; std_msgs/Float32MultiArray _values
       (send _values :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32MultiArray _handles
     (send _handles :deserialize buf ptr-) (incf ptr- (send _handles :serialization-length))
   ;; std_msgs/UInt8MultiArray _setModes
     (send _setModes :deserialize buf ptr-) (incf ptr- (send _setModes :serialization-length))
   ;; std_msgs/Float32MultiArray _values
     (send _values :deserialize buf ptr-) (incf ptr- (send _values :serialization-length))
   ;;
   self)
  )

(setf (get vrep_common::JointSetStateData :md5sum-) "bd1161cd602435f02e226bb73e4acdb9")
(setf (get vrep_common::JointSetStateData :datatype-) "vrep_common/JointSetStateData")
(setf (get vrep_common::JointSetStateData :definition-)
      "std_msgs/Int32MultiArray handles
std_msgs/UInt8MultiArray setModes
std_msgs/Float32MultiArray values

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
MSG: std_msgs/UInt8MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
uint8[]           data          # array of data


================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


")



(provide :vrep_common/JointSetStateData "bd1161cd602435f02e226bb73e4acdb9")


