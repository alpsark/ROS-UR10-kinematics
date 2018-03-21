;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosStartSimulation)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosStartSimulation (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSTARTSIMULATION")
  (make-package "VREP_COMMON::SIMROSSTARTSIMULATION"))
(unless (find-package "VREP_COMMON::SIMROSSTARTSIMULATIONREQUEST")
  (make-package "VREP_COMMON::SIMROSSTARTSIMULATIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSTARTSIMULATIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSSTARTSIMULATIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosStartSimulationRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosStartSimulationRequest
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

(defclass vrep_common::simRosStartSimulationResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosStartSimulationResponse
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

(defclass vrep_common::simRosStartSimulation
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosStartSimulation :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosStartSimulation :datatype-) "vrep_common/simRosStartSimulation")
(setf (get vrep_common::simRosStartSimulation :request) vrep_common::simRosStartSimulationRequest)
(setf (get vrep_common::simRosStartSimulation :response) vrep_common::simRosStartSimulationResponse)

(defmethod vrep_common::simRosStartSimulationRequest
  (:response () (instance vrep_common::simRosStartSimulationResponse :init)))

(setf (get vrep_common::simRosStartSimulationRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosStartSimulationRequest :datatype-) "vrep_common/simRosStartSimulationRequest")
(setf (get vrep_common::simRosStartSimulationRequest :definition-)
      "



---
int32 result

")

(setf (get vrep_common::simRosStartSimulationResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosStartSimulationResponse :datatype-) "vrep_common/simRosStartSimulationResponse")
(setf (get vrep_common::simRosStartSimulationResponse :definition-)
      "



---
int32 result

")



(provide :vrep_common/simRosStartSimulation "034a8e20d6a306665e3a5b340fab3f09")


