;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosRemoveModel)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosRemoveModel (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREMOVEMODEL")
  (make-package "VREP_COMMON::SIMROSREMOVEMODEL"))
(unless (find-package "VREP_COMMON::SIMROSREMOVEMODELREQUEST")
  (make-package "VREP_COMMON::SIMROSREMOVEMODELREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREMOVEMODELRESPONSE")
  (make-package "VREP_COMMON::SIMROSREMOVEMODELRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosRemoveModelRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosRemoveModelRequest
  (:init
   (&key
    ((:handle __handle) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosRemoveModelResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosRemoveModelResponse
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

(defclass vrep_common::simRosRemoveModel
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosRemoveModel :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveModel :datatype-) "vrep_common/simRosRemoveModel")
(setf (get vrep_common::simRosRemoveModel :request) vrep_common::simRosRemoveModelRequest)
(setf (get vrep_common::simRosRemoveModel :response) vrep_common::simRosRemoveModelResponse)

(defmethod vrep_common::simRosRemoveModelRequest
  (:response () (instance vrep_common::simRosRemoveModelResponse :init)))

(setf (get vrep_common::simRosRemoveModelRequest :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveModelRequest :datatype-) "vrep_common/simRosRemoveModelRequest")
(setf (get vrep_common::simRosRemoveModelRequest :definition-)
      "



int32 handle
---
int32 result

")

(setf (get vrep_common::simRosRemoveModelResponse :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveModelResponse :datatype-) "vrep_common/simRosRemoveModelResponse")
(setf (get vrep_common::simRosRemoveModelResponse :definition-)
      "



int32 handle
---
int32 result

")



(provide :vrep_common/simRosRemoveModel "6833353cd429b83819dab869600ce745")


