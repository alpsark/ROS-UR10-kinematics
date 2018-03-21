;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetObjectParent)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetObjectParent (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPARENT")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPARENT"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPARENTREQUEST")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPARENTREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPARENTRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPARENTRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetObjectParentRequest
  :super ros::object
  :slots (_handle _parentHandle _keepInPlace ))

(defmethod vrep_common::simRosSetObjectParentRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:parentHandle __parentHandle) 0)
    ((:keepInPlace __keepInPlace) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _parentHandle (round __parentHandle))
   (setq _keepInPlace (round __keepInPlace))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:parentHandle
   (&optional __parentHandle)
   (if __parentHandle (setq _parentHandle __parentHandle)) _parentHandle)
  (:keepInPlace
   (&optional __keepInPlace)
   (if __keepInPlace (setq _keepInPlace __keepInPlace)) _keepInPlace)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _parentHandle
    4
    ;; uint8 _keepInPlace
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _parentHandle
       (write-long _parentHandle s)
     ;; uint8 _keepInPlace
       (write-byte _keepInPlace s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parentHandle
     (setq _parentHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _keepInPlace
     (setq _keepInPlace (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectParentResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetObjectParentResponse
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

(defclass vrep_common::simRosSetObjectParent
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetObjectParent :md5sum-) "3fe38263068d68ac8ee5d5462c95bf28")
(setf (get vrep_common::simRosSetObjectParent :datatype-) "vrep_common/simRosSetObjectParent")
(setf (get vrep_common::simRosSetObjectParent :request) vrep_common::simRosSetObjectParentRequest)
(setf (get vrep_common::simRosSetObjectParent :response) vrep_common::simRosSetObjectParentResponse)

(defmethod vrep_common::simRosSetObjectParentRequest
  (:response () (instance vrep_common::simRosSetObjectParentResponse :init)))

(setf (get vrep_common::simRosSetObjectParentRequest :md5sum-) "3fe38263068d68ac8ee5d5462c95bf28")
(setf (get vrep_common::simRosSetObjectParentRequest :datatype-) "vrep_common/simRosSetObjectParentRequest")
(setf (get vrep_common::simRosSetObjectParentRequest :definition-)
      "



int32 handle
int32 parentHandle
uint8 keepInPlace
---
int32 result

")

(setf (get vrep_common::simRosSetObjectParentResponse :md5sum-) "3fe38263068d68ac8ee5d5462c95bf28")
(setf (get vrep_common::simRosSetObjectParentResponse :datatype-) "vrep_common/simRosSetObjectParentResponse")
(setf (get vrep_common::simRosSetObjectParentResponse :definition-)
      "



int32 handle
int32 parentHandle
uint8 keepInPlace
---
int32 result

")



(provide :vrep_common/simRosSetObjectParent "3fe38263068d68ac8ee5d5462c95bf28")


