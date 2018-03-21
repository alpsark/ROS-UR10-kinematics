;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosAddStatusbarMessage)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosAddStatusbarMessage (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSADDSTATUSBARMESSAGE")
  (make-package "VREP_COMMON::SIMROSADDSTATUSBARMESSAGE"))
(unless (find-package "VREP_COMMON::SIMROSADDSTATUSBARMESSAGEREQUEST")
  (make-package "VREP_COMMON::SIMROSADDSTATUSBARMESSAGEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSADDSTATUSBARMESSAGERESPONSE")
  (make-package "VREP_COMMON::SIMROSADDSTATUSBARMESSAGERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosAddStatusbarMessageRequest
  :super ros::object
  :slots (_message ))

(defmethod vrep_common::simRosAddStatusbarMessageRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosAddStatusbarMessageResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosAddStatusbarMessageResponse
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

(defclass vrep_common::simRosAddStatusbarMessage
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosAddStatusbarMessage :md5sum-) "e9096ed5f063e7da83fbcb7332c6a56b")
(setf (get vrep_common::simRosAddStatusbarMessage :datatype-) "vrep_common/simRosAddStatusbarMessage")
(setf (get vrep_common::simRosAddStatusbarMessage :request) vrep_common::simRosAddStatusbarMessageRequest)
(setf (get vrep_common::simRosAddStatusbarMessage :response) vrep_common::simRosAddStatusbarMessageResponse)

(defmethod vrep_common::simRosAddStatusbarMessageRequest
  (:response () (instance vrep_common::simRosAddStatusbarMessageResponse :init)))

(setf (get vrep_common::simRosAddStatusbarMessageRequest :md5sum-) "e9096ed5f063e7da83fbcb7332c6a56b")
(setf (get vrep_common::simRosAddStatusbarMessageRequest :datatype-) "vrep_common/simRosAddStatusbarMessageRequest")
(setf (get vrep_common::simRosAddStatusbarMessageRequest :definition-)
      "



string message
---
int32 result


")

(setf (get vrep_common::simRosAddStatusbarMessageResponse :md5sum-) "e9096ed5f063e7da83fbcb7332c6a56b")
(setf (get vrep_common::simRosAddStatusbarMessageResponse :datatype-) "vrep_common/simRosAddStatusbarMessageResponse")
(setf (get vrep_common::simRosAddStatusbarMessageResponse :definition-)
      "



string message
---
int32 result


")



(provide :vrep_common/simRosAddStatusbarMessage "e9096ed5f063e7da83fbcb7332c6a56b")


