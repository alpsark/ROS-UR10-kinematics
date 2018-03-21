;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetFloatSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetFloatSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETFLOATSIGNAL")
  (make-package "VREP_COMMON::SIMROSSETFLOATSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSSETFLOATSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSSETFLOATSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETFLOATSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETFLOATSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetFloatSignalRequest
  :super ros::object
  :slots (_signalName _signalValue ))

(defmethod vrep_common::simRosSetFloatSignalRequest
  (:init
   (&key
    ((:signalName __signalName) "")
    ((:signalValue __signalValue) 0.0)
    )
   (send-super :init)
   (setq _signalName (string __signalName))
   (setq _signalValue (float __signalValue))
   self)
  (:signalName
   (&optional __signalName)
   (if __signalName (setq _signalName __signalName)) _signalName)
  (:signalValue
   (&optional __signalValue)
   (if __signalValue (setq _signalValue __signalValue)) _signalValue)
  (:serialization-length
   ()
   (+
    ;; string _signalName
    4 (length _signalName)
    ;; float32 _signalValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signalName
       (write-long (length _signalName) s) (princ _signalName s)
     ;; float32 _signalValue
       (sys::poke _signalValue (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signalName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signalName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _signalValue
     (setq _signalValue (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetFloatSignalResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetFloatSignalResponse
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

(defclass vrep_common::simRosSetFloatSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetFloatSignal :md5sum-) "4f2e9ccc881d859d0bc9a087fe7a0075")
(setf (get vrep_common::simRosSetFloatSignal :datatype-) "vrep_common/simRosSetFloatSignal")
(setf (get vrep_common::simRosSetFloatSignal :request) vrep_common::simRosSetFloatSignalRequest)
(setf (get vrep_common::simRosSetFloatSignal :response) vrep_common::simRosSetFloatSignalResponse)

(defmethod vrep_common::simRosSetFloatSignalRequest
  (:response () (instance vrep_common::simRosSetFloatSignalResponse :init)))

(setf (get vrep_common::simRosSetFloatSignalRequest :md5sum-) "4f2e9ccc881d859d0bc9a087fe7a0075")
(setf (get vrep_common::simRosSetFloatSignalRequest :datatype-) "vrep_common/simRosSetFloatSignalRequest")
(setf (get vrep_common::simRosSetFloatSignalRequest :definition-)
      "



string signalName
float32 signalValue
---
int32 result

")

(setf (get vrep_common::simRosSetFloatSignalResponse :md5sum-) "4f2e9ccc881d859d0bc9a087fe7a0075")
(setf (get vrep_common::simRosSetFloatSignalResponse :datatype-) "vrep_common/simRosSetFloatSignalResponse")
(setf (get vrep_common::simRosSetFloatSignalResponse :definition-)
      "



string signalName
float32 signalValue
---
int32 result

")



(provide :vrep_common/simRosSetFloatSignal "4f2e9ccc881d859d0bc9a087fe7a0075")


