;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectParent)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectParent (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTPARENT")
  (make-package "VREP_COMMON::SIMROSGETOBJECTPARENT"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTPARENTREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTPARENTREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTPARENTRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTPARENTRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectParentRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetObjectParentRequest
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

(defclass vrep_common::simRosGetObjectParentResponse
  :super ros::object
  :slots (_parentHandle ))

(defmethod vrep_common::simRosGetObjectParentResponse
  (:init
   (&key
    ((:parentHandle __parentHandle) 0)
    )
   (send-super :init)
   (setq _parentHandle (round __parentHandle))
   self)
  (:parentHandle
   (&optional __parentHandle)
   (if __parentHandle (setq _parentHandle __parentHandle)) _parentHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _parentHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parentHandle
       (write-long _parentHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parentHandle
     (setq _parentHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectParent
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectParent :md5sum-) "854ff03c655805cf1e8924bdf3e10531")
(setf (get vrep_common::simRosGetObjectParent :datatype-) "vrep_common/simRosGetObjectParent")
(setf (get vrep_common::simRosGetObjectParent :request) vrep_common::simRosGetObjectParentRequest)
(setf (get vrep_common::simRosGetObjectParent :response) vrep_common::simRosGetObjectParentResponse)

(defmethod vrep_common::simRosGetObjectParentRequest
  (:response () (instance vrep_common::simRosGetObjectParentResponse :init)))

(setf (get vrep_common::simRosGetObjectParentRequest :md5sum-) "854ff03c655805cf1e8924bdf3e10531")
(setf (get vrep_common::simRosGetObjectParentRequest :datatype-) "vrep_common/simRosGetObjectParentRequest")
(setf (get vrep_common::simRosGetObjectParentRequest :definition-)
      "



int32 handle
---
int32 parentHandle

")

(setf (get vrep_common::simRosGetObjectParentResponse :md5sum-) "854ff03c655805cf1e8924bdf3e10531")
(setf (get vrep_common::simRosGetObjectParentResponse :datatype-) "vrep_common/simRosGetObjectParentResponse")
(setf (get vrep_common::simRosGetObjectParentResponse :definition-)
      "



int32 handle
---
int32 parentHandle

")



(provide :vrep_common/simRosGetObjectParent "854ff03c655805cf1e8924bdf3e10531")


