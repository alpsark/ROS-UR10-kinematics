;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosReadDistance)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosReadDistance (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREADDISTANCE")
  (make-package "VREP_COMMON::SIMROSREADDISTANCE"))
(unless (find-package "VREP_COMMON::SIMROSREADDISTANCEREQUEST")
  (make-package "VREP_COMMON::SIMROSREADDISTANCEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREADDISTANCERESPONSE")
  (make-package "VREP_COMMON::SIMROSREADDISTANCERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosReadDistanceRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosReadDistanceRequest
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

(defclass vrep_common::simRosReadDistanceResponse
  :super ros::object
  :slots (_result _distance ))

(defmethod vrep_common::simRosReadDistanceResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _distance (float __distance))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosReadDistance
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosReadDistance :md5sum-) "099258cb82ad99c080c59f94344f9f24")
(setf (get vrep_common::simRosReadDistance :datatype-) "vrep_common/simRosReadDistance")
(setf (get vrep_common::simRosReadDistance :request) vrep_common::simRosReadDistanceRequest)
(setf (get vrep_common::simRosReadDistance :response) vrep_common::simRosReadDistanceResponse)

(defmethod vrep_common::simRosReadDistanceRequest
  (:response () (instance vrep_common::simRosReadDistanceResponse :init)))

(setf (get vrep_common::simRosReadDistanceRequest :md5sum-) "099258cb82ad99c080c59f94344f9f24")
(setf (get vrep_common::simRosReadDistanceRequest :datatype-) "vrep_common/simRosReadDistanceRequest")
(setf (get vrep_common::simRosReadDistanceRequest :definition-)
      "



int32 handle
---
int32 result
float32 distance
")

(setf (get vrep_common::simRosReadDistanceResponse :md5sum-) "099258cb82ad99c080c59f94344f9f24")
(setf (get vrep_common::simRosReadDistanceResponse :datatype-) "vrep_common/simRosReadDistanceResponse")
(setf (get vrep_common::simRosReadDistanceResponse :definition-)
      "



int32 handle
---
int32 result
float32 distance
")



(provide :vrep_common/simRosReadDistance "099258cb82ad99c080c59f94344f9f24")


