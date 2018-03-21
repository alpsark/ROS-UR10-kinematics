;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosCloseScene)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosCloseScene (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSCLOSESCENE")
  (make-package "VREP_COMMON::SIMROSCLOSESCENE"))
(unless (find-package "VREP_COMMON::SIMROSCLOSESCENEREQUEST")
  (make-package "VREP_COMMON::SIMROSCLOSESCENEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSCLOSESCENERESPONSE")
  (make-package "VREP_COMMON::SIMROSCLOSESCENERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosCloseSceneRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosCloseSceneRequest
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

(defclass vrep_common::simRosCloseSceneResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosCloseSceneResponse
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

(defclass vrep_common::simRosCloseScene
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosCloseScene :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosCloseScene :datatype-) "vrep_common/simRosCloseScene")
(setf (get vrep_common::simRosCloseScene :request) vrep_common::simRosCloseSceneRequest)
(setf (get vrep_common::simRosCloseScene :response) vrep_common::simRosCloseSceneResponse)

(defmethod vrep_common::simRosCloseSceneRequest
  (:response () (instance vrep_common::simRosCloseSceneResponse :init)))

(setf (get vrep_common::simRosCloseSceneRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosCloseSceneRequest :datatype-) "vrep_common/simRosCloseSceneRequest")
(setf (get vrep_common::simRosCloseSceneRequest :definition-)
      "



---
int32 result


")

(setf (get vrep_common::simRosCloseSceneResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get vrep_common::simRosCloseSceneResponse :datatype-) "vrep_common/simRosCloseSceneResponse")
(setf (get vrep_common::simRosCloseSceneResponse :definition-)
      "



---
int32 result


")



(provide :vrep_common/simRosCloseScene "034a8e20d6a306665e3a5b340fab3f09")


