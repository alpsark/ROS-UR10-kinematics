;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetStringParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetStringParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETSTRINGPARAMETER")
  (make-package "VREP_COMMON::SIMROSGETSTRINGPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSGETSTRINGPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETSTRINGPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETSTRINGPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETSTRINGPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetStringParameterRequest
  :super ros::object
  :slots (_parameter ))

(defmethod vrep_common::simRosGetStringParameterRequest
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

(defclass vrep_common::simRosGetStringParameterResponse
  :super ros::object
  :slots (_result _parameterValue ))

(defmethod vrep_common::simRosGetStringParameterResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:parameterValue __parameterValue) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _parameterValue (string __parameterValue))
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
    ;; string _parameterValue
    4 (length _parameterValue)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _parameterValue
       (write-long (length _parameterValue) s) (princ _parameterValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _parameterValue
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameterValue (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetStringParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetStringParameter :md5sum-) "bfa84711627860a0d3cd5d1050dd8779")
(setf (get vrep_common::simRosGetStringParameter :datatype-) "vrep_common/simRosGetStringParameter")
(setf (get vrep_common::simRosGetStringParameter :request) vrep_common::simRosGetStringParameterRequest)
(setf (get vrep_common::simRosGetStringParameter :response) vrep_common::simRosGetStringParameterResponse)

(defmethod vrep_common::simRosGetStringParameterRequest
  (:response () (instance vrep_common::simRosGetStringParameterResponse :init)))

(setf (get vrep_common::simRosGetStringParameterRequest :md5sum-) "bfa84711627860a0d3cd5d1050dd8779")
(setf (get vrep_common::simRosGetStringParameterRequest :datatype-) "vrep_common/simRosGetStringParameterRequest")
(setf (get vrep_common::simRosGetStringParameterRequest :definition-)
      "



int32 parameter
---
int32 result
string parameterValue

")

(setf (get vrep_common::simRosGetStringParameterResponse :md5sum-) "bfa84711627860a0d3cd5d1050dd8779")
(setf (get vrep_common::simRosGetStringParameterResponse :datatype-) "vrep_common/simRosGetStringParameterResponse")
(setf (get vrep_common::simRosGetStringParameterResponse :definition-)
      "



int32 parameter
---
int32 result
string parameterValue

")



(provide :vrep_common/simRosGetStringParameter "bfa84711627860a0d3cd5d1050dd8779")


