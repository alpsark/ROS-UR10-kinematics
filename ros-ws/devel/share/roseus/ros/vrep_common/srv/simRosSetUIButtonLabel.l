;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetUIButtonLabel)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetUIButtonLabel (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETUIBUTTONLABEL")
  (make-package "VREP_COMMON::SIMROSSETUIBUTTONLABEL"))
(unless (find-package "VREP_COMMON::SIMROSSETUIBUTTONLABELREQUEST")
  (make-package "VREP_COMMON::SIMROSSETUIBUTTONLABELREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETUIBUTTONLABELRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETUIBUTTONLABELRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetUIButtonLabelRequest
  :super ros::object
  :slots (_uiHandle _buttonID _upStateLabel _downStateLabel ))

(defmethod vrep_common::simRosSetUIButtonLabelRequest
  (:init
   (&key
    ((:uiHandle __uiHandle) 0)
    ((:buttonID __buttonID) 0)
    ((:upStateLabel __upStateLabel) "")
    ((:downStateLabel __downStateLabel) "")
    )
   (send-super :init)
   (setq _uiHandle (round __uiHandle))
   (setq _buttonID (round __buttonID))
   (setq _upStateLabel (string __upStateLabel))
   (setq _downStateLabel (string __downStateLabel))
   self)
  (:uiHandle
   (&optional __uiHandle)
   (if __uiHandle (setq _uiHandle __uiHandle)) _uiHandle)
  (:buttonID
   (&optional __buttonID)
   (if __buttonID (setq _buttonID __buttonID)) _buttonID)
  (:upStateLabel
   (&optional __upStateLabel)
   (if __upStateLabel (setq _upStateLabel __upStateLabel)) _upStateLabel)
  (:downStateLabel
   (&optional __downStateLabel)
   (if __downStateLabel (setq _downStateLabel __downStateLabel)) _downStateLabel)
  (:serialization-length
   ()
   (+
    ;; int32 _uiHandle
    4
    ;; int32 _buttonID
    4
    ;; string _upStateLabel
    4 (length _upStateLabel)
    ;; string _downStateLabel
    4 (length _downStateLabel)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _uiHandle
       (write-long _uiHandle s)
     ;; int32 _buttonID
       (write-long _buttonID s)
     ;; string _upStateLabel
       (write-long (length _upStateLabel) s) (princ _upStateLabel s)
     ;; string _downStateLabel
       (write-long (length _downStateLabel) s) (princ _downStateLabel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _uiHandle
     (setq _uiHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _buttonID
     (setq _buttonID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _upStateLabel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _upStateLabel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _downStateLabel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _downStateLabel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosSetUIButtonLabelResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetUIButtonLabelResponse
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

(defclass vrep_common::simRosSetUIButtonLabel
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetUIButtonLabel :md5sum-) "43f15cd21d5f9887f83532420e4a3463")
(setf (get vrep_common::simRosSetUIButtonLabel :datatype-) "vrep_common/simRosSetUIButtonLabel")
(setf (get vrep_common::simRosSetUIButtonLabel :request) vrep_common::simRosSetUIButtonLabelRequest)
(setf (get vrep_common::simRosSetUIButtonLabel :response) vrep_common::simRosSetUIButtonLabelResponse)

(defmethod vrep_common::simRosSetUIButtonLabelRequest
  (:response () (instance vrep_common::simRosSetUIButtonLabelResponse :init)))

(setf (get vrep_common::simRosSetUIButtonLabelRequest :md5sum-) "43f15cd21d5f9887f83532420e4a3463")
(setf (get vrep_common::simRosSetUIButtonLabelRequest :datatype-) "vrep_common/simRosSetUIButtonLabelRequest")
(setf (get vrep_common::simRosSetUIButtonLabelRequest :definition-)
      "



int32 uiHandle
int32 buttonID
string upStateLabel
string downStateLabel
---
int32 result

")

(setf (get vrep_common::simRosSetUIButtonLabelResponse :md5sum-) "43f15cd21d5f9887f83532420e4a3463")
(setf (get vrep_common::simRosSetUIButtonLabelResponse :datatype-) "vrep_common/simRosSetUIButtonLabelResponse")
(setf (get vrep_common::simRosSetUIButtonLabelResponse :definition-)
      "



int32 uiHandle
int32 buttonID
string upStateLabel
string downStateLabel
---
int32 result

")



(provide :vrep_common/simRosSetUIButtonLabel "43f15cd21d5f9887f83532420e4a3463")


