;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectIntParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectIntParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTINTPARAMETER")
  (make-package "VREP_COMMON::SIMROSGETOBJECTINTPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTINTPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTINTPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTINTPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTINTPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectIntParameterRequest
  :super ros::object
  :slots (_handle _parameterID ))

(defmethod vrep_common::simRosGetObjectIntParameterRequest
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

(defclass vrep_common::simRosGetObjectIntParameterResponse
  :super ros::object
  :slots (_result _parameterValue ))

(defmethod vrep_common::simRosGetObjectIntParameterResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:parameterValue __parameterValue) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _parameterValue (round __parameterValue))
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
    ;; int32 _parameterValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32 _parameterValue
       (write-long _parameterValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectIntParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectIntParameter :md5sum-) "8372aeda509849308ae25567cba4e30f")
(setf (get vrep_common::simRosGetObjectIntParameter :datatype-) "vrep_common/simRosGetObjectIntParameter")
(setf (get vrep_common::simRosGetObjectIntParameter :request) vrep_common::simRosGetObjectIntParameterRequest)
(setf (get vrep_common::simRosGetObjectIntParameter :response) vrep_common::simRosGetObjectIntParameterResponse)

(defmethod vrep_common::simRosGetObjectIntParameterRequest
  (:response () (instance vrep_common::simRosGetObjectIntParameterResponse :init)))

(setf (get vrep_common::simRosGetObjectIntParameterRequest :md5sum-) "8372aeda509849308ae25567cba4e30f")
(setf (get vrep_common::simRosGetObjectIntParameterRequest :datatype-) "vrep_common/simRosGetObjectIntParameterRequest")
(setf (get vrep_common::simRosGetObjectIntParameterRequest :definition-)
      "



int32 handle
int32 parameterID
---
int32 result
int32 parameterValue

")

(setf (get vrep_common::simRosGetObjectIntParameterResponse :md5sum-) "8372aeda509849308ae25567cba4e30f")
(setf (get vrep_common::simRosGetObjectIntParameterResponse :datatype-) "vrep_common/simRosGetObjectIntParameterResponse")
(setf (get vrep_common::simRosGetObjectIntParameterResponse :definition-)
      "



int32 handle
int32 parameterID
---
int32 result
int32 parameterValue

")



(provide :vrep_common/simRosGetObjectIntParameter "8372aeda509849308ae25567cba4e30f")


