;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetDialogResult)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetDialogResult (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETDIALOGRESULT")
  (make-package "VREP_COMMON::SIMROSGETDIALOGRESULT"))
(unless (find-package "VREP_COMMON::SIMROSGETDIALOGRESULTREQUEST")
  (make-package "VREP_COMMON::SIMROSGETDIALOGRESULTREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETDIALOGRESULTRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETDIALOGRESULTRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetDialogResultRequest
  :super ros::object
  :slots (_dialogHandle ))

(defmethod vrep_common::simRosGetDialogResultRequest
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

(defclass vrep_common::simRosGetDialogResultResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosGetDialogResultResponse
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

(defclass vrep_common::simRosGetDialogResult
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetDialogResult :md5sum-) "3a2c67a393403ca4628ae721d28678fb")
(setf (get vrep_common::simRosGetDialogResult :datatype-) "vrep_common/simRosGetDialogResult")
(setf (get vrep_common::simRosGetDialogResult :request) vrep_common::simRosGetDialogResultRequest)
(setf (get vrep_common::simRosGetDialogResult :response) vrep_common::simRosGetDialogResultResponse)

(defmethod vrep_common::simRosGetDialogResultRequest
  (:response () (instance vrep_common::simRosGetDialogResultResponse :init)))

(setf (get vrep_common::simRosGetDialogResultRequest :md5sum-) "3a2c67a393403ca4628ae721d28678fb")
(setf (get vrep_common::simRosGetDialogResultRequest :datatype-) "vrep_common/simRosGetDialogResultRequest")
(setf (get vrep_common::simRosGetDialogResultRequest :definition-)
      "



int32 dialogHandle
---
int32 result

")

(setf (get vrep_common::simRosGetDialogResultResponse :md5sum-) "3a2c67a393403ca4628ae721d28678fb")
(setf (get vrep_common::simRosGetDialogResultResponse :datatype-) "vrep_common/simRosGetDialogResultResponse")
(setf (get vrep_common::simRosGetDialogResultResponse :definition-)
      "



int32 dialogHandle
---
int32 result

")



(provide :vrep_common/simRosGetDialogResult "3a2c67a393403ca4628ae721d28678fb")


