;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosReadCollision)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosReadCollision (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREADCOLLISION")
  (make-package "VREP_COMMON::SIMROSREADCOLLISION"))
(unless (find-package "VREP_COMMON::SIMROSREADCOLLISIONREQUEST")
  (make-package "VREP_COMMON::SIMROSREADCOLLISIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREADCOLLISIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSREADCOLLISIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosReadCollisionRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosReadCollisionRequest
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

(defclass vrep_common::simRosReadCollisionResponse
  :super ros::object
  :slots (_collisionState ))

(defmethod vrep_common::simRosReadCollisionResponse
  (:init
   (&key
    ((:collisionState __collisionState) 0)
    )
   (send-super :init)
   (setq _collisionState (round __collisionState))
   self)
  (:collisionState
   (&optional __collisionState)
   (if __collisionState (setq _collisionState __collisionState)) _collisionState)
  (:serialization-length
   ()
   (+
    ;; int32 _collisionState
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _collisionState
       (write-long _collisionState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _collisionState
     (setq _collisionState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosReadCollision
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosReadCollision :md5sum-) "37515f25a62d19573a6222165e612868")
(setf (get vrep_common::simRosReadCollision :datatype-) "vrep_common/simRosReadCollision")
(setf (get vrep_common::simRosReadCollision :request) vrep_common::simRosReadCollisionRequest)
(setf (get vrep_common::simRosReadCollision :response) vrep_common::simRosReadCollisionResponse)

(defmethod vrep_common::simRosReadCollisionRequest
  (:response () (instance vrep_common::simRosReadCollisionResponse :init)))

(setf (get vrep_common::simRosReadCollisionRequest :md5sum-) "37515f25a62d19573a6222165e612868")
(setf (get vrep_common::simRosReadCollisionRequest :datatype-) "vrep_common/simRosReadCollisionRequest")
(setf (get vrep_common::simRosReadCollisionRequest :definition-)
      "



int32 handle
---
int32 collisionState

")

(setf (get vrep_common::simRosReadCollisionResponse :md5sum-) "37515f25a62d19573a6222165e612868")
(setf (get vrep_common::simRosReadCollisionResponse :datatype-) "vrep_common/simRosReadCollisionResponse")
(setf (get vrep_common::simRosReadCollisionResponse :definition-)
      "



int32 handle
---
int32 collisionState

")



(provide :vrep_common/simRosReadCollision "37515f25a62d19573a6222165e612868")


