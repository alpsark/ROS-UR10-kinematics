;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosLoadScene)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosLoadScene (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSLOADSCENE")
  (make-package "VREP_COMMON::SIMROSLOADSCENE"))
(unless (find-package "VREP_COMMON::SIMROSLOADSCENEREQUEST")
  (make-package "VREP_COMMON::SIMROSLOADSCENEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSLOADSCENERESPONSE")
  (make-package "VREP_COMMON::SIMROSLOADSCENERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosLoadSceneRequest
  :super ros::object
  :slots (_fileName ))

(defmethod vrep_common::simRosLoadSceneRequest
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

(defclass vrep_common::simRosLoadSceneResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosLoadSceneResponse
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

(defclass vrep_common::simRosLoadScene
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosLoadScene :md5sum-) "4ce16c0ffb6dc4c97455e3e44d2010aa")
(setf (get vrep_common::simRosLoadScene :datatype-) "vrep_common/simRosLoadScene")
(setf (get vrep_common::simRosLoadScene :request) vrep_common::simRosLoadSceneRequest)
(setf (get vrep_common::simRosLoadScene :response) vrep_common::simRosLoadSceneResponse)

(defmethod vrep_common::simRosLoadSceneRequest
  (:response () (instance vrep_common::simRosLoadSceneResponse :init)))

(setf (get vrep_common::simRosLoadSceneRequest :md5sum-) "4ce16c0ffb6dc4c97455e3e44d2010aa")
(setf (get vrep_common::simRosLoadSceneRequest :datatype-) "vrep_common/simRosLoadSceneRequest")
(setf (get vrep_common::simRosLoadSceneRequest :definition-)
      "



string fileName
---
int32 result

")

(setf (get vrep_common::simRosLoadSceneResponse :md5sum-) "4ce16c0ffb6dc4c97455e3e44d2010aa")
(setf (get vrep_common::simRosLoadSceneResponse :datatype-) "vrep_common/simRosLoadSceneResponse")
(setf (get vrep_common::simRosLoadSceneResponse :definition-)
      "



string fileName
---
int32 result

")



(provide :vrep_common/simRosLoadScene "4ce16c0ffb6dc4c97455e3e44d2010aa")


