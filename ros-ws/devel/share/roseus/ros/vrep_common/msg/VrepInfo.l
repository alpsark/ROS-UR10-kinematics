;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::VrepInfo)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'VrepInfo (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::VREPINFO")
  (make-package "VREP_COMMON::VREPINFO"))

(in-package "ROS")
;;//! \htmlinclude VrepInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::VrepInfo
  :super ros::object
  :slots (_headerInfo _simulatorState _simulationTime _timeStep ))

(defmethod vrep_common::VrepInfo
  (:init
   (&key
    ((:headerInfo __headerInfo) (instance std_msgs::Header :init))
    ((:simulatorState __simulatorState) (instance std_msgs::Int32 :init))
    ((:simulationTime __simulationTime) (instance std_msgs::Float32 :init))
    ((:timeStep __timeStep) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _headerInfo __headerInfo)
   (setq _simulatorState __simulatorState)
   (setq _simulationTime __simulationTime)
   (setq _timeStep __timeStep)
   self)
  (:headerInfo
   (&rest __headerInfo)
   (if (keywordp (car __headerInfo))
       (send* _headerInfo __headerInfo)
     (progn
       (if __headerInfo (setq _headerInfo (car __headerInfo)))
       _headerInfo)))
  (:simulatorState
   (&rest __simulatorState)
   (if (keywordp (car __simulatorState))
       (send* _simulatorState __simulatorState)
     (progn
       (if __simulatorState (setq _simulatorState (car __simulatorState)))
       _simulatorState)))
  (:simulationTime
   (&rest __simulationTime)
   (if (keywordp (car __simulationTime))
       (send* _simulationTime __simulationTime)
     (progn
       (if __simulationTime (setq _simulationTime (car __simulationTime)))
       _simulationTime)))
  (:timeStep
   (&rest __timeStep)
   (if (keywordp (car __timeStep))
       (send* _timeStep __timeStep)
     (progn
       (if __timeStep (setq _timeStep (car __timeStep)))
       _timeStep)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _headerInfo
    (send _headerInfo :serialization-length)
    ;; std_msgs/Int32 _simulatorState
    (send _simulatorState :serialization-length)
    ;; std_msgs/Float32 _simulationTime
    (send _simulationTime :serialization-length)
    ;; std_msgs/Float32 _timeStep
    (send _timeStep :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _headerInfo
       (send _headerInfo :serialize s)
     ;; std_msgs/Int32 _simulatorState
       (send _simulatorState :serialize s)
     ;; std_msgs/Float32 _simulationTime
       (send _simulationTime :serialize s)
     ;; std_msgs/Float32 _timeStep
       (send _timeStep :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _headerInfo
     (send _headerInfo :deserialize buf ptr-) (incf ptr- (send _headerInfo :serialization-length))
   ;; std_msgs/Int32 _simulatorState
     (send _simulatorState :deserialize buf ptr-) (incf ptr- (send _simulatorState :serialization-length))
   ;; std_msgs/Float32 _simulationTime
     (send _simulationTime :deserialize buf ptr-) (incf ptr- (send _simulationTime :serialization-length))
   ;; std_msgs/Float32 _timeStep
     (send _timeStep :deserialize buf ptr-) (incf ptr- (send _timeStep :serialization-length))
   ;;
   self)
  )

(setf (get vrep_common::VrepInfo :md5sum-) "66334ab2212d3c89226a89b7a37b2f95")
(setf (get vrep_common::VrepInfo :datatype-) "vrep_common/VrepInfo")
(setf (get vrep_common::VrepInfo :definition-)
      "std_msgs/Header headerInfo
std_msgs/Int32 simulatorState
std_msgs/Float32 simulationTime
std_msgs/Float32 timeStep

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :vrep_common/VrepInfo "66334ab2212d3c89226a89b7a37b2f95")


