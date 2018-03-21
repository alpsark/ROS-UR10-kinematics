;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetBooleanParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetBooleanParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETBOOLEANPARAMETER")
  (make-package "VREP_COMMON::SIMROSSETBOOLEANPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSSETBOOLEANPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSSETBOOLEANPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETBOOLEANPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETBOOLEANPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetBooleanParameterRequest
  :super ros::object
  :slots (_parameter _parameterValue ))

(defmethod vrep_common::simRosSetBooleanParameterRequest
  (:init
   (&key
    ((:parameter __parameter) 0)
    ((:parameterValue __parameterValue) 0)
    )
   (send-super :init)
   (setq _parameter (round __parameter))
   (setq _parameterValue (round __parameterValue))
   self)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:parameterValue
   (&optional __parameterValue)
   (if __parameterValue (setq _parameterValue __parameterValue)) _parameterValue)
  (:serialization-length
   ()
   (+
    ;; int32 _parameter
    4
    ;; uint8 _parameterValue
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parameter
       (write-long _parameter s)
     ;; uint8 _parameterValue
       (write-byte _parameterValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parameter
     (setq _parameter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrep_common::simRosSetBooleanParameterResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetBooleanParameterResponse
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

(defclass vrep_common::simRosSetBooleanParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetBooleanParameter :md5sum-) "48226e7166296d8d45f6626e588efb5a")
(setf (get vrep_common::simRosSetBooleanParameter :datatype-) "vrep_common/simRosSetBooleanParameter")
(setf (get vrep_common::simRosSetBooleanParameter :request) vrep_common::simRosSetBooleanParameterRequest)
(setf (get vrep_common::simRosSetBooleanParameter :response) vrep_common::simRosSetBooleanParameterResponse)

(defmethod vrep_common::simRosSetBooleanParameterRequest
  (:response () (instance vrep_common::simRosSetBooleanParameterResponse :init)))

(setf (get vrep_common::simRosSetBooleanParameterRequest :md5sum-) "48226e7166296d8d45f6626e588efb5a")
(setf (get vrep_common::simRosSetBooleanParameterRequest :datatype-) "vrep_common/simRosSetBooleanParameterRequest")
(setf (get vrep_common::simRosSetBooleanParameterRequest :definition-)
      "



int32 parameter
uint8 parameterValue
---
int32 result

")

(setf (get vrep_common::simRosSetBooleanParameterResponse :md5sum-) "48226e7166296d8d45f6626e588efb5a")
(setf (get vrep_common::simRosSetBooleanParameterResponse :datatype-) "vrep_common/simRosSetBooleanParameterResponse")
(setf (get vrep_common::simRosSetBooleanParameterResponse :definition-)
      "



int32 parameter
uint8 parameterValue
---
int32 result

")



(provide :vrep_common/simRosSetBooleanParameter "48226e7166296d8d45f6626e588efb5a")


