;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosDisablePublisher)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosDisablePublisher (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSDISABLEPUBLISHER")
  (make-package "VREP_COMMON::SIMROSDISABLEPUBLISHER"))
(unless (find-package "VREP_COMMON::SIMROSDISABLEPUBLISHERREQUEST")
  (make-package "VREP_COMMON::SIMROSDISABLEPUBLISHERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSDISABLEPUBLISHERRESPONSE")
  (make-package "VREP_COMMON::SIMROSDISABLEPUBLISHERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosDisablePublisherRequest
  :super ros::object
  :slots (_topicName ))

(defmethod vrep_common::simRosDisablePublisherRequest
  (:init
   (&key
    ((:topicName __topicName) "")
    )
   (send-super :init)
   (setq _topicName (string __topicName))
   self)
  (:topicName
   (&optional __topicName)
   (if __topicName (setq _topicName __topicName)) _topicName)
  (:serialization-length
   ()
   (+
    ;; string _topicName
    4 (length _topicName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topicName
       (write-long (length _topicName) s) (princ _topicName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topicName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topicName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosDisablePublisherResponse
  :super ros::object
  :slots (_referenceCounter ))

(defmethod vrep_common::simRosDisablePublisherResponse
  (:init
   (&key
    ((:referenceCounter __referenceCounter) 0)
    )
   (send-super :init)
   (setq _referenceCounter (round __referenceCounter))
   self)
  (:referenceCounter
   (&optional __referenceCounter)
   (if __referenceCounter (setq _referenceCounter __referenceCounter)) _referenceCounter)
  (:serialization-length
   ()
   (+
    ;; int32 _referenceCounter
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _referenceCounter
       (write-long _referenceCounter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _referenceCounter
     (setq _referenceCounter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosDisablePublisher
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosDisablePublisher :md5sum-) "468250467bc8406ae24bdf79d4391996")
(setf (get vrep_common::simRosDisablePublisher :datatype-) "vrep_common/simRosDisablePublisher")
(setf (get vrep_common::simRosDisablePublisher :request) vrep_common::simRosDisablePublisherRequest)
(setf (get vrep_common::simRosDisablePublisher :response) vrep_common::simRosDisablePublisherResponse)

(defmethod vrep_common::simRosDisablePublisherRequest
  (:response () (instance vrep_common::simRosDisablePublisherResponse :init)))

(setf (get vrep_common::simRosDisablePublisherRequest :md5sum-) "468250467bc8406ae24bdf79d4391996")
(setf (get vrep_common::simRosDisablePublisherRequest :datatype-) "vrep_common/simRosDisablePublisherRequest")
(setf (get vrep_common::simRosDisablePublisherRequest :definition-)
      "



string topicName
---
int32 referenceCounter

")

(setf (get vrep_common::simRosDisablePublisherResponse :md5sum-) "468250467bc8406ae24bdf79d4391996")
(setf (get vrep_common::simRosDisablePublisherResponse :datatype-) "vrep_common/simRosDisablePublisherResponse")
(setf (get vrep_common::simRosDisablePublisherResponse :definition-)
      "



string topicName
---
int32 referenceCounter

")



(provide :vrep_common/simRosDisablePublisher "468250467bc8406ae24bdf79d4391996")


