;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetJointState)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetJointState (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETJOINTSTATE")
  (make-package "VREP_COMMON::SIMROSGETJOINTSTATE"))
(unless (find-package "VREP_COMMON::SIMROSGETJOINTSTATEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETJOINTSTATEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETJOINTSTATERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETJOINTSTATERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass vrep_common::simRosGetJointStateRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetJointStateRequest
  (:init
   (&key
    ((:handle __handle) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetJointStateResponse
  :super ros::object
  :slots (_result _state ))

(defmethod vrep_common::simRosGetJointStateResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:state __state) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _state __state)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; sensor_msgs/JointState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; sensor_msgs/JointState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/JointState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosGetJointState
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetJointState :md5sum-) "e3e87944e85555d62f7a59817ea5aee6")
(setf (get vrep_common::simRosGetJointState :datatype-) "vrep_common/simRosGetJointState")
(setf (get vrep_common::simRosGetJointState :request) vrep_common::simRosGetJointStateRequest)
(setf (get vrep_common::simRosGetJointState :response) vrep_common::simRosGetJointStateResponse)

(defmethod vrep_common::simRosGetJointStateRequest
  (:response () (instance vrep_common::simRosGetJointStateResponse :init)))

(setf (get vrep_common::simRosGetJointStateRequest :md5sum-) "e3e87944e85555d62f7a59817ea5aee6")
(setf (get vrep_common::simRosGetJointStateRequest :datatype-) "vrep_common/simRosGetJointStateRequest")
(setf (get vrep_common::simRosGetJointStateRequest :definition-)
      "



int32 handle
---
int32 result
sensor_msgs/JointState state


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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

(setf (get vrep_common::simRosGetJointStateResponse :md5sum-) "e3e87944e85555d62f7a59817ea5aee6")
(setf (get vrep_common::simRosGetJointStateResponse :datatype-) "vrep_common/simRosGetJointStateResponse")
(setf (get vrep_common::simRosGetJointStateResponse :definition-)
      "



int32 handle
---
int32 result
sensor_msgs/JointState state


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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



(provide :vrep_common/simRosGetJointState "e3e87944e85555d62f7a59817ea5aee6")


