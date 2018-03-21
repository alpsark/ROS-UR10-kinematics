;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosClearFloatSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosClearFloatSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSCLEARFLOATSIGNAL")
  (make-package "VREP_COMMON::SIMROSCLEARFLOATSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSCLEARFLOATSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSCLEARFLOATSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSCLEARFLOATSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSCLEARFLOATSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosClearFloatSignalRequest
  :super ros::object
  :slots (_signalName ))

(defmethod vrep_common::simRosClearFloatSignalRequest
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

(defclass vrep_common::simRosClearFloatSignalResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosClearFloatSignalResponse
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

(defclass vrep_common::simRosClearFloatSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosClearFloatSignal :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearFloatSignal :datatype-) "vrep_common/simRosClearFloatSignal")
(setf (get vrep_common::simRosClearFloatSignal :request) vrep_common::simRosClearFloatSignalRequest)
(setf (get vrep_common::simRosClearFloatSignal :response) vrep_common::simRosClearFloatSignalResponse)

(defmethod vrep_common::simRosClearFloatSignalRequest
  (:response () (instance vrep_common::simRosClearFloatSignalResponse :init)))

(setf (get vrep_common::simRosClearFloatSignalRequest :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearFloatSignalRequest :datatype-) "vrep_common/simRosClearFloatSignalRequest")
(setf (get vrep_common::simRosClearFloatSignalRequest :definition-)
      "



string signalName
---
int32 result


")

(setf (get vrep_common::simRosClearFloatSignalResponse :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearFloatSignalResponse :datatype-) "vrep_common/simRosClearFloatSignalResponse")
(setf (get vrep_common::simRosClearFloatSignalResponse :definition-)
      "



string signalName
---
int32 result


")



(provide :vrep_common/simRosClearFloatSignal "78c7f457aa3ca9421b43a9c08cf8400a")


