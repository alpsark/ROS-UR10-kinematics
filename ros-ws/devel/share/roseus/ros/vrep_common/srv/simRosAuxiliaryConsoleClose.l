;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosAuxiliaryConsoleClose)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosAuxiliaryConsoleClose (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLECLOSE")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLECLOSE"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLECLOSEREQUEST")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLECLOSEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLECLOSERESPONSE")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLECLOSERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosAuxiliaryConsoleCloseRequest
  :super ros::object
  :slots (_consoleHandle ))

(defmethod vrep_common::simRosAuxiliaryConsoleCloseRequest
  (:init
   (&key
    ((:consoleHandle __consoleHandle) 0)
    )
   (send-super :init)
   (setq _consoleHandle (round __consoleHandle))
   self)
  (:consoleHandle
   (&optional __consoleHandle)
   (if __consoleHandle (setq _consoleHandle __consoleHandle)) _consoleHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _consoleHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _consoleHandle
       (write-long _consoleHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _consoleHandle
     (setq _consoleHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosAuxiliaryConsoleCloseResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosAuxiliaryConsoleCloseResponse
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

(defclass vrep_common::simRosAuxiliaryConsoleClose
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosAuxiliaryConsoleClose :md5sum-) "fd2ff093438c8e1568be839b91a17ca1")
(setf (get vrep_common::simRosAuxiliaryConsoleClose :datatype-) "vrep_common/simRosAuxiliaryConsoleClose")
(setf (get vrep_common::simRosAuxiliaryConsoleClose :request) vrep_common::simRosAuxiliaryConsoleCloseRequest)
(setf (get vrep_common::simRosAuxiliaryConsoleClose :response) vrep_common::simRosAuxiliaryConsoleCloseResponse)

(defmethod vrep_common::simRosAuxiliaryConsoleCloseRequest
  (:response () (instance vrep_common::simRosAuxiliaryConsoleCloseResponse :init)))

(setf (get vrep_common::simRosAuxiliaryConsoleCloseRequest :md5sum-) "fd2ff093438c8e1568be839b91a17ca1")
(setf (get vrep_common::simRosAuxiliaryConsoleCloseRequest :datatype-) "vrep_common/simRosAuxiliaryConsoleCloseRequest")
(setf (get vrep_common::simRosAuxiliaryConsoleCloseRequest :definition-)
      "



int32 consoleHandle
---
int32 result


")

(setf (get vrep_common::simRosAuxiliaryConsoleCloseResponse :md5sum-) "fd2ff093438c8e1568be839b91a17ca1")
(setf (get vrep_common::simRosAuxiliaryConsoleCloseResponse :datatype-) "vrep_common/simRosAuxiliaryConsoleCloseResponse")
(setf (get vrep_common::simRosAuxiliaryConsoleCloseResponse :definition-)
      "



int32 consoleHandle
---
int32 result


")



(provide :vrep_common/simRosAuxiliaryConsoleClose "fd2ff093438c8e1568be839b91a17ca1")


