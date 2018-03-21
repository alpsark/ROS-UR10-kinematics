;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetArrayParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetArrayParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETARRAYPARAMETER")
  (make-package "VREP_COMMON::SIMROSGETARRAYPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSGETARRAYPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETARRAYPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETARRAYPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETARRAYPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetArrayParameterRequest
  :super ros::object
  :slots (_parameter ))

(defmethod vrep_common::simRosGetArrayParameterRequest
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

(defclass vrep_common::simRosGetArrayParameterResponse
  :super ros::object
  :slots (_result _parameterValues ))

(defmethod vrep_common::simRosGetArrayParameterResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:parameterValues __parameterValues) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _parameterValues __parameterValues)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:parameterValues
   (&optional __parameterValues)
   (if __parameterValues (setq _parameterValues __parameterValues)) _parameterValues)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32[] _parameterValues
    (* 4    (length _parameterValues)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32[] _parameterValues
     (write-long (length _parameterValues) s)
     (dotimes (i (length _parameterValues))
       (sys::poke (elt _parameterValues i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _parameterValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameterValues (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _parameterValues i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosGetArrayParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetArrayParameter :md5sum-) "eb14c535a1358defa0617c252d433144")
(setf (get vrep_common::simRosGetArrayParameter :datatype-) "vrep_common/simRosGetArrayParameter")
(setf (get vrep_common::simRosGetArrayParameter :request) vrep_common::simRosGetArrayParameterRequest)
(setf (get vrep_common::simRosGetArrayParameter :response) vrep_common::simRosGetArrayParameterResponse)

(defmethod vrep_common::simRosGetArrayParameterRequest
  (:response () (instance vrep_common::simRosGetArrayParameterResponse :init)))

(setf (get vrep_common::simRosGetArrayParameterRequest :md5sum-) "eb14c535a1358defa0617c252d433144")
(setf (get vrep_common::simRosGetArrayParameterRequest :datatype-) "vrep_common/simRosGetArrayParameterRequest")
(setf (get vrep_common::simRosGetArrayParameterRequest :definition-)
      "



int32 parameter
---
int32 result
float32[] parameterValues

")

(setf (get vrep_common::simRosGetArrayParameterResponse :md5sum-) "eb14c535a1358defa0617c252d433144")
(setf (get vrep_common::simRosGetArrayParameterResponse :datatype-) "vrep_common/simRosGetArrayParameterResponse")
(setf (get vrep_common::simRosGetArrayParameterResponse :definition-)
      "



int32 parameter
---
int32 result
float32[] parameterValues

")



(provide :vrep_common/simRosGetArrayParameter "eb14c535a1358defa0617c252d433144")


