;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetUIButtonProperty)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetUIButtonProperty (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETUIBUTTONPROPERTY")
  (make-package "VREP_COMMON::SIMROSSETUIBUTTONPROPERTY"))
(unless (find-package "VREP_COMMON::SIMROSSETUIBUTTONPROPERTYREQUEST")
  (make-package "VREP_COMMON::SIMROSSETUIBUTTONPROPERTYREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETUIBUTTONPROPERTYRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETUIBUTTONPROPERTYRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetUIButtonPropertyRequest
  :super ros::object
  :slots (_uiHandle _buttonID _propertyValue ))

(defmethod vrep_common::simRosSetUIButtonPropertyRequest
  (:init
   (&key
    ((:uiHandle __uiHandle) 0)
    ((:buttonID __buttonID) 0)
    ((:propertyValue __propertyValue) 0)
    )
   (send-super :init)
   (setq _uiHandle (round __uiHandle))
   (setq _buttonID (round __buttonID))
   (setq _propertyValue (round __propertyValue))
   self)
  (:uiHandle
   (&optional __uiHandle)
   (if __uiHandle (setq _uiHandle __uiHandle)) _uiHandle)
  (:buttonID
   (&optional __buttonID)
   (if __buttonID (setq _buttonID __buttonID)) _buttonID)
  (:propertyValue
   (&optional __propertyValue)
   (if __propertyValue (setq _propertyValue __propertyValue)) _propertyValue)
  (:serialization-length
   ()
   (+
    ;; int32 _uiHandle
    4
    ;; int32 _buttonID
    4
    ;; int32 _propertyValue
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
     ;; int32 _propertyValue
       (write-long _propertyValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _uiHandle
     (setq _uiHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _buttonID
     (setq _buttonID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _propertyValue
     (setq _propertyValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetUIButtonPropertyResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetUIButtonPropertyResponse
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

(defclass vrep_common::simRosSetUIButtonProperty
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetUIButtonProperty :md5sum-) "312d7f2f54e5998963314dbff36626e3")
(setf (get vrep_common::simRosSetUIButtonProperty :datatype-) "vrep_common/simRosSetUIButtonProperty")
(setf (get vrep_common::simRosSetUIButtonProperty :request) vrep_common::simRosSetUIButtonPropertyRequest)
(setf (get vrep_common::simRosSetUIButtonProperty :response) vrep_common::simRosSetUIButtonPropertyResponse)

(defmethod vrep_common::simRosSetUIButtonPropertyRequest
  (:response () (instance vrep_common::simRosSetUIButtonPropertyResponse :init)))

(setf (get vrep_common::simRosSetUIButtonPropertyRequest :md5sum-) "312d7f2f54e5998963314dbff36626e3")
(setf (get vrep_common::simRosSetUIButtonPropertyRequest :datatype-) "vrep_common/simRosSetUIButtonPropertyRequest")
(setf (get vrep_common::simRosSetUIButtonPropertyRequest :definition-)
      "



int32 uiHandle
int32 buttonID
int32 propertyValue
---
int32 result

")

(setf (get vrep_common::simRosSetUIButtonPropertyResponse :md5sum-) "312d7f2f54e5998963314dbff36626e3")
(setf (get vrep_common::simRosSetUIButtonPropertyResponse :datatype-) "vrep_common/simRosSetUIButtonPropertyResponse")
(setf (get vrep_common::simRosSetUIButtonPropertyResponse :definition-)
      "



int32 uiHandle
int32 buttonID
int32 propertyValue
---
int32 result

")



(provide :vrep_common/simRosSetUIButtonProperty "312d7f2f54e5998963314dbff36626e3")


