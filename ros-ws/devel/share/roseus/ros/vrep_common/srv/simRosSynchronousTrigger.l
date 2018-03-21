;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSynchronousTrigger)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSynchronousTrigger (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSYNCHRONOUSTRIGGER")
  (make-package "VREP_COMMON::SIMROSSYNCHRONOUSTRIGGER"))
(unless (find-package "VREP_COMMON::SIMROSSYNCHRONOUSTRIGGERREQUEST")
  (make-package "VREP_COMMON::SIMROSSYNCHRONOUSTRIGGERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSYNCHRONOUSTRIGGERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSYNCHRONOUSTRIGGERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSynchronousTriggerRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosSynchronousTriggerRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass vrep_common::simRosSynchronousTriggerResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSynchronousTriggerResponse
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

(defclass vrep_common::simRosSynchronousTrigger
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSynchronousTrigger :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosSynchronousTrigger :datatype-) "vrep_common/simRosSynchronousTrigger")
(setf (get vrep_common::simRosSynchronousTrigger :request) vrep_common::simRosSynchronousTriggerRequest)
(setf (get vrep_common::simRosSynchronousTrigger :response) vrep_common::simRosSynchronousTriggerResponse)

(defmethod vrep_common::simRosSynchronousTriggerRequest
  (:response () (instance vrep_common::simRosSynchronousTriggerResponse :init)))

(setf (get vrep_common::simRosSynchronousTriggerRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosSynchronousTriggerRequest :datatype-) "vrep_common/simRosSynchronousTriggerRequest")
(setf (get vrep_common::simRosSynchronousTriggerRequest :definition-)
      "



---
int32 result

")

(setf (get vrep_common::simRosSynchronousTriggerResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosSynchronousTriggerResponse :datatype-) "vrep_common/simRosSynchronousTriggerResponse")
(setf (get vrep_common::simRosSynchronousTriggerResponse :definition-)
      "



---
int32 result

")



(provide :vrep_common/simRosSynchronousTrigger "034a8e20d6a306665e3a5b340fab3f09")


