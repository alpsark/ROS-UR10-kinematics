;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetStringSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetStringSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETSTRINGSIGNAL")
  (make-package "VREP_COMMON::SIMROSSETSTRINGSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSSETSTRINGSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSSETSTRINGSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETSTRINGSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETSTRINGSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetStringSignalRequest
  :super ros::object
  :slots (_signalName _signalValue ))

(defmethod vrep_common::simRosSetStringSignalRequest
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

(defclass vrep_common::simRosSetStringSignalResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetStringSignalResponse
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

(defclass vrep_common::simRosSetStringSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetStringSignal :md5sum-) "c49759e205be8f8195cc764a3a6b6c4d")
(setf (get vrep_common::simRosSetStringSignal :datatype-) "vrep_common/simRosSetStringSignal")
(setf (get vrep_common::simRosSetStringSignal :request) vrep_common::simRosSetStringSignalRequest)
(setf (get vrep_common::simRosSetStringSignal :response) vrep_common::simRosSetStringSignalResponse)

(defmethod vrep_common::simRosSetStringSignalRequest
  (:response () (instance vrep_common::simRosSetStringSignalResponse :init)))

(setf (get vrep_common::simRosSetStringSignalRequest :md5sum-) "c49759e205be8f8195cc764a3a6b6c4d")
(setf (get vrep_common::simRosSetStringSignalRequest :datatype-) "vrep_common/simRosSetStringSignalRequest")
(setf (get vrep_common::simRosSetStringSignalRequest :definition-)
      "



string signalName
string signalValue
---
int32 result

")

(setf (get vrep_common::simRosSetStringSignalResponse :md5sum-) "c49759e205be8f8195cc764a3a6b6c4d")
(setf (get vrep_common::simRosSetStringSignalResponse :datatype-) "vrep_common/simRosSetStringSignalResponse")
(setf (get vrep_common::simRosSetStringSignalResponse :definition-)
      "



string signalName
string signalValue
---
int32 result

")



(provide :vrep_common/simRosSetStringSignal "c49759e205be8f8195cc764a3a6b6c4d")


