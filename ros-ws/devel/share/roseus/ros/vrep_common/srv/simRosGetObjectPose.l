;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectPose)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectPose (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTPOSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTPOSE"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTPOSEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTPOSEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTPOSERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vrep_common::simRosGetObjectPoseRequest
  :super ros::object
  :slots (_handle _relativeToObjectHandle ))

(defmethod vrep_common::simRosGetObjectPoseRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:relativeToObjectHandle __relativeToObjectHandle) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _relativeToObjectHandle (round __relativeToObjectHandle))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:relativeToObjectHandle
   (&optional __relativeToObjectHandle)
   (if __relativeToObjectHandle (setq _relativeToObjectHandle __relativeToObjectHandle)) _relativeToObjectHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _relativeToObjectHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _relativeToObjectHandle
       (write-long _relativeToObjectHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _relativeToObjectHandle
     (setq _relativeToObjectHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectPoseResponse
  :super ros::object
  :slots (_result _pose ))

(defmethod vrep_common::simRosGetObjectPoseResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _pose __pose)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectPose
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectPose :md5sum-) "dcc153fe8e4754d793983e414eb1b664")
(setf (get vrep_common::simRosGetObjectPose :datatype-) "vrep_common/simRosGetObjectPose")
(setf (get vrep_common::simRosGetObjectPose :request) vrep_common::simRosGetObjectPoseRequest)
(setf (get vrep_common::simRosGetObjectPose :response) vrep_common::simRosGetObjectPoseResponse)

(defmethod vrep_common::simRosGetObjectPoseRequest
  (:response () (instance vrep_common::simRosGetObjectPoseResponse :init)))

(setf (get vrep_common::simRosGetObjectPoseRequest :md5sum-) "dcc153fe8e4754d793983e414eb1b664")
(setf (get vrep_common::simRosGetObjectPoseRequest :datatype-) "vrep_common/simRosGetObjectPoseRequest")
(setf (get vrep_common::simRosGetObjectPoseRequest :definition-)
      "



int32 handle
int32 relativeToObjectHandle
---
int32 result
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get vrep_common::simRosGetObjectPoseResponse :md5sum-) "dcc153fe8e4754d793983e414eb1b664")
(setf (get vrep_common::simRosGetObjectPoseResponse :datatype-) "vrep_common/simRosGetObjectPoseResponse")
(setf (get vrep_common::simRosGetObjectPoseResponse :definition-)
      "



int32 handle
int32 relativeToObjectHandle
---
int32 result
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :vrep_common/simRosGetObjectPose "dcc153fe8e4754d793983e414eb1b664")


