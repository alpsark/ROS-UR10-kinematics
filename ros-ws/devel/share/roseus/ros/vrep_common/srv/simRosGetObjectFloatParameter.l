;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectFloatParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectFloatParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTFLOATPARAMETER")
  (make-package "VREP_COMMON::SIMROSGETOBJECTFLOATPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTFLOATPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTFLOATPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTFLOATPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTFLOATPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectFloatParameterRequest
  :super ros::object
  :slots (_handle _parameterID ))

(defmethod vrep_common::simRosGetObjectFloatParameterRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:parameterID __parameterID) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _parameterID (round __parameterID))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:parameterID
   (&optional __parameterID)
   (if __parameterID (setq _parameterID __parameterID)) _parameterID)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _parameterID
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _parameterID
       (write-long _parameterID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parameterID
     (setq _parameterID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectFloatParameterResponse
  :super ros::object
  :slots (_result _parameterValue ))

(defmethod vrep_common::simRosGetObjectFloatParameterResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:parameterValue __parameterValue) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _parameterValue (float __parameterValue))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:parameterValue
   (&optional __parameterValue)
   (if __parameterValue (setq _parameterValue __parameterValue)) _parameterValue)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _parameterValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _parameterValue
       (sys::poke _parameterValue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectFloatParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectFloatParameter :md5sum-) "edd72a73282db218f389ebdcac7cbdd8")
(setf (get vrep_common::simRosGetObjectFloatParameter :datatype-) "vrep_common/simRosGetObjectFloatParameter")
(setf (get vrep_common::simRosGetObjectFloatParameter :request) vrep_common::simRosGetObjectFloatParameterRequest)
(setf (get vrep_common::simRosGetObjectFloatParameter :response) vrep_common::simRosGetObjectFloatParameterResponse)

(defmethod vrep_common::simRosGetObjectFloatParameterRequest
  (:response () (instance vrep_common::simRosGetObjectFloatParameterResponse :init)))

(setf (get vrep_common::simRosGetObjectFloatParameterRequest :md5sum-) "edd72a73282db218f389ebdcac7cbdd8")
(setf (get vrep_common::simRosGetObjectFloatParameterRequest :datatype-) "vrep_common/simRosGetObjectFloatParameterRequest")
(setf (get vrep_common::simRosGetObjectFloatParameterRequest :definition-)
      "



int32 handle
int32 parameterID
---
int32 result
float32 parameterValue

")

(setf (get vrep_common::simRosGetObjectFloatParameterResponse :md5sum-) "edd72a73282db218f389ebdcac7cbdd8")
(setf (get vrep_common::simRosGetObjectFloatParameterResponse :datatype-) "vrep_common/simRosGetObjectFloatParameterResponse")
(setf (get vrep_common::simRosGetObjectFloatParameterResponse :definition-)
      "



int32 handle
int32 parameterID
---
int32 result
float32 parameterValue

")



(provide :vrep_common/simRosGetObjectFloatParameter "edd72a73282db218f389ebdcac7cbdd8")


