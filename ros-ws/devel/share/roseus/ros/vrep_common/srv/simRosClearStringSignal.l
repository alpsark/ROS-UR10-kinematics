;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosClearStringSignal)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosClearStringSignal (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSCLEARSTRINGSIGNAL")
  (make-package "VREP_COMMON::SIMROSCLEARSTRINGSIGNAL"))
(unless (find-package "VREP_COMMON::SIMROSCLEARSTRINGSIGNALREQUEST")
  (make-package "VREP_COMMON::SIMROSCLEARSTRINGSIGNALREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSCLEARSTRINGSIGNALRESPONSE")
  (make-package "VREP_COMMON::SIMROSCLEARSTRINGSIGNALRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosClearStringSignalRequest
  :super ros::object
  :slots (_signalName ))

(defmethod vrep_common::simRosClearStringSignalRequest
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

(defclass vrep_common::simRosClearStringSignalResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosClearStringSignalResponse
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

(defclass vrep_common::simRosClearStringSignal
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosClearStringSignal :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearStringSignal :datatype-) "vrep_common/simRosClearStringSignal")
(setf (get vrep_common::simRosClearStringSignal :request) vrep_common::simRosClearStringSignalRequest)
(setf (get vrep_common::simRosClearStringSignal :response) vrep_common::simRosClearStringSignalResponse)

(defmethod vrep_common::simRosClearStringSignalRequest
  (:response () (instance vrep_common::simRosClearStringSignalResponse :init)))

(setf (get vrep_common::simRosClearStringSignalRequest :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearStringSignalRequest :datatype-) "vrep_common/simRosClearStringSignalRequest")
(setf (get vrep_common::simRosClearStringSignalRequest :definition-)
      "



string signalName
---
int32 result


")

(setf (get vrep_common::simRosClearStringSignalResponse :md5sum-) "78c7f457aa3ca9421b43a9c08cf8400a")
(setf (get vrep_common::simRosClearStringSignalResponse :datatype-) "vrep_common/simRosClearStringSignalResponse")
(setf (get vrep_common::simRosClearStringSignalResponse :definition-)
      "



string signalName
---
int32 result


")



(provide :vrep_common/simRosClearStringSignal "78c7f457aa3ca9421b43a9c08cf8400a")


