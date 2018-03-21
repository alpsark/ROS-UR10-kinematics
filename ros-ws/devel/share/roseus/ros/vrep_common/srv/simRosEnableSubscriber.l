;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosEnableSubscriber)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosEnableSubscriber (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSENABLESUBSCRIBER")
  (make-package "VREP_COMMON::SIMROSENABLESUBSCRIBER"))
(unless (find-package "VREP_COMMON::SIMROSENABLESUBSCRIBERREQUEST")
  (make-package "VREP_COMMON::SIMROSENABLESUBSCRIBERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSENABLESUBSCRIBERRESPONSE")
  (make-package "VREP_COMMON::SIMROSENABLESUBSCRIBERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosEnableSubscriberRequest
  :super ros::object
  :slots (_topicName _queueSize _streamCmd _auxInt1 _auxInt2 _auxString ))

(defmethod vrep_common::simRosEnableSubscriberRequest
  (:init
   (&key
    ((:topicName __topicName) "")
    ((:queueSize __queueSize) 0)
    ((:streamCmd __streamCmd) 0)
    ((:auxInt1 __auxInt1) 0)
    ((:auxInt2 __auxInt2) 0)
    ((:auxString __auxString) "")
    )
   (send-super :init)
   (setq _topicName (string __topicName))
   (setq _queueSize (round __queueSize))
   (setq _streamCmd (round __streamCmd))
   (setq _auxInt1 (round __auxInt1))
   (setq _auxInt2 (round __auxInt2))
   (setq _auxString (string __auxString))
   self)
  (:topicName
   (&optional __topicName)
   (if __topicName (setq _topicName __topicName)) _topicName)
  (:queueSize
   (&optional __queueSize)
   (if __queueSize (setq _queueSize __queueSize)) _queueSize)
  (:streamCmd
   (&optional __streamCmd)
   (if __streamCmd (setq _streamCmd __streamCmd)) _streamCmd)
  (:auxInt1
   (&optional __auxInt1)
   (if __auxInt1 (setq _auxInt1 __auxInt1)) _auxInt1)
  (:auxInt2
   (&optional __auxInt2)
   (if __auxInt2 (setq _auxInt2 __auxInt2)) _auxInt2)
  (:auxString
   (&optional __auxString)
   (if __auxString (setq _auxString __auxString)) _auxString)
  (:serialization-length
   ()
   (+
    ;; string _topicName
    4 (length _topicName)
    ;; int32 _queueSize
    4
    ;; int32 _streamCmd
    4
    ;; int32 _auxInt1
    4
    ;; int32 _auxInt2
    4
    ;; string _auxString
    4 (length _auxString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topicName
       (write-long (length _topicName) s) (princ _topicName s)
     ;; int32 _queueSize
       (write-long _queueSize s)
     ;; int32 _streamCmd
       (write-long _streamCmd s)
     ;; int32 _auxInt1
       (write-long _auxInt1 s)
     ;; int32 _auxInt2
       (write-long _auxInt2 s)
     ;; string _auxString
       (write-long (length _auxString) s) (princ _auxString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topicName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topicName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _queueSize
     (setq _queueSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _streamCmd
     (setq _streamCmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _auxInt1
     (setq _auxInt1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _auxInt2
     (setq _auxInt2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _auxString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _auxString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosEnableSubscriberResponse
  :super ros::object
  :slots (_subscriberID ))

(defmethod vrep_common::simRosEnableSubscriberResponse
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

(defclass vrep_common::simRosEnableSubscriber
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosEnableSubscriber :md5sum-) "61a23a6c623cfe11fb9eae842a1893b7")
(setf (get vrep_common::simRosEnableSubscriber :datatype-) "vrep_common/simRosEnableSubscriber")
(setf (get vrep_common::simRosEnableSubscriber :request) vrep_common::simRosEnableSubscriberRequest)
(setf (get vrep_common::simRosEnableSubscriber :response) vrep_common::simRosEnableSubscriberResponse)

(defmethod vrep_common::simRosEnableSubscriberRequest
  (:response () (instance vrep_common::simRosEnableSubscriberResponse :init)))

(setf (get vrep_common::simRosEnableSubscriberRequest :md5sum-) "61a23a6c623cfe11fb9eae842a1893b7")
(setf (get vrep_common::simRosEnableSubscriberRequest :datatype-) "vrep_common/simRosEnableSubscriberRequest")
(setf (get vrep_common::simRosEnableSubscriberRequest :definition-)
      "



string topicName
int32 queueSize
int32 streamCmd
int32 auxInt1
int32 auxInt2
string auxString
---
int32 subscriberID

")

(setf (get vrep_common::simRosEnableSubscriberResponse :md5sum-) "61a23a6c623cfe11fb9eae842a1893b7")
(setf (get vrep_common::simRosEnableSubscriberResponse :datatype-) "vrep_common/simRosEnableSubscriberResponse")
(setf (get vrep_common::simRosEnableSubscriberResponse :definition-)
      "



string topicName
int32 queueSize
int32 streamCmd
int32 auxInt1
int32 auxInt2
string auxString
---
int32 subscriberID

")



(provide :vrep_common/simRosEnableSubscriber "61a23a6c623cfe11fb9eae842a1893b7")


