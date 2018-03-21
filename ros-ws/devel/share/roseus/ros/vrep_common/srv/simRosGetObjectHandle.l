;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectHandle)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectHandle (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTHANDLE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTHANDLE"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTHANDLEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTHANDLEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTHANDLERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTHANDLERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectHandleRequest
  :super ros::object
  :slots (_objectName ))

(defmethod vrep_common::simRosGetObjectHandleRequest
  (:init
   (&key
    ((:objectName __objectName) "")
    )
   (send-super :init)
   (setq _objectName (string __objectName))
   self)
  (:objectName
   (&optional __objectName)
   (if __objectName (setq _objectName __objectName)) _objectName)
  (:serialization-length
   ()
   (+
    ;; string _objectName
    4 (length _objectName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _objectName
       (write-long (length _objectName) s) (princ _objectName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _objectName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _objectName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectHandleResponse
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetObjectHandleResponse
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

(defclass vrep_common::simRosGetObjectHandle
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectHandle :md5sum-) "5ede8bf5f32716bfd1ea7a68b46333e8")
(setf (get vrep_common::simRosGetObjectHandle :datatype-) "vrep_common/simRosGetObjectHandle")
(setf (get vrep_common::simRosGetObjectHandle :request) vrep_common::simRosGetObjectHandleRequest)
(setf (get vrep_common::simRosGetObjectHandle :response) vrep_common::simRosGetObjectHandleResponse)

(defmethod vrep_common::simRosGetObjectHandleRequest
  (:response () (instance vrep_common::simRosGetObjectHandleResponse :init)))

(setf (get vrep_common::simRosGetObjectHandleRequest :md5sum-) "5ede8bf5f32716bfd1ea7a68b46333e8")
(setf (get vrep_common::simRosGetObjectHandleRequest :datatype-) "vrep_common/simRosGetObjectHandleRequest")
(setf (get vrep_common::simRosGetObjectHandleRequest :definition-)
      "



string objectName
---
int32 handle

")

(setf (get vrep_common::simRosGetObjectHandleResponse :md5sum-) "5ede8bf5f32716bfd1ea7a68b46333e8")
(setf (get vrep_common::simRosGetObjectHandleResponse :datatype-) "vrep_common/simRosGetObjectHandleResponse")
(setf (get vrep_common::simRosGetObjectHandleResponse :definition-)
      "



string objectName
---
int32 handle

")



(provide :vrep_common/simRosGetObjectHandle "5ede8bf5f32716bfd1ea7a68b46333e8")


