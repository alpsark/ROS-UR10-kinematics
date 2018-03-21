;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetObjectPose)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetObjectPose (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPOSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPOSE"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPOSEREQUEST")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPOSEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPOSERESPONSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass vrep_common::simRosSetObjectPoseRequest
  :super ros::object
  :slots (_handle _relativeToObjectHandle _pose ))

(defmethod vrep_common::simRosSetObjectPoseRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:relativeToObjectHandle __relativeToObjectHandle) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _relativeToObjectHandle (round __relativeToObjectHandle))
   (setq _pose __pose)
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:relativeToObjectHandle
   (&optional __relativeToObjectHandle)
   (if __relativeToObjectHandle (setq _relativeToObjectHandle __relativeToObjectHandle)) _relativeToObjectHandle)
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
    ;; int32 _handle
    4
    ;; int32 _relativeToObjectHandle
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _relativeToObjectHandle
       (write-long _relativeToObjectHandle s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _relativeToObjectHandle
     (setq _relativeToObjectHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetObjectPoseResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectPose
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetObjectPose :md5sum-) "61b308bf14be660ce4de1c3374dc2f73")
(setf (get vrep_common::simRosSetObjectPose :datatype-) "vrep_common/simRosSetObjectPose")
(setf (get vrep_common::simRosSetObjectPose :request) vrep_common::simRosSetObjectPoseRequest)
(setf (get vrep_common::simRosSetObjectPose :response) vrep_common::simRosSetObjectPoseResponse)

(defmethod vrep_common::simRosSetObjectPoseRequest
  (:response () (instance vrep_common::simRosSetObjectPoseResponse :init)))

(setf (get vrep_common::simRosSetObjectPoseRequest :md5sum-) "61b308bf14be660ce4de1c3374dc2f73")
(setf (get vrep_common::simRosSetObjectPoseRequest :datatype-) "vrep_common/simRosSetObjectPoseRequest")
(setf (get vrep_common::simRosSetObjectPoseRequest :definition-)
      "



int32 handle
int32 relativeToObjectHandle
geometry_msgs/Pose pose

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
---
int32 result

")

(setf (get vrep_common::simRosSetObjectPoseResponse :md5sum-) "61b308bf14be660ce4de1c3374dc2f73")
(setf (get vrep_common::simRosSetObjectPoseResponse :datatype-) "vrep_common/simRosSetObjectPoseResponse")
(setf (get vrep_common::simRosSetObjectPoseResponse :definition-)
      "



int32 handle
int32 relativeToObjectHandle
geometry_msgs/Pose pose

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
---
int32 result

")



(provide :vrep_common/simRosSetObjectPose "61b308bf14be660ce4de1c3374dc2f73")


