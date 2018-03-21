;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetFloatingParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetFloatingParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETFLOATINGPARAMETER")
  (make-package "VREP_COMMON::SIMROSSETFLOATINGPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSSETFLOATINGPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSSETFLOATINGPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETFLOATINGPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETFLOATINGPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetFloatingParameterRequest
  :super ros::object
  :slots (_parameter _parameterValue ))

(defmethod vrep_common::simRosSetFloatingParameterRequest
  (:init
   (&key
    ((:parameter __parameter) 0)
    ((:parameterValue __parameterValue) 0.0)
    )
   (send-super :init)
   (setq _parameter (round __parameter))
   (setq _parameterValue (float __parameterValue))
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
    ;; float32 _parameterValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parameter
       (write-long _parameter s)
     ;; float32 _parameterValue
       (sys::poke _parameterValue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parameter
     (setq _parameter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetFloatingParameterResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetFloatingParameterResponse
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

(defclass vrep_common::simRosSetFloatingParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetFloatingParameter :md5sum-) "c31639a7b964ac493003ab10b05585ed")
(setf (get vrep_common::simRosSetFloatingParameter :datatype-) "vrep_common/simRosSetFloatingParameter")
(setf (get vrep_common::simRosSetFloatingParameter :request) vrep_common::simRosSetFloatingParameterRequest)
(setf (get vrep_common::simRosSetFloatingParameter :response) vrep_common::simRosSetFloatingParameterResponse)

(defmethod vrep_common::simRosSetFloatingParameterRequest
  (:response () (instance vrep_common::simRosSetFloatingParameterResponse :init)))

(setf (get vrep_common::simRosSetFloatingParameterRequest :md5sum-) "c31639a7b964ac493003ab10b05585ed")
(setf (get vrep_common::simRosSetFloatingParameterRequest :datatype-) "vrep_common/simRosSetFloatingParameterRequest")
(setf (get vrep_common::simRosSetFloatingParameterRequest :definition-)
      "



int32 parameter
float32 parameterValue
---
int32 result

")

(setf (get vrep_common::simRosSetFloatingParameterResponse :md5sum-) "c31639a7b964ac493003ab10b05585ed")
(setf (get vrep_common::simRosSetFloatingParameterResponse :datatype-) "vrep_common/simRosSetFloatingParameterResponse")
(setf (get vrep_common::simRosSetFloatingParameterResponse :definition-)
      "



int32 parameter
float32 parameterValue
---
int32 result

")



(provide :vrep_common/simRosSetFloatingParameter "c31639a7b964ac493003ab10b05585ed")


