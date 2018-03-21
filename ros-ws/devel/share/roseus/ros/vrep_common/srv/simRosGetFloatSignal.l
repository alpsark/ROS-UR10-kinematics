;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetFloatSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetFloatSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETFLOATSIGNAL")
  (make-package "VREP_COMMON::SIMROSGETFLOATSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSGETFLOATSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSGETFLOATSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETFLOATSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETFLOATSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetFloatSignalRequest
  :super ros::object
  :slots (_signalName ))

(defmethod vrep_common::simRosGetFloatSignalRequest
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

(defclass vrep_common::simRosGetFloatSignalResponse
  :super ros::object
  :slots (_result _signalValue ))

(defmethod vrep_common::simRosGetFloatSignalResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:signalValue __signalValue) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _signalValue (float __signalValue))
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
    ;; float32 _signalValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _signalValue
       (sys::poke _signalValue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _signalValue
     (setq _signalValue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetFloatSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetFloatSignal :md5sum-) "52ba64366a10126c502d44acd3f25e3a")
(setf (get vrep_common::simRosGetFloatSignal :datatype-) "vrep_common/simRosGetFloatSignal")
(setf (get vrep_common::simRosGetFloatSignal :request) vrep_common::simRosGetFloatSignalRequest)
(setf (get vrep_common::simRosGetFloatSignal :response) vrep_common::simRosGetFloatSignalResponse)

(defmethod vrep_common::simRosGetFloatSignalRequest
  (:response () (instance vrep_common::simRosGetFloatSignalResponse :init)))

(setf (get vrep_common::simRosGetFloatSignalRequest :md5sum-) "52ba64366a10126c502d44acd3f25e3a")
(setf (get vrep_common::simRosGetFloatSignalRequest :datatype-) "vrep_common/simRosGetFloatSignalRequest")
(setf (get vrep_common::simRosGetFloatSignalRequest :definition-)
      "



string signalName
---
int32 result
float32 signalValue

")

(setf (get vrep_common::simRosGetFloatSignalResponse :md5sum-) "52ba64366a10126c502d44acd3f25e3a")
(setf (get vrep_common::simRosGetFloatSignalResponse :datatype-) "vrep_common/simRosGetFloatSignalResponse")
(setf (get vrep_common::simRosGetFloatSignalResponse :definition-)
      "



string signalName
---
int32 result
float32 signalValue

")



(provide :vrep_common/simRosGetFloatSignal "52ba64366a10126c502d44acd3f25e3a")


