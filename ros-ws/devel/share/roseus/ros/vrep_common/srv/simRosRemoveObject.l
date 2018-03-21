;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosRemoveObject)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosRemoveObject (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREMOVEOBJECT")
  (make-package "VREP_COMMON::SIMROSREMOVEOBJECT"))
(unless (find-package "VREP_COMMON::SIMROSREMOVEOBJECTREQUEST")
  (make-package "VREP_COMMON::SIMROSREMOVEOBJECTREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREMOVEOBJECTRESPONSE")
  (make-package "VREP_COMMON::SIMROSREMOVEOBJECTRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosRemoveObjectRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosRemoveObjectRequest
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

(defclass vrep_common::simRosRemoveObjectResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosRemoveObjectResponse
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

(defclass vrep_common::simRosRemoveObject
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosRemoveObject :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveObject :datatype-) "vrep_common/simRosRemoveObject")
(setf (get vrep_common::simRosRemoveObject :request) vrep_common::simRosRemoveObjectRequest)
(setf (get vrep_common::simRosRemoveObject :response) vrep_common::simRosRemoveObjectResponse)

(defmethod vrep_common::simRosRemoveObjectRequest
  (:response () (instance vrep_common::simRosRemoveObjectResponse :init)))

(setf (get vrep_common::simRosRemoveObjectRequest :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveObjectRequest :datatype-) "vrep_common/simRosRemoveObjectRequest")
(setf (get vrep_common::simRosRemoveObjectRequest :definition-)
      "



int32 handle
---
int32 result

")

(setf (get vrep_common::simRosRemoveObjectResponse :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveObjectResponse :datatype-) "vrep_common/simRosRemoveObjectResponse")
(setf (get vrep_common::simRosRemoveObjectResponse :definition-)
      "



int32 handle
---
int32 result

")



(provide :vrep_common/simRosRemoveObject "6833353cd429b83819dab869600ce745")


