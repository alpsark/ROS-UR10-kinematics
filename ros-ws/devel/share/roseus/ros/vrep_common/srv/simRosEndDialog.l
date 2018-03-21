;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosEndDialog)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosEndDialog (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSENDDIALOG")
  (make-package "VREP_COMMON::SIMROSENDDIALOG"))
(unless (find-package "VREP_COMMON::SIMROSENDDIALOGREQUEST")
  (make-package "VREP_COMMON::SIMROSENDDIALOGREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSENDDIALOGRESPONSE")
  (make-package "VREP_COMMON::SIMROSENDDIALOGRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosEndDialogRequest
  :super ros::object
  :slots (_dialogHandle ))

(defmethod vrep_common::simRosEndDialogRequest
  (:init
   (&key
    ((:dialogHandle __dialogHandle) 0)
    )
   (send-super :init)
   (setq _dialogHandle (round __dialogHandle))
   self)
  (:dialogHandle
   (&optional __dialogHandle)
   (if __dialogHandle (setq _dialogHandle __dialogHandle)) _dialogHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _dialogHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dialogHandle
       (write-long _dialogHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dialogHandle
     (setq _dialogHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosEndDialogResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosEndDialogResponse
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

(defclass vrep_common::simRosEndDialog
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosEndDialog :md5sum-) "3a2c67a393403ca4628ae721d28678fb")
(setf (get vrep_common::simRosEndDialog :datatype-) "vrep_common/simRosEndDialog")
(setf (get vrep_common::simRosEndDialog :request) vrep_common::simRosEndDialogRequest)
(setf (get vrep_common::simRosEndDialog :response) vrep_common::simRosEndDialogResponse)

(defmethod vrep_common::simRosEndDialogRequest
  (:response () (instance vrep_common::simRosEndDialogResponse :init)))

(setf (get vrep_common::simRosEndDialogRequest :md5sum-) "3a2c67a393403ca4628ae721d28678fb")
(setf (get vrep_common::simRosEndDialogRequest :datatype-) "vrep_common/simRosEndDialogRequest")
(setf (get vrep_common::simRosEndDialogRequest :definition-)
      "



int32 dialogHandle
---
int32 result

")

(setf (get vrep_common::simRosEndDialogResponse :md5sum-) "3a2c67a393403ca4628ae721d28678fb")
(setf (get vrep_common::simRosEndDialogResponse :datatype-) "vrep_common/simRosEndDialogResponse")
(setf (get vrep_common::simRosEndDialogResponse :definition-)
      "



int32 dialogHandle
---
int32 result

")



(provide :vrep_common/simRosEndDialog "3a2c67a393403ca4628ae721d28678fb")


