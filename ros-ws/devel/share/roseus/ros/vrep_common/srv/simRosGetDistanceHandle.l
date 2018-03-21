;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetDistanceHandle)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetDistanceHandle (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETDISTANCEHANDLE")
  (make-package "VREP_COMMON::SIMROSGETDISTANCEHANDLE"))
(unless (find-package "VREP_COMMON::SIMROSGETDISTANCEHANDLEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETDISTANCEHANDLEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETDISTANCEHANDLERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETDISTANCEHANDLERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetDistanceHandleRequest
  :super ros::object
  :slots (_distanceName ))

(defmethod vrep_common::simRosGetDistanceHandleRequest
  (:init
   (&key
    ((:distanceName __distanceName) "")
    )
   (send-super :init)
   (setq _distanceName (string __distanceName))
   self)
  (:distanceName
   (&optional __distanceName)
   (if __distanceName (setq _distanceName __distanceName)) _distanceName)
  (:serialization-length
   ()
   (+
    ;; string _distanceName
    4 (length _distanceName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _distanceName
       (write-long (length _distanceName) s) (princ _distanceName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _distanceName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _distanceName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetDistanceHandleResponse
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetDistanceHandleResponse
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

(defclass vrep_common::simRosGetDistanceHandle
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetDistanceHandle :md5sum-) "78e0efe06bbf65717f2c9d16dc1a69dc")
(setf (get vrep_common::simRosGetDistanceHandle :datatype-) "vrep_common/simRosGetDistanceHandle")
(setf (get vrep_common::simRosGetDistanceHandle :request) vrep_common::simRosGetDistanceHandleRequest)
(setf (get vrep_common::simRosGetDistanceHandle :response) vrep_common::simRosGetDistanceHandleResponse)

(defmethod vrep_common::simRosGetDistanceHandleRequest
  (:response () (instance vrep_common::simRosGetDistanceHandleResponse :init)))

(setf (get vrep_common::simRosGetDistanceHandleRequest :md5sum-) "78e0efe06bbf65717f2c9d16dc1a69dc")
(setf (get vrep_common::simRosGetDistanceHandleRequest :datatype-) "vrep_common/simRosGetDistanceHandleRequest")
(setf (get vrep_common::simRosGetDistanceHandleRequest :definition-)
      "



string distanceName
---
int32 handle

")

(setf (get vrep_common::simRosGetDistanceHandleResponse :md5sum-) "78e0efe06bbf65717f2c9d16dc1a69dc")
(setf (get vrep_common::simRosGetDistanceHandleResponse :datatype-) "vrep_common/simRosGetDistanceHandleResponse")
(setf (get vrep_common::simRosGetDistanceHandleResponse :definition-)
      "



string distanceName
---
int32 handle

")



(provide :vrep_common/simRosGetDistanceHandle "78e0efe06bbf65717f2c9d16dc1a69dc")


