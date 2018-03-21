;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosBreakForceSensor)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosBreakForceSensor (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSBREAKFORCESENSOR")
  (make-package "VREP_COMMON::SIMROSBREAKFORCESENSOR"))
(unless (find-package "VREP_COMMON::SIMROSBREAKFORCESENSORREQUEST")
  (make-package "VREP_COMMON::SIMROSBREAKFORCESENSORREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSBREAKFORCESENSORRESPONSE")
  (make-package "VREP_COMMON::SIMROSBREAKFORCESENSORRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosBreakForceSensorRequest
  :super ros::object
  :slots (_objectHandle ))

(defmethod vrep_common::simRosBreakForceSensorRequest
  (:init
   (&key
    ((:objectHandle __objectHandle) 0)
    )
   (send-super :init)
   (setq _objectHandle (round __objectHandle))
   self)
  (:objectHandle
   (&optional __objectHandle)
   (if __objectHandle (setq _objectHandle __objectHandle)) _objectHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _objectHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _objectHandle
       (write-long _objectHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _objectHandle
     (setq _objectHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosBreakForceSensorResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosBreakForceSensorResponse
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

(defclass vrep_common::simRosBreakForceSensor
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosBreakForceSensor :md5sum-) "b36b86ca13a59f09240c2d590a9babec")
(setf (get vrep_common::simRosBreakForceSensor :datatype-) "vrep_common/simRosBreakForceSensor")
(setf (get vrep_common::simRosBreakForceSensor :request) vrep_common::simRosBreakForceSensorRequest)
(setf (get vrep_common::simRosBreakForceSensor :response) vrep_common::simRosBreakForceSensorResponse)

(defmethod vrep_common::simRosBreakForceSensorRequest
  (:response () (instance vrep_common::simRosBreakForceSensorResponse :init)))

(setf (get vrep_common::simRosBreakForceSensorRequest :md5sum-) "b36b86ca13a59f09240c2d590a9babec")
(setf (get vrep_common::simRosBreakForceSensorRequest :datatype-) "vrep_common/simRosBreakForceSensorRequest")
(setf (get vrep_common::simRosBreakForceSensorRequest :definition-)
      "



int32 objectHandle
---
int32 result


")

(setf (get vrep_common::simRosBreakForceSensorResponse :md5sum-) "b36b86ca13a59f09240c2d590a9babec")
(setf (get vrep_common::simRosBreakForceSensorResponse :datatype-) "vrep_common/simRosBreakForceSensorResponse")
(setf (get vrep_common::simRosBreakForceSensorResponse :definition-)
      "



int32 objectHandle
---
int32 result


")



(provide :vrep_common/simRosBreakForceSensor "b36b86ca13a59f09240c2d590a9babec")


