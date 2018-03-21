;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosDisableSubscriber)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosDisableSubscriber (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSDISABLESUBSCRIBER")
  (make-package "VREP_COMMON::SIMROSDISABLESUBSCRIBER"))
(unless (find-package "VREP_COMMON::SIMROSDISABLESUBSCRIBERREQUEST")
  (make-package "VREP_COMMON::SIMROSDISABLESUBSCRIBERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSDISABLESUBSCRIBERRESPONSE")
  (make-package "VREP_COMMON::SIMROSDISABLESUBSCRIBERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosDisableSubscriberRequest
  :super ros::object
  :slots (_subscriberID ))

(defmethod vrep_common::simRosDisableSubscriberRequest
  (:init
   (&key
    ((:subscriberID __subscriberID) 0)
    )
   (send-super :init)
   (setq _subscriberID (round __subscriberID))
   self)
  (:subscriberID
   (&optional __subscriberID)
   (if __subscriberID (setq _subscriberID __subscriberID)) _subscriberID)
  (:serialization-length
   ()
   (+
    ;; int32 _subscriberID
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _subscriberID
       (write-long _subscriberID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _subscriberID
     (setq _subscriberID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosDisableSubscriberResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosDisableSubscriberResponse
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
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrep_common::simRosDisableSubscriber
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosDisableSubscriber :md5sum-) "87973d82517ab997be2393d06260d68a")
(setf (get vrep_common::simRosDisableSubscriber :datatype-) "vrep_common/simRosDisableSubscriber")
(setf (get vrep_common::simRosDisableSubscriber :request) vrep_common::simRosDisableSubscriberRequest)
(setf (get vrep_common::simRosDisableSubscriber :response) vrep_common::simRosDisableSubscriberResponse)

(defmethod vrep_common::simRosDisableSubscriberRequest
  (:response () (instance vrep_common::simRosDisableSubscriberResponse :init)))

(setf (get vrep_common::simRosDisableSubscriberRequest :md5sum-) "87973d82517ab997be2393d06260d68a")
(setf (get vrep_common::simRosDisableSubscriberRequest :datatype-) "vrep_common/simRosDisableSubscriberRequest")
(setf (get vrep_common::simRosDisableSubscriberRequest :definition-)
      "



int32 subscriberID
---
uint8 result

")

(setf (get vrep_common::simRosDisableSubscriberResponse :md5sum-) "87973d82517ab997be2393d06260d68a")
(setf (get vrep_common::simRosDisableSubscriberResponse :datatype-) "vrep_common/simRosDisableSubscriberResponse")
(setf (get vrep_common::simRosDisableSubscriberResponse :definition-)
      "



int32 subscriberID
---
uint8 result

")



(provide :vrep_common/simRosDisableSubscriber "87973d82517ab997be2393d06260d68a")


