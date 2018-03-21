;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosStopSimulation)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosStopSimulation (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSTOPSIMULATION")
  (make-package "VREP_COMMON::SIMROSSTOPSIMULATION"))
(unless (find-package "VREP_COMMON::SIMROSSTOPSIMULATIONREQUEST")
  (make-package "VREP_COMMON::SIMROSSTOPSIMULATIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSTOPSIMULATIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSSTOPSIMULATIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosStopSimulationRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosStopSimulationRequest
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

(defclass vrep_common::simRosStopSimulationResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosStopSimulationResponse
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

(defclass vrep_common::simRosStopSimulation
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosStopSimulation :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosStopSimulation :datatype-) "vrep_common/simRosStopSimulation")
(setf (get vrep_common::simRosStopSimulation :request) vrep_common::simRosStopSimulationRequest)
(setf (get vrep_common::simRosStopSimulation :response) vrep_common::simRosStopSimulationResponse)

(defmethod vrep_common::simRosStopSimulationRequest
  (:response () (instance vrep_common::simRosStopSimulationResponse :init)))

(setf (get vrep_common::simRosStopSimulationRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosStopSimulationRequest :datatype-) "vrep_common/simRosStopSimulationRequest")
(setf (get vrep_common::simRosStopSimulationRequest :definition-)
      "



---
int32 result

")

(setf (get vrep_common::simRosStopSimulationResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosStopSimulationResponse :datatype-) "vrep_common/simRosStopSimulationResponse")
(setf (get vrep_common::simRosStopSimulationResponse :definition-)
      "



---
int32 result

")



(provide :vrep_common/simRosStopSimulation "034a8e20d6a306665e3a5b340fab3f09")


