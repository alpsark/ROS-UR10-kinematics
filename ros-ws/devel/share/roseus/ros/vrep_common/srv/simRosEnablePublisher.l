;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosEnablePublisher)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosEnablePublisher (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSENABLEPUBLISHER")
  (make-package "VREP_COMMON::SIMROSENABLEPUBLISHER"))
(unless (find-package "VREP_COMMON::SIMROSENABLEPUBLISHERREQUEST")
  (make-package "VREP_COMMON::SIMROSENABLEPUBLISHERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSENABLEPUBLISHERRESPONSE")
  (make-package "VREP_COMMON::SIMROSENABLEPUBLISHERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosEnablePublisherRequest
  :super ros::object
  :slots (_topicName _queueSize _streamCmd _auxInt1 _auxInt2 _auxString ))

(defmethod vrep_common::simRosEnablePublisherRequest
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

(defclass vrep_common::simRosEnablePublisherResponse
  :super ros::object
  :slots (_effectiveTopicName ))

(defmethod vrep_common::simRosEnablePublisherResponse
  (:init
   (&key
    ((:effectiveTopicName __effectiveTopicName) "")
    )
   (send-super :init)
   (setq _effectiveTopicName (string __effectiveTopicName))
   self)
  (:effectiveTopicName
   (&optional __effectiveTopicName)
   (if __effectiveTopicName (setq _effectiveTopicName __effectiveTopicName)) _effectiveTopicName)
  (:serialization-length
   ()
   (+
    ;; string _effectiveTopicName
    4 (length _effectiveTopicName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _effectiveTopicName
       (write-long (length _effectiveTopicName) s) (princ _effectiveTopicName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _effectiveTopicName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _effectiveTopicName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosEnablePublisher
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosEnablePublisher :md5sum-) "1656daea9e4b58b53b650fa39f39e74e")
(setf (get vrep_common::simRosEnablePublisher :datatype-) "vrep_common/simRosEnablePublisher")
(setf (get vrep_common::simRosEnablePublisher :request) vrep_common::simRosEnablePublisherRequest)
(setf (get vrep_common::simRosEnablePublisher :response) vrep_common::simRosEnablePublisherResponse)

(defmethod vrep_common::simRosEnablePublisherRequest
  (:response () (instance vrep_common::simRosEnablePublisherResponse :init)))

(setf (get vrep_common::simRosEnablePublisherRequest :md5sum-) "1656daea9e4b58b53b650fa39f39e74e")
(setf (get vrep_common::simRosEnablePublisherRequest :datatype-) "vrep_common/simRosEnablePublisherRequest")
(setf (get vrep_common::simRosEnablePublisherRequest :definition-)
      "



string topicName
int32 queueSize
int32 streamCmd
int32 auxInt1
int32 auxInt2
string auxString
---
string effectiveTopicName

")

(setf (get vrep_common::simRosEnablePublisherResponse :md5sum-) "1656daea9e4b58b53b650fa39f39e74e")
(setf (get vrep_common::simRosEnablePublisherResponse :datatype-) "vrep_common/simRosEnablePublisherResponse")
(setf (get vrep_common::simRosEnablePublisherResponse :definition-)
      "



string topicName
int32 queueSize
int32 streamCmd
int32 auxInt1
int32 auxInt2
string auxString
---
string effectiveTopicName

")



(provide :vrep_common/simRosEnablePublisher "1656daea9e4b58b53b650fa39f39e74e")


