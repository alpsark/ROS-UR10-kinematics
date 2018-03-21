;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosClearIntegerSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosClearIntegerSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSCLEARINTEGERSIGNAL")
  (make-package "VREP_COMMON::SIMROSCLEARINTEGERSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSCLEARINTEGERSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSCLEARINTEGERSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSCLEARINTEGERSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSCLEARINTEGERSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosClearIntegerSignalRequest
  :super ros::object
  :slots (_signalName ))

(defmethod vrep_common::simRosClearIntegerSignalRequest
  (:init
   (&key
    ((:signalName __signalName) "")
    )
   (send-super :init)
   (setq _signalName (string __signalName))
   self)
  (:signalName
   (&optional __signalName)
   (if __signalName (setq _signalName __signalName)) _signalName)
  (:serialization-length
   ()
   (+
    ;; string _signalName
    4 (length _signalName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signalName
       (write-long (length _signalName) s) (princ _signalName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signalName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signalName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosClearIntegerSignalResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosClearIntegerSignalResponse
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

(defclass vrep_common::simRosClearIntegerSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosClearIntegerSignal :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearIntegerSignal :datatype-) "vrep_common/simRosClearIntegerSignal")
(setf (get vrep_common::simRosClearIntegerSignal :request) vrep_common::simRosClearIntegerSignalRequest)
(setf (get vrep_common::simRosClearIntegerSignal :response) vrep_common::simRosClearIntegerSignalResponse)

(defmethod vrep_common::simRosClearIntegerSignalRequest
  (:response () (instance vrep_common::simRosClearIntegerSignalResponse :init)))

(setf (get vrep_common::simRosClearIntegerSignalRequest :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearIntegerSignalRequest :datatype-) "vrep_common/simRosClearIntegerSignalRequest")
(setf (get vrep_common::simRosClearIntegerSignalRequest :definition-)
      "



string signalName
---
int32 result


")

(setf (get vrep_common::simRosClearIntegerSignalResponse :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearIntegerSignalResponse :datatype-) "vrep_common/simRosClearIntegerSignalResponse")
(setf (get vrep_common::simRosClearIntegerSignalResponse :definition-)
      "



string signalName
---
int32 result


")



(provide :vrep_common/simRosClearIntegerSignal "78c7f457aa3ca9421b43a9c08cf8400a")


