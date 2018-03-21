;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetDialogInput)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetDialogInput (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETDIALOGINPUT")
  (make-package "VREP_COMMON::SIMROSGETDIALOGINPUT"))
(unless (find-package "VREP_COMMON::SIMROSGETDIALOGINPUTREQUEST")
  (make-package "VREP_COMMON::SIMROSGETDIALOGINPUTREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETDIALOGINPUTRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETDIALOGINPUTRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetDialogInputRequest
  :super ros::object
  :slots (_dialogHandle ))

(defmethod vrep_common::simRosGetDialogInputRequest
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

(defclass vrep_common::simRosGetDialogInputResponse
  :super ros::object
  :slots (_result _input ))

(defmethod vrep_common::simRosGetDialogInputResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:input __input) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _input (string __input))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _input
    4 (length _input)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _input
       (write-long (length _input) s) (princ _input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetDialogInput
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetDialogInput :md5sum-) "a7a320351d6344ea2112d3892daa9e7f")
(setf (get vrep_common::simRosGetDialogInput :datatype-) "vrep_common/simRosGetDialogInput")
(setf (get vrep_common::simRosGetDialogInput :request) vrep_common::simRosGetDialogInputRequest)
(setf (get vrep_common::simRosGetDialogInput :response) vrep_common::simRosGetDialogInputResponse)

(defmethod vrep_common::simRosGetDialogInputRequest
  (:response () (instance vrep_common::simRosGetDialogInputResponse :init)))

(setf (get vrep_common::simRosGetDialogInputRequest :md5sum-) "a7a320351d6344ea2112d3892daa9e7f")
(setf (get vrep_common::simRosGetDialogInputRequest :datatype-) "vrep_common/simRosGetDialogInputRequest")
(setf (get vrep_common::simRosGetDialogInputRequest :definition-)
      "



int32 dialogHandle
---
int32 result
string input

")

(setf (get vrep_common::simRosGetDialogInputResponse :md5sum-) "a7a320351d6344ea2112d3892daa9e7f")
(setf (get vrep_common::simRosGetDialogInputResponse :datatype-) "vrep_common/simRosGetDialogInputResponse")
(setf (get vrep_common::simRosGetDialogInputResponse :definition-)
      "



int32 dialogHandle
---
int32 result
string input

")



(provide :vrep_common/simRosGetDialogInput "a7a320351d6344ea2112d3892daa9e7f")


