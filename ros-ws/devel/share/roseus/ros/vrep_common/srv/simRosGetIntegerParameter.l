;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetIntegerParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetIntegerParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETINTEGERPARAMETER")
  (make-package "VREP_COMMON::SIMROSGETINTEGERPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSGETINTEGERPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETINTEGERPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETINTEGERPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETINTEGERPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetIntegerParameterRequest
  :super ros::object
  :slots (_parameter ))

(defmethod vrep_common::simRosGetIntegerParameterRequest
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

(defclass vrep_common::simRosGetIntegerParameterResponse
  :super ros::object
  :slots (_result _parameterValue ))

(defmethod vrep_common::simRosGetIntegerParameterResponse
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

(defclass vrep_common::simRosGetIntegerParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetIntegerParameter :md5sum-) "60ddbc43aea06d61ad0817005dac2c22")
(setf (get vrep_common::simRosGetIntegerParameter :datatype-) "vrep_common/simRosGetIntegerParameter")
(setf (get vrep_common::simRosGetIntegerParameter :request) vrep_common::simRosGetIntegerParameterRequest)
(setf (get vrep_common::simRosGetIntegerParameter :response) vrep_common::simRosGetIntegerParameterResponse)

(defmethod vrep_common::simRosGetIntegerParameterRequest
  (:response () (instance vrep_common::simRosGetIntegerParameterResponse :init)))

(setf (get vrep_common::simRosGetIntegerParameterRequest :md5sum-) "60ddbc43aea06d61ad0817005dac2c22")
(setf (get vrep_common::simRosGetIntegerParameterRequest :datatype-) "vrep_common/simRosGetIntegerParameterRequest")
(setf (get vrep_common::simRosGetIntegerParameterRequest :definition-)
      "



int32 parameter
---
int32 result
int32 parameterValue

")

(setf (get vrep_common::simRosGetIntegerParameterResponse :md5sum-) "60ddbc43aea06d61ad0817005dac2c22")
(setf (get vrep_common::simRosGetIntegerParameterResponse :datatype-) "vrep_common/simRosGetIntegerParameterResponse")
(setf (get vrep_common::simRosGetIntegerParameterResponse :definition-)
      "



int32 parameter
---
int32 result
int32 parameterValue

")



(provide :vrep_common/simRosGetIntegerParameter "60ddbc43aea06d61ad0817005dac2c22")


