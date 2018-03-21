;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetLastErrors)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetLastErrors (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETLASTERRORS")
  (make-package "VREP_COMMON::SIMROSGETLASTERRORS"))
(unless (find-package "VREP_COMMON::SIMROSGETLASTERRORSREQUEST")
  (make-package "VREP_COMMON::SIMROSGETLASTERRORSREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETLASTERRORSRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETLASTERRORSRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetLastErrorsRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosGetLastErrorsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass vrep_common::simRosGetLastErrorsResponse
  :super ros::object
  :slots (_errorCnt _errorStrings ))

(defmethod vrep_common::simRosGetLastErrorsResponse
  (:init
   (&key
    ((:errorCnt __errorCnt) 0)
    ((:errorStrings __errorStrings) "")
    )
   (send-super :init)
   (setq _errorCnt (round __errorCnt))
   (setq _errorStrings (string __errorStrings))
   self)
  (:errorCnt
   (&optional __errorCnt)
   (if __errorCnt (setq _errorCnt __errorCnt)) _errorCnt)
  (:errorStrings
   (&optional __errorStrings)
   (if __errorStrings (setq _errorStrings __errorStrings)) _errorStrings)
  (:serialization-length
   ()
   (+
    ;; int32 _errorCnt
    4
    ;; string _errorStrings
    4 (length _errorStrings)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _errorCnt
       (write-long _errorCnt s)
     ;; string _errorStrings
       (write-long (length _errorStrings) s) (princ _errorStrings s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _errorCnt
     (setq _errorCnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _errorStrings
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _errorStrings (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetLastErrors
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetLastErrors :md5sum-) "165502f1a9cdf7b50941ef103382dea5")
(setf (get vrep_common::simRosGetLastErrors :datatype-) "vrep_common/simRosGetLastErrors")
(setf (get vrep_common::simRosGetLastErrors :request) vrep_common::simRosGetLastErrorsRequest)
(setf (get vrep_common::simRosGetLastErrors :response) vrep_common::simRosGetLastErrorsResponse)

(defmethod vrep_common::simRosGetLastErrorsRequest
  (:response () (instance vrep_common::simRosGetLastErrorsResponse :init)))

(setf (get vrep_common::simRosGetLastErrorsRequest :md5sum-) "165502f1a9cdf7b50941ef103382dea5")
(setf (get vrep_common::simRosGetLastErrorsRequest :datatype-) "vrep_common/simRosGetLastErrorsRequest")
(setf (get vrep_common::simRosGetLastErrorsRequest :definition-)
      "




---
int32 errorCnt
string errorStrings

")

(setf (get vrep_common::simRosGetLastErrorsResponse :md5sum-) "165502f1a9cdf7b50941ef103382dea5")
(setf (get vrep_common::simRosGetLastErrorsResponse :datatype-) "vrep_common/simRosGetLastErrorsResponse")
(setf (get vrep_common::simRosGetLastErrorsResponse :definition-)
      "




---
int32 errorCnt
string errorStrings

")



(provide :vrep_common/simRosGetLastErrors "165502f1a9cdf7b50941ef103382dea5")


