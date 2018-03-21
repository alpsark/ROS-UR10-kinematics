;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetObjectFloatParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetObjectFloatParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTFLOATPARAMETER")
  (make-package "VREP_COMMON::SIMROSSETOBJECTFLOATPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTFLOATPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSSETOBJECTFLOATPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTFLOATPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTFLOATPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetObjectFloatParameterRequest
  :super ros::object
  :slots (_handle _parameter _parameterValue ))

(defmethod vrep_common::simRosSetObjectFloatParameterRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:parameter __parameter) 0)
    ((:parameterValue __parameterValue) 0.0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _parameter (round __parameter))
   (setq _parameterValue (float __parameterValue))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:parameterValue
   (&optional __parameterValue)
   (if __parameterValue (setq _parameterValue __parameterValue)) _parameterValue)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _parameter
    4
    ;; float32 _parameterValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _parameter
       (write-long _parameter s)
     ;; float32 _parameterValue
       (sys::poke _parameterValue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parameter
     (setq _parameter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectFloatParameterResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetObjectFloatParameterResponse
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

(defclass vrep_common::simRosSetObjectFloatParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetObjectFloatParameter :md5sum-) "34f253f6d922190543703a5a751d02e5")
(setf (get vrep_common::simRosSetObjectFloatParameter :datatype-) "vrep_common/simRosSetObjectFloatParameter")
(setf (get vrep_common::simRosSetObjectFloatParameter :request) vrep_common::simRosSetObjectFloatParameterRequest)
(setf (get vrep_common::simRosSetObjectFloatParameter :response) vrep_common::simRosSetObjectFloatParameterResponse)

(defmethod vrep_common::simRosSetObjectFloatParameterRequest
  (:response () (instance vrep_common::simRosSetObjectFloatParameterResponse :init)))

(setf (get vrep_common::simRosSetObjectFloatParameterRequest :md5sum-) "34f253f6d922190543703a5a751d02e5")
(setf (get vrep_common::simRosSetObjectFloatParameterRequest :datatype-) "vrep_common/simRosSetObjectFloatParameterRequest")
(setf (get vrep_common::simRosSetObjectFloatParameterRequest :definition-)
      "



int32 handle
int32 parameter
float32 parameterValue
---
int32 result

")

(setf (get vrep_common::simRosSetObjectFloatParameterResponse :md5sum-) "34f253f6d922190543703a5a751d02e5")
(setf (get vrep_common::simRosSetObjectFloatParameterResponse :datatype-) "vrep_common/simRosSetObjectFloatParameterResponse")
(setf (get vrep_common::simRosSetObjectFloatParameterResponse :definition-)
      "



int32 handle
int32 parameter
float32 parameterValue
---
int32 result

")



(provide :vrep_common/simRosSetObjectFloatParameter "34f253f6d922190543703a5a751d02e5")


