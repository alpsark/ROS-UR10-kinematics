;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetIntegerSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetIntegerSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETINTEGERSIGNAL")
  (make-package "VREP_COMMON::SIMROSGETINTEGERSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSGETINTEGERSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSGETINTEGERSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETINTEGERSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETINTEGERSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetIntegerSignalRequest
  :super ros::object
  :slots (_signalName ))

(defmethod vrep_common::simRosGetIntegerSignalRequest
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

(defclass vrep_common::simRosGetIntegerSignalResponse
  :super ros::object
  :slots (_result _signalValue ))

(defmethod vrep_common::simRosGetIntegerSignalResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:signalValue __signalValue) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _signalValue (round __signalValue))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:signalValue
   (&optional __signalValue)
   (if __signalValue (setq _signalValue __signalValue)) _signalValue)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32 _signalValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32 _signalValue
       (write-long _signalValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _signalValue
     (setq _signalValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetIntegerSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetIntegerSignal :md5sum-) "4b64ff90076d16256defe1d768083e34")
(setf (get vrep_common::simRosGetIntegerSignal :datatype-) "vrep_common/simRosGetIntegerSignal")
(setf (get vrep_common::simRosGetIntegerSignal :request) vrep_common::simRosGetIntegerSignalRequest)
(setf (get vrep_common::simRosGetIntegerSignal :response) vrep_common::simRosGetIntegerSignalResponse)

(defmethod vrep_common::simRosGetIntegerSignalRequest
  (:response () (instance vrep_common::simRosGetIntegerSignalResponse :init)))

(setf (get vrep_common::simRosGetIntegerSignalRequest :md5sum-) "4b64ff90076d16256defe1d768083e34")
(setf (get vrep_common::simRosGetIntegerSignalRequest :datatype-) "vrep_common/simRosGetIntegerSignalRequest")
(setf (get vrep_common::simRosGetIntegerSignalRequest :definition-)
      "



string signalName
---
int32 result
int32 signalValue

")

(setf (get vrep_common::simRosGetIntegerSignalResponse :md5sum-) "4b64ff90076d16256defe1d768083e34")
(setf (get vrep_common::simRosGetIntegerSignalResponse :datatype-) "vrep_common/simRosGetIntegerSignalResponse")
(setf (get vrep_common::simRosGetIntegerSignalResponse :definition-)
      "



string signalName
---
int32 result
int32 signalValue

")



(provide :vrep_common/simRosGetIntegerSignal "4b64ff90076d16256defe1d768083e34")


