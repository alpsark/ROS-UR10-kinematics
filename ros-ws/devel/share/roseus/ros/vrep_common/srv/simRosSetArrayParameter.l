;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetArrayParameter)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetArrayParameter (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETARRAYPARAMETER")
  (make-package "VREP_COMMON::SIMROSSETARRAYPARAMETER"))
(unless (find-package "VREP_COMMON::SIMROSSETARRAYPARAMETERREQUEST")
  (make-package "VREP_COMMON::SIMROSSETARRAYPARAMETERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETARRAYPARAMETERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETARRAYPARAMETERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetArrayParameterRequest
  :super ros::object
  :slots (_parameter _parameterValues ))

(defmethod vrep_common::simRosSetArrayParameterRequest
  (:init
   (&key
    ((:parameter __parameter) 0)
    ((:parameterValues __parameterValues) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _parameter (round __parameter))
   (setq _parameterValues __parameterValues)
   self)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:parameterValues
   (&optional __parameterValues)
   (if __parameterValues (setq _parameterValues __parameterValues)) _parameterValues)
  (:serialization-length
   ()
   (+
    ;; int32 _parameter
    4
    ;; float32[] _parameterValues
    (* 4    (length _parameterValues)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parameter
       (write-long _parameter s)
     ;; float32[] _parameterValues
     (write-long (length _parameterValues) s)
     (dotimes (i (length _parameterValues))
       (sys::poke (elt _parameterValues i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parameter
     (setq _parameter (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(defclass vrep_common::simRosSetArrayParameterResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetArrayParameterResponse
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

(defclass vrep_common::simRosSetArrayParameter
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetArrayParameter :md5sum-) "4d1073567d098840261016d80dc91684")
(setf (get vrep_common::simRosSetArrayParameter :datatype-) "vrep_common/simRosSetArrayParameter")
(setf (get vrep_common::simRosSetArrayParameter :request) vrep_common::simRosSetArrayParameterRequest)
(setf (get vrep_common::simRosSetArrayParameter :response) vrep_common::simRosSetArrayParameterResponse)

(defmethod vrep_common::simRosSetArrayParameterRequest
  (:response () (instance vrep_common::simRosSetArrayParameterResponse :init)))

(setf (get vrep_common::simRosSetArrayParameterRequest :md5sum-) "4d1073567d098840261016d80dc91684")
(setf (get vrep_common::simRosSetArrayParameterRequest :datatype-) "vrep_common/simRosSetArrayParameterRequest")
(setf (get vrep_common::simRosSetArrayParameterRequest :definition-)
      "



int32 parameter
float32[] parameterValues
---
int32 result

")

(setf (get vrep_common::simRosSetArrayParameterResponse :md5sum-) "4d1073567d098840261016d80dc91684")
(setf (get vrep_common::simRosSetArrayParameterResponse :datatype-) "vrep_common/simRosSetArrayParameterResponse")
(setf (get vrep_common::simRosSetArrayParameterResponse :definition-)
      "



int32 parameter
float32[] parameterValues
---
int32 result

")



(provide :vrep_common/simRosSetArrayParameter "4d1073567d098840261016d80dc91684")


