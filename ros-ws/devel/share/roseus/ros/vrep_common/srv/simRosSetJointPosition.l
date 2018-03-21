;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetJointPosition)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetJointPosition (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTPOSITION")
  (make-package "VREP_COMMON::SIMROSSETJOINTPOSITION"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTPOSITIONREQUEST")
  (make-package "VREP_COMMON::SIMROSSETJOINTPOSITIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTPOSITIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETJOINTPOSITIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetJointPositionRequest
  :super ros::object
  :slots (_handle _position ))

(defmethod vrep_common::simRosSetJointPositionRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _position (float __position))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; float64 _position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass vrep_common::simRosSetJointPositionResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetJointPositionResponse
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

(defclass vrep_common::simRosSetJointPosition
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetJointPosition :md5sum-) "126349edc9c2951f8756d658f1fbb6a6")
(setf (get vrep_common::simRosSetJointPosition :datatype-) "vrep_common/simRosSetJointPosition")
(setf (get vrep_common::simRosSetJointPosition :request) vrep_common::simRosSetJointPositionRequest)
(setf (get vrep_common::simRosSetJointPosition :response) vrep_common::simRosSetJointPositionResponse)

(defmethod vrep_common::simRosSetJointPositionRequest
  (:response () (instance vrep_common::simRosSetJointPositionResponse :init)))

(setf (get vrep_common::simRosSetJointPositionRequest :md5sum-) "126349edc9c2951f8756d658f1fbb6a6")
(setf (get vrep_common::simRosSetJointPositionRequest :datatype-) "vrep_common/simRosSetJointPositionRequest")
(setf (get vrep_common::simRosSetJointPositionRequest :definition-)
      "



int32 handle
float64 position
---
int32 result

")

(setf (get vrep_common::simRosSetJointPositionResponse :md5sum-) "126349edc9c2951f8756d658f1fbb6a6")
(setf (get vrep_common::simRosSetJointPositionResponse :datatype-) "vrep_common/simRosSetJointPositionResponse")
(setf (get vrep_common::simRosSetJointPositionResponse :definition-)
      "



int32 handle
float64 position
---
int32 result

")



(provide :vrep_common/simRosSetJointPosition "126349edc9c2951f8756d658f1fbb6a6")


