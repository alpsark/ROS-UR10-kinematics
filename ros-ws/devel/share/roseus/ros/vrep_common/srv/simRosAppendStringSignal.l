;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosAppendStringSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosAppendStringSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSAPPENDSTRINGSIGNAL")
  (make-package "VREP_COMMON::SIMROSAPPENDSTRINGSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSAPPENDSTRINGSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSAPPENDSTRINGSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSAPPENDSTRINGSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSAPPENDSTRINGSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosAppendStringSignalRequest
  :super ros::object
  :slots (_signalName _signalValue ))

(defmethod vrep_common::simRosAppendStringSignalRequest
  (:init
   (&key
    ((:signalName __signalName) "")
    ((:signalValue __signalValue) "")
    )
   (send-super :init)
   (setq _signalName (string __signalName))
   (setq _signalValue (string __signalValue))
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
    ;; string _signalValue
    4 (length _signalValue)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signalName
       (write-long (length _signalName) s) (princ _signalName s)
     ;; string _signalValue
       (write-long (length _signalValue) s) (princ _signalValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signalName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signalName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _signalValue
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signalValue (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosAppendStringSignalResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosAppendStringSignalResponse
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

(defclass vrep_common::simRosAppendStringSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosAppendStringSignal :md5sum-) "c49759e205be8f8195cc764a3a6b6c4d")
(setf (get vrep_common::simRosAppendStringSignal :datatype-) "vrep_common/simRosAppendStringSignal")
(setf (get vrep_common::simRosAppendStringSignal :request) vrep_common::simRosAppendStringSignalRequest)
(setf (get vrep_common::simRosAppendStringSignal :response) vrep_common::simRosAppendStringSignalResponse)

(defmethod vrep_common::simRosAppendStringSignalRequest
  (:response () (instance vrep_common::simRosAppendStringSignalResponse :init)))

(setf (get vrep_common::simRosAppendStringSignalRequest :md5sum-) "c49759e205be8f8195cc764a3a6b6c4d")
(setf (get vrep_common::simRosAppendStringSignalRequest :datatype-) "vrep_common/simRosAppendStringSignalRequest")
(setf (get vrep_common::simRosAppendStringSignalRequest :definition-)
      "



string signalName
string signalValue
---
int32 result

")

(setf (get vrep_common::simRosAppendStringSignalResponse :md5sum-) "c49759e205be8f8195cc764a3a6b6c4d")
(setf (get vrep_common::simRosAppendStringSignalResponse :datatype-) "vrep_common/simRosAppendStringSignalResponse")
(setf (get vrep_common::simRosAppendStringSignalResponse :definition-)
      "



string signalName
string signalValue
---
int32 result

")



(provide :vrep_common/simRosAppendStringSignal "c49759e205be8f8195cc764a3a6b6c4d")


