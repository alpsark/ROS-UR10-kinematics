;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetBooleanParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetBooleanParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETBOOLEANPARAMETER")
  (make-package "VREP_COMMON::SIMROSGETBOOLEANPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSGETBOOLEANPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETBOOLEANPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETBOOLEANPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETBOOLEANPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetBooleanParameterRequest
  :super ros::object
  :slots (_parameter ))

(defmethod vrep_common::simRosGetBooleanParameterRequest
  (:init
   (&key
    ((:parameter __parameter) 0)
    )
   (send-super :init)
   (setq _parameter (round __parameter))
   self)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:serialization-length
   ()
   (+
    ;; int32 _parameter
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parameter
       (write-long _parameter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parameter
     (setq _parameter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetBooleanParameterResponse
  :super ros::object
  :slots (_parameterValue ))

(defmethod vrep_common::simRosGetBooleanParameterResponse
  (:init
   (&key
    ((:parameterValue __parameterValue) 0)
    )
   (send-super :init)
   (setq _parameterValue (round __parameterValue))
   self)
  (:parameterValue
   (&optional __parameterValue)
   (if __parameterValue (setq _parameterValue __parameterValue)) _parameterValue)
  (:serialization-length
   ()
   (+
    ;; int32 _parameterValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parameterValue
       (write-long _parameterValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetBooleanParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetBooleanParameter :md5sum-) "1d1aabce3fe70da836b3bf46393e4896")
(setf (get vrep_common::simRosGetBooleanParameter :datatype-) "vrep_common/simRosGetBooleanParameter")
(setf (get vrep_common::simRosGetBooleanParameter :request) vrep_common::simRosGetBooleanParameterRequest)
(setf (get vrep_common::simRosGetBooleanParameter :response) vrep_common::simRosGetBooleanParameterResponse)

(defmethod vrep_common::simRosGetBooleanParameterRequest
  (:response () (instance vrep_common::simRosGetBooleanParameterResponse :init)))

(setf (get vrep_common::simRosGetBooleanParameterRequest :md5sum-) "1d1aabce3fe70da836b3bf46393e4896")
(setf (get vrep_common::simRosGetBooleanParameterRequest :datatype-) "vrep_common/simRosGetBooleanParameterRequest")
(setf (get vrep_common::simRosGetBooleanParameterRequest :definition-)
      "



int32 parameter
---
int32 parameterValue

")

(setf (get vrep_common::simRosGetBooleanParameterResponse :md5sum-) "1d1aabce3fe70da836b3bf46393e4896")
(setf (get vrep_common::simRosGetBooleanParameterResponse :datatype-) "vrep_common/simRosGetBooleanParameterResponse")
(setf (get vrep_common::simRosGetBooleanParameterResponse :definition-)
      "



int32 parameter
---
int32 parameterValue

")



(provide :vrep_common/simRosGetBooleanParameter "1d1aabce3fe70da836b3bf46393e4896")


