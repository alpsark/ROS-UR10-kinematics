;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosPauseSimulation)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosPauseSimulation (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSPAUSESIMULATION")
  (make-package "VREP_COMMON::SIMROSPAUSESIMULATION"))
(unless (find-package "VREP_COMMON::SIMROSPAUSESIMULATIONREQUEST")
  (make-package "VREP_COMMON::SIMROSPAUSESIMULATIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSPAUSESIMULATIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSPAUSESIMULATIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosPauseSimulationRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosPauseSimulationRequest
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

(defclass vrep_common::simRosPauseSimulationResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosPauseSimulationResponse
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

(defclass vrep_common::simRosPauseSimulation
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosPauseSimulation :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosPauseSimulation :datatype-) "vrep_common/simRosPauseSimulation")
(setf (get vrep_common::simRosPauseSimulation :request) vrep_common::simRosPauseSimulationRequest)
(setf (get vrep_common::simRosPauseSimulation :response) vrep_common::simRosPauseSimulationResponse)

(defmethod vrep_common::simRosPauseSimulationRequest
  (:response () (instance vrep_common::simRosPauseSimulationResponse :init)))

(setf (get vrep_common::simRosPauseSimulationRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosPauseSimulationRequest :datatype-) "vrep_common/simRosPauseSimulationRequest")
(setf (get vrep_common::simRosPauseSimulationRequest :definition-)
      "



---
int32 result

")

(setf (get vrep_common::simRosPauseSimulationResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosPauseSimulationResponse :datatype-) "vrep_common/simRosPauseSimulationResponse")
(setf (get vrep_common::simRosPauseSimulationResponse :definition-)
      "



---
int32 result

")



(provide :vrep_common/simRosPauseSimulation "034a8e20d6a306665e3a5b340fab3f09")


