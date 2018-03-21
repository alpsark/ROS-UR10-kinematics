;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetUISlider)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetUISlider (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETUISLIDER")
  (make-package "VREP_COMMON::SIMROSSETUISLIDER"))
(unless (find-package "VREP_COMMON::SIMROSSETUISLIDERREQUEST")
  (make-package "VREP_COMMON::SIMROSSETUISLIDERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETUISLIDERRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETUISLIDERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetUISliderRequest
  :super ros::object
  :slots (_uiHandle _buttonID _position ))

(defmethod vrep_common::simRosSetUISliderRequest
  (:init
   (&key
    ((:uiHandle __uiHandle) 0)
    ((:buttonID __buttonID) 0)
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _uiHandle (round __uiHandle))
   (setq _buttonID (round __buttonID))
   (setq _position (round __position))
   self)
  (:uiHandle
   (&optional __uiHandle)
   (if __uiHandle (setq _uiHandle __uiHandle)) _uiHandle)
  (:buttonID
   (&optional __buttonID)
   (if __buttonID (setq _buttonID __buttonID)) _buttonID)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _uiHandle
    4
    ;; int32 _buttonID
    4
    ;; int32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _uiHandle
       (write-long _uiHandle s)
     ;; int32 _buttonID
       (write-long _buttonID s)
     ;; int32 _position
       (write-long _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _uiHandle
     (setq _uiHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _buttonID
     (setq _buttonID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetUISliderResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetUISliderResponse
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

(defclass vrep_common::simRosSetUISlider
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetUISlider :md5sum-) "a3a4f1222511591c647246b4904a9a10")
(setf (get vrep_common::simRosSetUISlider :datatype-) "vrep_common/simRosSetUISlider")
(setf (get vrep_common::simRosSetUISlider :request) vrep_common::simRosSetUISliderRequest)
(setf (get vrep_common::simRosSetUISlider :response) vrep_common::simRosSetUISliderResponse)

(defmethod vrep_common::simRosSetUISliderRequest
  (:response () (instance vrep_common::simRosSetUISliderResponse :init)))

(setf (get vrep_common::simRosSetUISliderRequest :md5sum-) "a3a4f1222511591c647246b4904a9a10")
(setf (get vrep_common::simRosSetUISliderRequest :datatype-) "vrep_common/simRosSetUISliderRequest")
(setf (get vrep_common::simRosSetUISliderRequest :definition-)
      "



int32 uiHandle
int32 buttonID
int32 position
---
int32 result

")

(setf (get vrep_common::simRosSetUISliderResponse :md5sum-) "a3a4f1222511591c647246b4904a9a10")
(setf (get vrep_common::simRosSetUISliderResponse :datatype-) "vrep_common/simRosSetUISliderResponse")
(setf (get vrep_common::simRosSetUISliderResponse :definition-)
      "



int32 uiHandle
int32 buttonID
int32 position
---
int32 result

")



(provide :vrep_common/simRosSetUISlider "a3a4f1222511591c647246b4904a9a10")


