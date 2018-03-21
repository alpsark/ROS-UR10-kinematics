;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetCollisionHandle)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetCollisionHandle (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETCOLLISIONHANDLE")
  (make-package "VREP_COMMON::SIMROSGETCOLLISIONHANDLE"))
(unless (find-package "VREP_COMMON::SIMROSGETCOLLISIONHANDLEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETCOLLISIONHANDLEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETCOLLISIONHANDLERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETCOLLISIONHANDLERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetCollisionHandleRequest
  :super ros::object
  :slots (_collisionName ))

(defmethod vrep_common::simRosGetCollisionHandleRequest
  (:init
   (&key
    ((:collisionName __collisionName) "")
    )
   (send-super :init)
   (setq _collisionName (string __collisionName))
   self)
  (:collisionName
   (&optional __collisionName)
   (if __collisionName (setq _collisionName __collisionName)) _collisionName)
  (:serialization-length
   ()
   (+
    ;; string _collisionName
    4 (length _collisionName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _collisionName
       (write-long (length _collisionName) s) (princ _collisionName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _collisionName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collisionName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetCollisionHandleResponse
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetCollisionHandleResponse
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

(defclass vrep_common::simRosGetCollisionHandle
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetCollisionHandle :md5sum-) "c921683644719c386866fcd63b2e041d")
(setf (get vrep_common::simRosGetCollisionHandle :datatype-) "vrep_common/simRosGetCollisionHandle")
(setf (get vrep_common::simRosGetCollisionHandle :request) vrep_common::simRosGetCollisionHandleRequest)
(setf (get vrep_common::simRosGetCollisionHandle :response) vrep_common::simRosGetCollisionHandleResponse)

(defmethod vrep_common::simRosGetCollisionHandleRequest
  (:response () (instance vrep_common::simRosGetCollisionHandleResponse :init)))

(setf (get vrep_common::simRosGetCollisionHandleRequest :md5sum-) "c921683644719c386866fcd63b2e041d")
(setf (get vrep_common::simRosGetCollisionHandleRequest :datatype-) "vrep_common/simRosGetCollisionHandleRequest")
(setf (get vrep_common::simRosGetCollisionHandleRequest :definition-)
      "



string collisionName
---
int32 handle

")

(setf (get vrep_common::simRosGetCollisionHandleResponse :md5sum-) "c921683644719c386866fcd63b2e041d")
(setf (get vrep_common::simRosGetCollisionHandleResponse :datatype-) "vrep_common/simRosGetCollisionHandleResponse")
(setf (get vrep_common::simRosGetCollisionHandleResponse :definition-)
      "



string collisionName
---
int32 handle

")



(provide :vrep_common/simRosGetCollisionHandle "c921683644719c386866fcd63b2e041d")


