;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetObjectIntParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetObjectIntParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTINTPARAMETER")
  (make-package "VREP_COMMON::SIMROSSETOBJECTINTPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTINTPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSSETOBJECTINTPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTINTPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTINTPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetObjectIntParameterRequest
  :super ros::object
  :slots (_handle _parameter _parameterValue ))

(defmethod vrep_common::simRosSetObjectIntParameterRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:parameter __parameter) 0)
    ((:parameterValue __parameterValue) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _parameter (round __parameter))
   (setq _parameterValue (round __parameterValue))
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
    ;; int32 _parameterValue
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
     ;; int32 _parameterValue
       (write-long _parameterValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parameter
     (setq _parameter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parameterValue
     (setq _parameterValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectIntParameterResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetObjectIntParameterResponse
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

(defclass vrep_common::simRosSetObjectIntParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetObjectIntParameter :md5sum-) "fd6c30a0a0bb1198c016550800028a13")
(setf (get vrep_common::simRosSetObjectIntParameter :datatype-) "vrep_common/simRosSetObjectIntParameter")
(setf (get vrep_common::simRosSetObjectIntParameter :request) vrep_common::simRosSetObjectIntParameterRequest)
(setf (get vrep_common::simRosSetObjectIntParameter :response) vrep_common::simRosSetObjectIntParameterResponse)

(defmethod vrep_common::simRosSetObjectIntParameterRequest
  (:response () (instance vrep_common::simRosSetObjectIntParameterResponse :init)))

(setf (get vrep_common::simRosSetObjectIntParameterRequest :md5sum-) "fd6c30a0a0bb1198c016550800028a13")
(setf (get vrep_common::simRosSetObjectIntParameterRequest :datatype-) "vrep_common/simRosSetObjectIntParameterRequest")
(setf (get vrep_common::simRosSetObjectIntParameterRequest :definition-)
      "



int32 handle
int32 parameter
int32 parameterValue
---
int32 result

")

(setf (get vrep_common::simRosSetObjectIntParameterResponse :md5sum-) "fd6c30a0a0bb1198c016550800028a13")
(setf (get vrep_common::simRosSetObjectIntParameterResponse :datatype-) "vrep_common/simRosSetObjectIntParameterResponse")
(setf (get vrep_common::simRosSetObjectIntParameterResponse :definition-)
      "



int32 handle
int32 parameter
int32 parameterValue
---
int32 result

")



(provide :vrep_common/simRosSetObjectIntParameter "fd6c30a0a0bb1198c016550800028a13")


