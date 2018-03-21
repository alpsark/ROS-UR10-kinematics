;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetModelProperty)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetModelProperty (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETMODELPROPERTY")
  (make-package "VREP_COMMON::SIMROSSETMODELPROPERTY"))
(unless (find-package "VREP_COMMON::SIMROSSETMODELPROPERTYREQUEST")
  (make-package "VREP_COMMON::SIMROSSETMODELPROPERTYREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETMODELPROPERTYRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETMODELPROPERTYRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetModelPropertyRequest
  :super ros::object
  :slots (_handle _propertyValue ))

(defmethod vrep_common::simRosSetModelPropertyRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:propertyValue __propertyValue) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _propertyValue (round __propertyValue))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:propertyValue
   (&optional __propertyValue)
   (if __propertyValue (setq _propertyValue __propertyValue)) _propertyValue)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _propertyValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _propertyValue
       (write-long _propertyValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _propertyValue
     (setq _propertyValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosSetModelPropertyResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetModelPropertyResponse
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

(defclass vrep_common::simRosSetModelProperty
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetModelProperty :md5sum-) "7f97a83fe47ddd7d7a57ba9fe6623621")
(setf (get vrep_common::simRosSetModelProperty :datatype-) "vrep_common/simRosSetModelProperty")
(setf (get vrep_common::simRosSetModelProperty :request) vrep_common::simRosSetModelPropertyRequest)
(setf (get vrep_common::simRosSetModelProperty :response) vrep_common::simRosSetModelPropertyResponse)

(defmethod vrep_common::simRosSetModelPropertyRequest
  (:response () (instance vrep_common::simRosSetModelPropertyResponse :init)))

(setf (get vrep_common::simRosSetModelPropertyRequest :md5sum-) "7f97a83fe47ddd7d7a57ba9fe6623621")
(setf (get vrep_common::simRosSetModelPropertyRequest :datatype-) "vrep_common/simRosSetModelPropertyRequest")
(setf (get vrep_common::simRosSetModelPropertyRequest :definition-)
      "



int32 handle
int32 propertyValue
---
int32 result

")

(setf (get vrep_common::simRosSetModelPropertyResponse :md5sum-) "7f97a83fe47ddd7d7a57ba9fe6623621")
(setf (get vrep_common::simRosSetModelPropertyResponse :datatype-) "vrep_common/simRosSetModelPropertyResponse")
(setf (get vrep_common::simRosSetModelPropertyResponse :definition-)
      "



int32 handle
int32 propertyValue
---
int32 result

")



(provide :vrep_common/simRosSetModelProperty "7f97a83fe47ddd7d7a57ba9fe6623621")


