;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetJointForce)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetJointForce (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTFORCE")
  (make-package "VREP_COMMON::SIMROSSETJOINTFORCE"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTFORCEREQUEST")
  (make-package "VREP_COMMON::SIMROSSETJOINTFORCEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTFORCERESPONSE")
  (make-package "VREP_COMMON::SIMROSSETJOINTFORCERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetJointForceRequest
  :super ros::object
  :slots (_handle _forceOrTorque ))

(defmethod vrep_common::simRosSetJointForceRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:forceOrTorque __forceOrTorque) 0.0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _forceOrTorque (float __forceOrTorque))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:forceOrTorque
   (&optional __forceOrTorque)
   (if __forceOrTorque (setq _forceOrTorque __forceOrTorque)) _forceOrTorque)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; float64 _forceOrTorque
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; float64 _forceOrTorque
       (sys::poke _forceOrTorque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _forceOrTorque
     (setq _forceOrTorque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass vrep_common::simRosSetJointForceResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetJointForceResponse
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

(defclass vrep_common::simRosSetJointForce
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetJointForce :md5sum-) "fbe07bacf4f20c3b14d370f9a1bdae4e")
(setf (get vrep_common::simRosSetJointForce :datatype-) "vrep_common/simRosSetJointForce")
(setf (get vrep_common::simRosSetJointForce :request) vrep_common::simRosSetJointForceRequest)
(setf (get vrep_common::simRosSetJointForce :response) vrep_common::simRosSetJointForceResponse)

(defmethod vrep_common::simRosSetJointForceRequest
  (:response () (instance vrep_common::simRosSetJointForceResponse :init)))

(setf (get vrep_common::simRosSetJointForceRequest :md5sum-) "fbe07bacf4f20c3b14d370f9a1bdae4e")
(setf (get vrep_common::simRosSetJointForceRequest :datatype-) "vrep_common/simRosSetJointForceRequest")
(setf (get vrep_common::simRosSetJointForceRequest :definition-)
      "



int32 handle
float64 forceOrTorque
---
int32 result

")

(setf (get vrep_common::simRosSetJointForceResponse :md5sum-) "fbe07bacf4f20c3b14d370f9a1bdae4e")
(setf (get vrep_common::simRosSetJointForceResponse :datatype-) "vrep_common/simRosSetJointForceResponse")
(setf (get vrep_common::simRosSetJointForceResponse :definition-)
      "



int32 handle
float64 forceOrTorque
---
int32 result

")



(provide :vrep_common/simRosSetJointForce "fbe07bacf4f20c3b14d370f9a1bdae4e")


