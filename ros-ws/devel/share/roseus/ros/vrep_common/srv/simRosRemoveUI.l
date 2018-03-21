;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosRemoveUI)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosRemoveUI (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREMOVEUI")
  (make-package "VREP_COMMON::SIMROSREMOVEUI"))
(unless (find-package "VREP_COMMON::SIMROSREMOVEUIREQUEST")
  (make-package "VREP_COMMON::SIMROSREMOVEUIREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREMOVEUIRESPONSE")
  (make-package "VREP_COMMON::SIMROSREMOVEUIRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosRemoveUIRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosRemoveUIRequest
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

(defclass vrep_common::simRosRemoveUIResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosRemoveUIResponse
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

(defclass vrep_common::simRosRemoveUI
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosRemoveUI :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveUI :datatype-) "vrep_common/simRosRemoveUI")
(setf (get vrep_common::simRosRemoveUI :request) vrep_common::simRosRemoveUIRequest)
(setf (get vrep_common::simRosRemoveUI :response) vrep_common::simRosRemoveUIResponse)

(defmethod vrep_common::simRosRemoveUIRequest
  (:response () (instance vrep_common::simRosRemoveUIResponse :init)))

(setf (get vrep_common::simRosRemoveUIRequest :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveUIRequest :datatype-) "vrep_common/simRosRemoveUIRequest")
(setf (get vrep_common::simRosRemoveUIRequest :definition-)
      "



int32 handle
---
int32 result

")

(setf (get vrep_common::simRosRemoveUIResponse :md5sum-) "6833353cd429b83819dab869600ce745")
(setf (get vrep_common::simRosRemoveUIResponse :datatype-) "vrep_common/simRosRemoveUIResponse")
(setf (get vrep_common::simRosRemoveUIResponse :definition-)
      "



int32 handle
---
int32 result

")



(provide :vrep_common/simRosRemoveUI "6833353cd429b83819dab869600ce745")


