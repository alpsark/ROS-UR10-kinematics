;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetIntegerSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetIntegerSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETINTEGERSIGNAL")
  (make-package "VREP_COMMON::SIMROSSETINTEGERSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSSETINTEGERSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSSETINTEGERSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETINTEGERSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETINTEGERSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetIntegerSignalRequest
  :super ros::object
  :slots (_signalName _signalValue ))

(defmethod vrep_common::simRosSetIntegerSignalRequest
  (:init
   (&key
    ((:signalName __signalName) "")
    ((:signalValue __signalValue) 0)
    )
   (send-super :init)
   (setq _signalName (string __signalName))
   (setq _signalValue (round __signalValue))
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
    ;; int32 _signalValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signalName
       (write-long (length _signalName) s) (princ _signalName s)
     ;; int32 _signalValue
       (write-long _signalValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signalName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signalName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _signalValue
     (setq _signalValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetIntegerSignalResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetIntegerSignalResponse
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

(defclass vrep_common::simRosSetIntegerSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetIntegerSignal :md5sum-) "6348838e968005d75ae2126a83942b2a")
(setf (get vrep_common::simRosSetIntegerSignal :datatype-) "vrep_common/simRosSetIntegerSignal")
(setf (get vrep_common::simRosSetIntegerSignal :request) vrep_common::simRosSetIntegerSignalRequest)
(setf (get vrep_common::simRosSetIntegerSignal :response) vrep_common::simRosSetIntegerSignalResponse)

(defmethod vrep_common::simRosSetIntegerSignalRequest
  (:response () (instance vrep_common::simRosSetIntegerSignalResponse :init)))

(setf (get vrep_common::simRosSetIntegerSignalRequest :md5sum-) "6348838e968005d75ae2126a83942b2a")
(setf (get vrep_common::simRosSetIntegerSignalRequest :datatype-) "vrep_common/simRosSetIntegerSignalRequest")
(setf (get vrep_common::simRosSetIntegerSignalRequest :definition-)
      "



string signalName
int32 signalValue
---
int32 result

")

(setf (get vrep_common::simRosSetIntegerSignalResponse :md5sum-) "6348838e968005d75ae2126a83942b2a")
(setf (get vrep_common::simRosSetIntegerSignalResponse :datatype-) "vrep_common/simRosSetIntegerSignalResponse")
(setf (get vrep_common::simRosSetIntegerSignalResponse :definition-)
      "



string signalName
int32 signalValue
---
int32 result

")



(provide :vrep_common/simRosSetIntegerSignal "6348838e968005d75ae2126a83942b2a")


