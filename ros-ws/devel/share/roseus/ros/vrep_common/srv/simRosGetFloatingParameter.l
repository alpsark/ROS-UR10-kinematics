;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetFloatingParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetFloatingParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETFLOATINGPARAMETER")
  (make-package "VREP_COMMON::SIMROSGETFLOATINGPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSGETFLOATINGPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETFLOATINGPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETFLOATINGPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETFLOATINGPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetFloatingParameterRequest
  :super ros::object
  :slots (_parameter ))

(defmethod vrep_common::simRosGetFloatingParameterRequest
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

(defclass vrep_common::simRosGetFloatingParameterResponse
  :super ros::object
  :slots (_result _parameterValue ))

(defmethod vrep_common::simRosGetFloatingParameterResponse
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

(defclass vrep_common::simRosGetFloatingParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetFloatingParameter :md5sum-) "644de783777ba310fdbca35ac3e448b1")
(setf (get vrep_common::simRosGetFloatingParameter :datatype-) "vrep_common/simRosGetFloatingParameter")
(setf (get vrep_common::simRosGetFloatingParameter :request) vrep_common::simRosGetFloatingParameterRequest)
(setf (get vrep_common::simRosGetFloatingParameter :response) vrep_common::simRosGetFloatingParameterResponse)

(defmethod vrep_common::simRosGetFloatingParameterRequest
  (:response () (instance vrep_common::simRosGetFloatingParameterResponse :init)))

(setf (get vrep_common::simRosGetFloatingParameterRequest :md5sum-) "644de783777ba310fdbca35ac3e448b1")
(setf (get vrep_common::simRosGetFloatingParameterRequest :datatype-) "vrep_common/simRosGetFloatingParameterRequest")
(setf (get vrep_common::simRosGetFloatingParameterRequest :definition-)
      "



int32 parameter
---
int32 result
float32 parameterValue

")

(setf (get vrep_common::simRosGetFloatingParameterResponse :md5sum-) "644de783777ba310fdbca35ac3e448b1")
(setf (get vrep_common::simRosGetFloatingParameterResponse :datatype-) "vrep_common/simRosGetFloatingParameterResponse")
(setf (get vrep_common::simRosGetFloatingParameterResponse :definition-)
      "



int32 parameter
---
int32 result
float32 parameterValue

")



(provide :vrep_common/simRosGetFloatingParameter "644de783777ba310fdbca35ac3e448b1")


