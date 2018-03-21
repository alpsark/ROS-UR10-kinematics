;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosAuxiliaryConsoleShow)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosAuxiliaryConsoleShow (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLESHOW")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLESHOW"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLESHOWREQUEST")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLESHOWREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLESHOWRESPONSE")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLESHOWRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosAuxiliaryConsoleShowRequest
  :super ros::object
  :slots (_consoleHandle _showState ))

(defmethod vrep_common::simRosAuxiliaryConsoleShowRequest
  (:init
   (&key
    ((:consoleHandle __consoleHandle) 0)
    ((:showState __showState) 0)
    )
   (send-super :init)
   (setq _consoleHandle (round __consoleHandle))
   (setq _showState (round __showState))
   self)
  (:consoleHandle
   (&optional __consoleHandle)
   (if __consoleHandle (setq _consoleHandle __consoleHandle)) _consoleHandle)
  (:showState
   (&optional __showState)
   (if __showState (setq _showState __showState)) _showState)
  (:serialization-length
   ()
   (+
    ;; int32 _consoleHandle
    4
    ;; uint8 _showState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _consoleHandle
       (write-long _consoleHandle s)
     ;; uint8 _showState
       (write-byte _showState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _consoleHandle
     (setq _consoleHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _showState
     (setq _showState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrep_common::simRosAuxiliaryConsoleShowResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosAuxiliaryConsoleShowResponse
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

(defclass vrep_common::simRosAuxiliaryConsoleShow
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosAuxiliaryConsoleShow :md5sum-) "0441070f5e93cc5cd766aa59d6093443")
(setf (get vrep_common::simRosAuxiliaryConsoleShow :datatype-) "vrep_common/simRosAuxiliaryConsoleShow")
(setf (get vrep_common::simRosAuxiliaryConsoleShow :request) vrep_common::simRosAuxiliaryConsoleShowRequest)
(setf (get vrep_common::simRosAuxiliaryConsoleShow :response) vrep_common::simRosAuxiliaryConsoleShowResponse)

(defmethod vrep_common::simRosAuxiliaryConsoleShowRequest
  (:response () (instance vrep_common::simRosAuxiliaryConsoleShowResponse :init)))

(setf (get vrep_common::simRosAuxiliaryConsoleShowRequest :md5sum-) "0441070f5e93cc5cd766aa59d6093443")
(setf (get vrep_common::simRosAuxiliaryConsoleShowRequest :datatype-) "vrep_common/simRosAuxiliaryConsoleShowRequest")
(setf (get vrep_common::simRosAuxiliaryConsoleShowRequest :definition-)
      "



int32 consoleHandle
uint8 showState
---
int32 result


")

(setf (get vrep_common::simRosAuxiliaryConsoleShowResponse :md5sum-) "0441070f5e93cc5cd766aa59d6093443")
(setf (get vrep_common::simRosAuxiliaryConsoleShowResponse :datatype-) "vrep_common/simRosAuxiliaryConsoleShowResponse")
(setf (get vrep_common::simRosAuxiliaryConsoleShowResponse :definition-)
      "



int32 consoleHandle
uint8 showState
---
int32 result


")



(provide :vrep_common/simRosAuxiliaryConsoleShow "0441070f5e93cc5cd766aa59d6093443")


