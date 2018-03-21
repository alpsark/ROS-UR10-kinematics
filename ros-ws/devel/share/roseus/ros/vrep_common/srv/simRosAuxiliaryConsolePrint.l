;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosAuxiliaryConsolePrint)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosAuxiliaryConsolePrint (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEPRINT")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEPRINT"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEPRINTREQUEST")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEPRINTREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEPRINTRESPONSE")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEPRINTRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosAuxiliaryConsolePrintRequest
  :super ros::object
  :slots (_consoleHandle _text ))

(defmethod vrep_common::simRosAuxiliaryConsolePrintRequest
  (:init
   (&key
    ((:consoleHandle __consoleHandle) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _consoleHandle (round __consoleHandle))
   (setq _text (string __text))
   self)
  (:consoleHandle
   (&optional __consoleHandle)
   (if __consoleHandle (setq _consoleHandle __consoleHandle)) _consoleHandle)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; int32 _consoleHandle
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _consoleHandle
       (write-long _consoleHandle s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _consoleHandle
     (setq _consoleHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosAuxiliaryConsolePrintResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosAuxiliaryConsolePrintResponse
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

(defclass vrep_common::simRosAuxiliaryConsolePrint
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosAuxiliaryConsolePrint :md5sum-) "9d84d1075d5165c5c1bafd9cf0faa6fd")
(setf (get vrep_common::simRosAuxiliaryConsolePrint :datatype-) "vrep_common/simRosAuxiliaryConsolePrint")
(setf (get vrep_common::simRosAuxiliaryConsolePrint :request) vrep_common::simRosAuxiliaryConsolePrintRequest)
(setf (get vrep_common::simRosAuxiliaryConsolePrint :response) vrep_common::simRosAuxiliaryConsolePrintResponse)

(defmethod vrep_common::simRosAuxiliaryConsolePrintRequest
  (:response () (instance vrep_common::simRosAuxiliaryConsolePrintResponse :init)))

(setf (get vrep_common::simRosAuxiliaryConsolePrintRequest :md5sum-) "9d84d1075d5165c5c1bafd9cf0faa6fd")
(setf (get vrep_common::simRosAuxiliaryConsolePrintRequest :datatype-) "vrep_common/simRosAuxiliaryConsolePrintRequest")
(setf (get vrep_common::simRosAuxiliaryConsolePrintRequest :definition-)
      "



int32 consoleHandle
string text
---
int32 result


")

(setf (get vrep_common::simRosAuxiliaryConsolePrintResponse :md5sum-) "9d84d1075d5165c5c1bafd9cf0faa6fd")
(setf (get vrep_common::simRosAuxiliaryConsolePrintResponse :datatype-) "vrep_common/simRosAuxiliaryConsolePrintResponse")
(setf (get vrep_common::simRosAuxiliaryConsolePrintResponse :definition-)
      "



int32 consoleHandle
string text
---
int32 result


")



(provide :vrep_common/simRosAuxiliaryConsolePrint "9d84d1075d5165c5c1bafd9cf0faa6fd")


