;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetInfo)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetInfo (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETINFO")
  (make-package "VREP_COMMON::SIMROSGETINFO"))
(unless (find-package "VREP_COMMON::SIMROSGETINFOREQUEST")
  (make-package "VREP_COMMON::SIMROSGETINFOREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETINFORESPONSE")
  (make-package "VREP_COMMON::SIMROSGETINFORESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::simRosGetInfoRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosGetInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass vrep_common::simRosGetInfoResponse
  :super ros::object
  :slots (_headerInfo _simulatorState _simulationTime _timeStep ))

(defmethod vrep_common::simRosGetInfoResponse
  (:init
   (&key
    ((:headerInfo __headerInfo) (instance std_msgs::Header :init))
    ((:simulatorState __simulatorState) 0)
    ((:simulationTime __simulationTime) 0.0)
    ((:timeStep __timeStep) 0.0)
    )
   (send-super :init)
   (setq _headerInfo __headerInfo)
   (setq _simulatorState (round __simulatorState))
   (setq _simulationTime (float __simulationTime))
   (setq _timeStep (float __timeStep))
   self)
  (:headerInfo
   (&rest __headerInfo)
   (if (keywordp (car __headerInfo))
       (send* _headerInfo __headerInfo)
     (progn
       (if __headerInfo (setq _headerInfo (car __headerInfo)))
       _headerInfo)))
  (:simulatorState
   (&optional __simulatorState)
   (if __simulatorState (setq _simulatorState __simulatorState)) _simulatorState)
  (:simulationTime
   (&optional __simulationTime)
   (if __simulationTime (setq _simulationTime __simulationTime)) _simulationTime)
  (:timeStep
   (&optional __timeStep)
   (if __timeStep (setq _timeStep __timeStep)) _timeStep)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _headerInfo
    (send _headerInfo :serialization-length)
    ;; int32 _simulatorState
    4
    ;; float32 _simulationTime
    4
    ;; float32 _timeStep
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _headerInfo
       (send _headerInfo :serialize s)
     ;; int32 _simulatorState
       (write-long _simulatorState s)
     ;; float32 _simulationTime
       (sys::poke _simulationTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _timeStep
       (sys::poke _timeStep (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _headerInfo
     (send _headerInfo :deserialize buf ptr-) (incf ptr- (send _headerInfo :serialization-length))
   ;; int32 _simulatorState
     (setq _simulatorState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _simulationTime
     (setq _simulationTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _timeStep
     (setq _timeStep (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetInfo
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetInfo :md5sum-) "2ab24cc264f8f17af7e013147c57dbc0")
(setf (get vrep_common::simRosGetInfo :datatype-) "vrep_common/simRosGetInfo")
(setf (get vrep_common::simRosGetInfo :request) vrep_common::simRosGetInfoRequest)
(setf (get vrep_common::simRosGetInfo :response) vrep_common::simRosGetInfoResponse)

(defmethod vrep_common::simRosGetInfoRequest
  (:response () (instance vrep_common::simRosGetInfoResponse :init)))

(setf (get vrep_common::simRosGetInfoRequest :md5sum-) "2ab24cc264f8f17af7e013147c57dbc0")
(setf (get vrep_common::simRosGetInfoRequest :datatype-) "vrep_common/simRosGetInfoRequest")
(setf (get vrep_common::simRosGetInfoRequest :definition-)
      "




---
Header headerInfo
int32 simulatorState
float32 simulationTime
float32 timeStep


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
")

(setf (get vrep_common::simRosGetInfoResponse :md5sum-) "2ab24cc264f8f17af7e013147c57dbc0")
(setf (get vrep_common::simRosGetInfoResponse :datatype-) "vrep_common/simRosGetInfoResponse")
(setf (get vrep_common::simRosGetInfoResponse :definition-)
      "




---
Header headerInfo
int32 simulatorState
float32 simulationTime
float32 timeStep


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
")



(provide :vrep_common/simRosGetInfo "2ab24cc264f8f17af7e013147c57dbc0")


