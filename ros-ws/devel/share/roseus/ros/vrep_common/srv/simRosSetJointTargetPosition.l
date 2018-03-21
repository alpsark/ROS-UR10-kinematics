;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetJointTargetPosition)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetJointTargetPosition (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTTARGETPOSITION")
  (make-package "VREP_COMMON::SIMROSSETJOINTTARGETPOSITION"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTTARGETPOSITIONREQUEST")
  (make-package "VREP_COMMON::SIMROSSETJOINTTARGETPOSITIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTTARGETPOSITIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETJOINTTARGETPOSITIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetJointTargetPositionRequest
  :super ros::object
  :slots (_handle _targetPosition ))

(defmethod vrep_common::simRosSetJointTargetPositionRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:targetPosition __targetPosition) 0.0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _targetPosition (float __targetPosition))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:targetPosition
   (&optional __targetPosition)
   (if __targetPosition (setq _targetPosition __targetPosition)) _targetPosition)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; float64 _targetPosition
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; float64 _targetPosition
       (sys::poke _targetPosition (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _targetPosition
     (setq _targetPosition (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass vrep_common::simRosSetJointTargetPositionResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetJointTargetPositionResponse
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

(defclass vrep_common::simRosSetJointTargetPosition
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetJointTargetPosition :md5sum-) "b23bfbd3cc670ebc2b50d027597762b2")
(setf (get vrep_common::simRosSetJointTargetPosition :datatype-) "vrep_common/simRosSetJointTargetPosition")
(setf (get vrep_common::simRosSetJointTargetPosition :request) vrep_common::simRosSetJointTargetPositionRequest)
(setf (get vrep_common::simRosSetJointTargetPosition :response) vrep_common::simRosSetJointTargetPositionResponse)

(defmethod vrep_common::simRosSetJointTargetPositionRequest
  (:response () (instance vrep_common::simRosSetJointTargetPositionResponse :init)))

(setf (get vrep_common::simRosSetJointTargetPositionRequest :md5sum-) "b23bfbd3cc670ebc2b50d027597762b2")
(setf (get vrep_common::simRosSetJointTargetPositionRequest :datatype-) "vrep_common/simRosSetJointTargetPositionRequest")
(setf (get vrep_common::simRosSetJointTargetPositionRequest :definition-)
      "



int32 handle
float64 targetPosition
---
int32 result

")

(setf (get vrep_common::simRosSetJointTargetPositionResponse :md5sum-) "b23bfbd3cc670ebc2b50d027597762b2")
(setf (get vrep_common::simRosSetJointTargetPositionResponse :datatype-) "vrep_common/simRosSetJointTargetPositionResponse")
(setf (get vrep_common::simRosSetJointTargetPositionResponse :definition-)
      "



int32 handle
float64 targetPosition
---
int32 result

")



(provide :vrep_common/simRosSetJointTargetPosition "b23bfbd3cc670ebc2b50d027597762b2")


