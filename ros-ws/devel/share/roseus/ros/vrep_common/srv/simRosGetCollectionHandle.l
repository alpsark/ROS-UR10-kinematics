;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetCollectionHandle)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetCollectionHandle (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETCOLLECTIONHANDLE")
  (make-package "VREP_COMMON::SIMROSGETCOLLECTIONHANDLE"))
(unless (find-package "VREP_COMMON::SIMROSGETCOLLECTIONHANDLEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETCOLLECTIONHANDLEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETCOLLECTIONHANDLERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETCOLLECTIONHANDLERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetCollectionHandleRequest
  :super ros::object
  :slots (_collectionName ))

(defmethod vrep_common::simRosGetCollectionHandleRequest
  (:init
   (&key
    ((:collectionName __collectionName) "")
    )
   (send-super :init)
   (setq _collectionName (string __collectionName))
   self)
  (:collectionName
   (&optional __collectionName)
   (if __collectionName (setq _collectionName __collectionName)) _collectionName)
  (:serialization-length
   ()
   (+
    ;; string _collectionName
    4 (length _collectionName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _collectionName
       (write-long (length _collectionName) s) (princ _collectionName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _collectionName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _collectionName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetCollectionHandleResponse
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetCollectionHandleResponse
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

(defclass vrep_common::simRosGetCollectionHandle
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetCollectionHandle :md5sum-) "9a88cbc3c0b9dc318a5ae82846bcf63b")
(setf (get vrep_common::simRosGetCollectionHandle :datatype-) "vrep_common/simRosGetCollectionHandle")
(setf (get vrep_common::simRosGetCollectionHandle :request) vrep_common::simRosGetCollectionHandleRequest)
(setf (get vrep_common::simRosGetCollectionHandle :response) vrep_common::simRosGetCollectionHandleResponse)

(defmethod vrep_common::simRosGetCollectionHandleRequest
  (:response () (instance vrep_common::simRosGetCollectionHandleResponse :init)))

(setf (get vrep_common::simRosGetCollectionHandleRequest :md5sum-) "9a88cbc3c0b9dc318a5ae82846bcf63b")
(setf (get vrep_common::simRosGetCollectionHandleRequest :datatype-) "vrep_common/simRosGetCollectionHandleRequest")
(setf (get vrep_common::simRosGetCollectionHandleRequest :definition-)
      "



string collectionName
---
int32 handle

")

(setf (get vrep_common::simRosGetCollectionHandleResponse :md5sum-) "9a88cbc3c0b9dc318a5ae82846bcf63b")
(setf (get vrep_common::simRosGetCollectionHandleResponse :datatype-) "vrep_common/simRosGetCollectionHandleResponse")
(setf (get vrep_common::simRosGetCollectionHandleResponse :definition-)
      "



string collectionName
---
int32 handle

")



(provide :vrep_common/simRosGetCollectionHandle "9a88cbc3c0b9dc318a5ae82846bcf63b")


