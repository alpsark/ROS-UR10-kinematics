;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetUIButtonProperty)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetUIButtonProperty (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETUIBUTTONPROPERTY")
  (make-package "VREP_COMMON::SIMROSGETUIBUTTONPROPERTY"))
(unless (find-package "VREP_COMMON::SIMROSGETUIBUTTONPROPERTYREQUEST")
  (make-package "VREP_COMMON::SIMROSGETUIBUTTONPROPERTYREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETUIBUTTONPROPERTYRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETUIBUTTONPROPERTYRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetUIButtonPropertyRequest
  :super ros::object
  :slots (_uiHandle _buttonID ))

(defmethod vrep_common::simRosGetUIButtonPropertyRequest
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

(defclass vrep_common::simRosGetUIButtonPropertyResponse
  :super ros::object
  :slots (_propertyValue ))

(defmethod vrep_common::simRosGetUIButtonPropertyResponse
  (:init
   (&key
    ((:propertyValue __propertyValue) 0)
    )
   (send-super :init)
   (setq _propertyValue (round __propertyValue))
   self)
  (:propertyValue
   (&optional __propertyValue)
   (if __propertyValue (setq _propertyValue __propertyValue)) _propertyValue)
  (:serialization-length
   ()
   (+
    ;; int32 _propertyValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _propertyValue
       (write-long _propertyValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _propertyValue
     (setq _propertyValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetUIButtonProperty
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetUIButtonProperty :md5sum-) "3c5af3530571fd8a5d18090795eb3f0c")
(setf (get vrep_common::simRosGetUIButtonProperty :datatype-) "vrep_common/simRosGetUIButtonProperty")
(setf (get vrep_common::simRosGetUIButtonProperty :request) vrep_common::simRosGetUIButtonPropertyRequest)
(setf (get vrep_common::simRosGetUIButtonProperty :response) vrep_common::simRosGetUIButtonPropertyResponse)

(defmethod vrep_common::simRosGetUIButtonPropertyRequest
  (:response () (instance vrep_common::simRosGetUIButtonPropertyResponse :init)))

(setf (get vrep_common::simRosGetUIButtonPropertyRequest :md5sum-) "3c5af3530571fd8a5d18090795eb3f0c")
(setf (get vrep_common::simRosGetUIButtonPropertyRequest :datatype-) "vrep_common/simRosGetUIButtonPropertyRequest")
(setf (get vrep_common::simRosGetUIButtonPropertyRequest :definition-)
      "



int32 uiHandle
int32 buttonID
---
int32 propertyValue

")

(setf (get vrep_common::simRosGetUIButtonPropertyResponse :md5sum-) "3c5af3530571fd8a5d18090795eb3f0c")
(setf (get vrep_common::simRosGetUIButtonPropertyResponse :datatype-) "vrep_common/simRosGetUIButtonPropertyResponse")
(setf (get vrep_common::simRosGetUIButtonPropertyResponse :definition-)
      "



int32 uiHandle
int32 buttonID
---
int32 propertyValue

")



(provide :vrep_common/simRosGetUIButtonProperty "3c5af3530571fd8a5d18090795eb3f0c")


