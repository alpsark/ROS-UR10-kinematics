;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetModelProperty)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetModelProperty (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETMODELPROPERTY")
  (make-package "VREP_COMMON::SIMROSGETMODELPROPERTY"))
(unless (find-package "VREP_COMMON::SIMROSGETMODELPROPERTYREQUEST")
  (make-package "VREP_COMMON::SIMROSGETMODELPROPERTYREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETMODELPROPERTYRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETMODELPROPERTYRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetModelPropertyRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetModelPropertyRequest
  (:init
   (&key
    ((:handle __handle) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetModelPropertyResponse
  :super ros::object
  :slots (_propertyValue ))

(defmethod vrep_common::simRosGetModelPropertyResponse
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

(defclass vrep_common::simRosGetModelProperty
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetModelProperty :md5sum-) "a54fb13fa756ea26f936de88d4121319")
(setf (get vrep_common::simRosGetModelProperty :datatype-) "vrep_common/simRosGetModelProperty")
(setf (get vrep_common::simRosGetModelProperty :request) vrep_common::simRosGetModelPropertyRequest)
(setf (get vrep_common::simRosGetModelProperty :response) vrep_common::simRosGetModelPropertyResponse)

(defmethod vrep_common::simRosGetModelPropertyRequest
  (:response () (instance vrep_common::simRosGetModelPropertyResponse :init)))

(setf (get vrep_common::simRosGetModelPropertyRequest :md5sum-) "a54fb13fa756ea26f936de88d4121319")
(setf (get vrep_common::simRosGetModelPropertyRequest :datatype-) "vrep_common/simRosGetModelPropertyRequest")
(setf (get vrep_common::simRosGetModelPropertyRequest :definition-)
      "



int32 handle
---
int32 propertyValue

")

(setf (get vrep_common::simRosGetModelPropertyResponse :md5sum-) "a54fb13fa756ea26f936de88d4121319")
(setf (get vrep_common::simRosGetModelPropertyResponse :datatype-) "vrep_common/simRosGetModelPropertyResponse")
(setf (get vrep_common::simRosGetModelPropertyResponse :definition-)
      "



int32 handle
---
int32 propertyValue

")



(provide :vrep_common/simRosGetModelProperty "a54fb13fa756ea26f936de88d4121319")


