;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetAndClearStringSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetAndClearStringSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETANDCLEARSTRINGSIGNAL")
  (make-package "VREP_COMMON::SIMROSGETANDCLEARSTRINGSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSGETANDCLEARSTRINGSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSGETANDCLEARSTRINGSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETANDCLEARSTRINGSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETANDCLEARSTRINGSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetAndClearStringSignalRequest
  :super ros::object
  :slots (_signalName ))

(defmethod vrep_common::simRosGetAndClearStringSignalRequest
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

(defclass vrep_common::simRosGetAndClearStringSignalResponse
  :super ros::object
  :slots (_result _signalValue ))

(defmethod vrep_common::simRosGetAndClearStringSignalResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:signalValue __signalValue) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _signalValue (string __signalValue))
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
    ;; string _signalValue
    4 (length _signalValue)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _signalValue
       (write-long (length _signalValue) s) (princ _signalValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _signalValue
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signalValue (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetAndClearStringSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetAndClearStringSignal :md5sum-) "2404c94dd63ca66111460f0d88cb7f64")
(setf (get vrep_common::simRosGetAndClearStringSignal :datatype-) "vrep_common/simRosGetAndClearStringSignal")
(setf (get vrep_common::simRosGetAndClearStringSignal :request) vrep_common::simRosGetAndClearStringSignalRequest)
(setf (get vrep_common::simRosGetAndClearStringSignal :response) vrep_common::simRosGetAndClearStringSignalResponse)

(defmethod vrep_common::simRosGetAndClearStringSignalRequest
  (:response () (instance vrep_common::simRosGetAndClearStringSignalResponse :init)))

(setf (get vrep_common::simRosGetAndClearStringSignalRequest :md5sum-) "2404c94dd63ca66111460f0d88cb7f64")
(setf (get vrep_common::simRosGetAndClearStringSignalRequest :datatype-) "vrep_common/simRosGetAndClearStringSignalRequest")
(setf (get vrep_common::simRosGetAndClearStringSignalRequest :definition-)
      "



string signalName
---
int32 result
string signalValue

")

(setf (get vrep_common::simRosGetAndClearStringSignalResponse :md5sum-) "2404c94dd63ca66111460f0d88cb7f64")
(setf (get vrep_common::simRosGetAndClearStringSignalResponse :datatype-) "vrep_common/simRosGetAndClearStringSignalResponse")
(setf (get vrep_common::simRosGetAndClearStringSignalResponse :definition-)
      "



string signalName
---
int32 result
string signalValue

")



(provide :vrep_common/simRosGetAndClearStringSignal "2404c94dd63ca66111460f0d88cb7f64")


