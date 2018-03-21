;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetObjectQuaternion)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetObjectQuaternion (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTQUATERNION")
  (make-package "VREP_COMMON::SIMROSSETOBJECTQUATERNION"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTQUATERNIONREQUEST")
  (make-package "VREP_COMMON::SIMROSSETOBJECTQUATERNIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTQUATERNIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTQUATERNIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass vrep_common::simRosSetObjectQuaternionRequest
  :super ros::object
  :slots (_handle _relativeToObjectHandle _quaternion ))

(defmethod vrep_common::simRosSetObjectQuaternionRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:relativeToObjectHandle __relativeToObjectHandle) 0)
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _relativeToObjectHandle (round __relativeToObjectHandle))
   (setq _quaternion __quaternion)
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:relativeToObjectHandle
   (&optional __relativeToObjectHandle)
   (if __relativeToObjectHandle (setq _relativeToObjectHandle __relativeToObjectHandle)) _relativeToObjectHandle)
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _relativeToObjectHandle
    4
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _relativeToObjectHandle
       (write-long _relativeToObjectHandle s)
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _relativeToObjectHandle
     (setq _relativeToObjectHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectQuaternionResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetObjectQuaternionResponse
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

(defclass vrep_common::simRosSetObjectQuaternion
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetObjectQuaternion :md5sum-) "f5fe7b4813e58c37e0cb1c1585da009e")
(setf (get vrep_common::simRosSetObjectQuaternion :datatype-) "vrep_common/simRosSetObjectQuaternion")
(setf (get vrep_common::simRosSetObjectQuaternion :request) vrep_common::simRosSetObjectQuaternionRequest)
(setf (get vrep_common::simRosSetObjectQuaternion :response) vrep_common::simRosSetObjectQuaternionResponse)

(defmethod vrep_common::simRosSetObjectQuaternionRequest
  (:response () (instance vrep_common::simRosSetObjectQuaternionResponse :init)))

(setf (get vrep_common::simRosSetObjectQuaternionRequest :md5sum-) "f5fe7b4813e58c37e0cb1c1585da009e")
(setf (get vrep_common::simRosSetObjectQuaternionRequest :datatype-) "vrep_common/simRosSetObjectQuaternionRequest")
(setf (get vrep_common::simRosSetObjectQuaternionRequest :definition-)
      "



int32 handle
int32 relativeToObjectHandle
geometry_msgs/Quaternion quaternion

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

(setf (get vrep_common::simRosSetObjectQuaternionResponse :md5sum-) "f5fe7b4813e58c37e0cb1c1585da009e")
(setf (get vrep_common::simRosSetObjectQuaternionResponse :datatype-) "vrep_common/simRosSetObjectQuaternionResponse")
(setf (get vrep_common::simRosSetObjectQuaternionResponse :definition-)
      "



int32 handle
int32 relativeToObjectHandle
geometry_msgs/Quaternion quaternion

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



(provide :vrep_common/simRosSetObjectQuaternion "f5fe7b4813e58c37e0cb1c1585da009e")


