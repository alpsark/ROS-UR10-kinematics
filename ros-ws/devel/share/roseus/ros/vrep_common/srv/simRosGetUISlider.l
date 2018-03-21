;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetUISlider)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetUISlider (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETUISLIDER")
  (make-package "VREP_COMMON::SIMROSGETUISLIDER"))
(unless (find-package "VREP_COMMON::SIMROSGETUISLIDERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETUISLIDERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETUISLIDERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETUISLIDERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetUISliderRequest
  :super ros::object
  :slots (_uiHandle _buttonID ))

(defmethod vrep_common::simRosGetUISliderRequest
  (:init
   (&key
    ((:uiHandle __uiHandle) 0)
    ((:buttonID __buttonID) 0)
    )
   (send-super :init)
   (setq _uiHandle (round __uiHandle))
   (setq _buttonID (round __buttonID))
   self)
  (:uiHandle
   (&optional __uiHandle)
   (if __uiHandle (setq _uiHandle __uiHandle)) _uiHandle)
  (:buttonID
   (&optional __buttonID)
   (if __buttonID (setq _buttonID __buttonID)) _buttonID)
  (:serialization-length
   ()
   (+
    ;; int32 _uiHandle
    4
    ;; int32 _buttonID
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _uiHandle
     (setq _uiHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _buttonID
     (setq _buttonID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetUISliderResponse
  :super ros::object
  :slots (_position ))

(defmethod vrep_common::simRosGetUISliderResponse
  (:init
   (&key
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _position
       (write-long _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetUISlider
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetUISlider :md5sum-) "5406790310ec56ad5fb998c1037f3650")
(setf (get vrep_common::simRosGetUISlider :datatype-) "vrep_common/simRosGetUISlider")
(setf (get vrep_common::simRosGetUISlider :request) vrep_common::simRosGetUISliderRequest)
(setf (get vrep_common::simRosGetUISlider :response) vrep_common::simRosGetUISliderResponse)

(defmethod vrep_common::simRosGetUISliderRequest
  (:response () (instance vrep_common::simRosGetUISliderResponse :init)))

(setf (get vrep_common::simRosGetUISliderRequest :md5sum-) "5406790310ec56ad5fb998c1037f3650")
(setf (get vrep_common::simRosGetUISliderRequest :datatype-) "vrep_common/simRosGetUISliderRequest")
(setf (get vrep_common::simRosGetUISliderRequest :definition-)
      "



int32 uiHandle
int32 buttonID
---
int32 position

")

(setf (get vrep_common::simRosGetUISliderResponse :md5sum-) "5406790310ec56ad5fb998c1037f3650")
(setf (get vrep_common::simRosGetUISliderResponse :datatype-) "vrep_common/simRosGetUISliderResponse")
(setf (get vrep_common::simRosGetUISliderResponse :definition-)
      "



int32 uiHandle
int32 buttonID
---
int32 position

")



(provide :vrep_common/simRosGetUISlider "5406790310ec56ad5fb998c1037f3650")


