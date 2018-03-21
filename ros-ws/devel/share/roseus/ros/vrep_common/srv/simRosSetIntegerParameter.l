;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetIntegerParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetIntegerParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETINTEGERPARAMETER")
  (make-package "VREP_COMMON::SIMROSSETINTEGERPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSSETINTEGERPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSSETINTEGERPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETINTEGERPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETINTEGERPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetIntegerParameterRequest
  :super ros::object
  :slots (_parameter _parameterValue ))

(defmethod vrep_common::simRosSetIntegerParameterRequest
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
    ;; int32 _parameterValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parameter
       (write-long _parameter s)
     ;; int32 _parameterValue
       (write-long _parameterValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parameter
     (setq _parameter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetIntegerParameterResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetIntegerParameterResponse
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

(defclass vrep_common::simRosSetIntegerParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetIntegerParameter :md5sum-) "f3c5433e44d0019f0b3eade90114da07")
(setf (get vrep_common::simRosSetIntegerParameter :datatype-) "vrep_common/simRosSetIntegerParameter")
(setf (get vrep_common::simRosSetIntegerParameter :request) vrep_common::simRosSetIntegerParameterRequest)
(setf (get vrep_common::simRosSetIntegerParameter :response) vrep_common::simRosSetIntegerParameterResponse)

(defmethod vrep_common::simRosSetIntegerParameterRequest
  (:response () (instance vrep_common::simRosSetIntegerParameterResponse :init)))

(setf (get vrep_common::simRosSetIntegerParameterRequest :md5sum-) "f3c5433e44d0019f0b3eade90114da07")
(setf (get vrep_common::simRosSetIntegerParameterRequest :datatype-) "vrep_common/simRosSetIntegerParameterRequest")
(setf (get vrep_common::simRosSetIntegerParameterRequest :definition-)
      "



int32 parameter
int32 parameterValue
---
int32 result

")

(setf (get vrep_common::simRosSetIntegerParameterResponse :md5sum-) "f3c5433e44d0019f0b3eade90114da07")
(setf (get vrep_common::simRosSetIntegerParameterResponse :datatype-) "vrep_common/simRosSetIntegerParameterResponse")
(setf (get vrep_common::simRosSetIntegerParameterResponse :definition-)
      "



int32 parameter
int32 parameterValue
---
int32 result

")



(provide :vrep_common/simRosSetIntegerParameter "f3c5433e44d0019f0b3eade90114da07")


