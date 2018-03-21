;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosLoadModel)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosLoadModel (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSLOADMODEL")
  (make-package "VREP_COMMON::SIMROSLOADMODEL"))
(unless (find-package "VREP_COMMON::SIMROSLOADMODELREQUEST")
  (make-package "VREP_COMMON::SIMROSLOADMODELREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSLOADMODELRESPONSE")
  (make-package "VREP_COMMON::SIMROSLOADMODELRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosLoadModelRequest
  :super ros::object
  :slots (_fileName ))

(defmethod vrep_common::simRosLoadModelRequest
  (:init
   (&key
    ((:fileName __fileName) "")
    )
   (send-super :init)
   (setq _fileName (string __fileName))
   self)
  (:fileName
   (&optional __fileName)
   (if __fileName (setq _fileName __fileName)) _fileName)
  (:serialization-length
   ()
   (+
    ;; string _fileName
    4 (length _fileName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _fileName
       (write-long (length _fileName) s) (princ _fileName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _fileName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fileName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosLoadModelResponse
  :super ros::object
  :slots (_result _baseHandle ))

(defmethod vrep_common::simRosLoadModelResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:baseHandle __baseHandle) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _baseHandle (round __baseHandle))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:baseHandle
   (&optional __baseHandle)
   (if __baseHandle (setq _baseHandle __baseHandle)) _baseHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32 _baseHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32 _baseHandle
       (write-long _baseHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _baseHandle
     (setq _baseHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosLoadModel
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosLoadModel :md5sum-) "e90a06de566d298ef7f6c1c63b525a29")
(setf (get vrep_common::simRosLoadModel :datatype-) "vrep_common/simRosLoadModel")
(setf (get vrep_common::simRosLoadModel :request) vrep_common::simRosLoadModelRequest)
(setf (get vrep_common::simRosLoadModel :response) vrep_common::simRosLoadModelResponse)

(defmethod vrep_common::simRosLoadModelRequest
  (:response () (instance vrep_common::simRosLoadModelResponse :init)))

(setf (get vrep_common::simRosLoadModelRequest :md5sum-) "e90a06de566d298ef7f6c1c63b525a29")
(setf (get vrep_common::simRosLoadModelRequest :datatype-) "vrep_common/simRosLoadModelRequest")
(setf (get vrep_common::simRosLoadModelRequest :definition-)
      "



string fileName
---
int32 result
int32 baseHandle

")

(setf (get vrep_common::simRosLoadModelResponse :md5sum-) "e90a06de566d298ef7f6c1c63b525a29")
(setf (get vrep_common::simRosLoadModelResponse :datatype-) "vrep_common/simRosLoadModelResponse")
(setf (get vrep_common::simRosLoadModelResponse :definition-)
      "



string fileName
---
int32 result
int32 baseHandle

")



(provide :vrep_common/simRosLoadModel "e90a06de566d298ef7f6c1c63b525a29")


