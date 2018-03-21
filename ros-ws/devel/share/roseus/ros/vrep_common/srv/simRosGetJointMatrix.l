;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetJointMatrix)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetJointMatrix (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETJOINTMATRIX")
  (make-package "VREP_COMMON::SIMROSGETJOINTMATRIX"))
(unless (find-package "VREP_COMMON::SIMROSGETJOINTMATRIXREQUEST")
  (make-package "VREP_COMMON::SIMROSGETJOINTMATRIXREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETJOINTMATRIXRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETJOINTMATRIXRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vrep_common::simRosGetJointMatrixRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetJointMatrixRequest
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

(defclass vrep_common::simRosGetJointMatrixResponse
  :super ros::object
  :slots (_result _transform ))

(defmethod vrep_common::simRosGetJointMatrixResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:transform __transform) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _transform __transform)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; geometry_msgs/TransformStamped _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; geometry_msgs/TransformStamped _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/TransformStamped _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosGetJointMatrix
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetJointMatrix :md5sum-) "a4cf19b442f7dd0e7c71aebcc49e75d2")
(setf (get vrep_common::simRosGetJointMatrix :datatype-) "vrep_common/simRosGetJointMatrix")
(setf (get vrep_common::simRosGetJointMatrix :request) vrep_common::simRosGetJointMatrixRequest)
(setf (get vrep_common::simRosGetJointMatrix :response) vrep_common::simRosGetJointMatrixResponse)

(defmethod vrep_common::simRosGetJointMatrixRequest
  (:response () (instance vrep_common::simRosGetJointMatrixResponse :init)))

(setf (get vrep_common::simRosGetJointMatrixRequest :md5sum-) "a4cf19b442f7dd0e7c71aebcc49e75d2")
(setf (get vrep_common::simRosGetJointMatrixRequest :datatype-) "vrep_common/simRosGetJointMatrixRequest")
(setf (get vrep_common::simRosGetJointMatrixRequest :definition-)
      "



int32 handle
---
int32 result
geometry_msgs/TransformStamped transform


================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

(setf (get vrep_common::simRosGetJointMatrixResponse :md5sum-) "a4cf19b442f7dd0e7c71aebcc49e75d2")
(setf (get vrep_common::simRosGetJointMatrixResponse :datatype-) "vrep_common/simRosGetJointMatrixResponse")
(setf (get vrep_common::simRosGetJointMatrixResponse :definition-)
      "



int32 handle
---
int32 result
geometry_msgs/TransformStamped transform


================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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



(provide :vrep_common/simRosGetJointMatrix "a4cf19b442f7dd0e7c71aebcc49e75d2")


