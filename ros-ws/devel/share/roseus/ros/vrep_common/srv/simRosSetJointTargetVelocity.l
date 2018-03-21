;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetJointTargetVelocity)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetJointTargetVelocity (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTTARGETVELOCITY")
  (make-package "VREP_COMMON::SIMROSSETJOINTTARGETVELOCITY"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTTARGETVELOCITYREQUEST")
  (make-package "VREP_COMMON::SIMROSSETJOINTTARGETVELOCITYREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTTARGETVELOCITYRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETJOINTTARGETVELOCITYRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetJointTargetVelocityRequest
  :super ros::object
  :slots (_handle _targetVelocity ))

(defmethod vrep_common::simRosSetJointTargetVelocityRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:targetVelocity __targetVelocity) 0.0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _targetVelocity (float __targetVelocity))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:targetVelocity
   (&optional __targetVelocity)
   (if __targetVelocity (setq _targetVelocity __targetVelocity)) _targetVelocity)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; float64 _targetVelocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; float64 _targetVelocity
       (sys::poke _targetVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _targetVelocity
     (setq _targetVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass vrep_common::simRosSetJointTargetVelocityResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetJointTargetVelocityResponse
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

(defclass vrep_common::simRosSetJointTargetVelocity
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetJointTargetVelocity :md5sum-) "4f4a9bd7fbc203cc2e92559ecddbacea")
(setf (get vrep_common::simRosSetJointTargetVelocity :datatype-) "vrep_common/simRosSetJointTargetVelocity")
(setf (get vrep_common::simRosSetJointTargetVelocity :request) vrep_common::simRosSetJointTargetVelocityRequest)
(setf (get vrep_common::simRosSetJointTargetVelocity :response) vrep_common::simRosSetJointTargetVelocityResponse)

(defmethod vrep_common::simRosSetJointTargetVelocityRequest
  (:response () (instance vrep_common::simRosSetJointTargetVelocityResponse :init)))

(setf (get vrep_common::simRosSetJointTargetVelocityRequest :md5sum-) "4f4a9bd7fbc203cc2e92559ecddbacea")
(setf (get vrep_common::simRosSetJointTargetVelocityRequest :datatype-) "vrep_common/simRosSetJointTargetVelocityRequest")
(setf (get vrep_common::simRosSetJointTargetVelocityRequest :definition-)
      "



int32 handle
float64 targetVelocity
---
int32 result

")

(setf (get vrep_common::simRosSetJointTargetVelocityResponse :md5sum-) "4f4a9bd7fbc203cc2e92559ecddbacea")
(setf (get vrep_common::simRosSetJointTargetVelocityResponse :datatype-) "vrep_common/simRosSetJointTargetVelocityResponse")
(setf (get vrep_common::simRosSetJointTargetVelocityResponse :definition-)
      "



int32 handle
float64 targetVelocity
---
int32 result

")



(provide :vrep_common/simRosSetJointTargetVelocity "4f4a9bd7fbc203cc2e92559ecddbacea")


