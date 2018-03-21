;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosTransferFile)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosTransferFile (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSTRANSFERFILE")
  (make-package "VREP_COMMON::SIMROSTRANSFERFILE"))
(unless (find-package "VREP_COMMON::SIMROSTRANSFERFILEREQUEST")
  (make-package "VREP_COMMON::SIMROSTRANSFERFILEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSTRANSFERFILERESPONSE")
  (make-package "VREP_COMMON::SIMROSTRANSFERFILERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosTransferFileRequest
  :super ros::object
  :slots (_data _fileName ))

(defmethod vrep_common::simRosTransferFileRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    ((:fileName __fileName) "")
    )
   (send-super :init)
   (setq _data __data)
   (setq _fileName (string __fileName))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:fileName
   (&optional __fileName)
   (if __fileName (setq _fileName __fileName)) _fileName)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ;; string _fileName
    4 (length _fileName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;; string _fileName
       (write-long (length _fileName) s) (princ _fileName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;; string _fileName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fileName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosTransferFileResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosTransferFileResponse
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

(defclass vrep_common::simRosTransferFile
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosTransferFile :md5sum-) "3c956e5a32cec1f93100fec7ced2ccd4")
(setf (get vrep_common::simRosTransferFile :datatype-) "vrep_common/simRosTransferFile")
(setf (get vrep_common::simRosTransferFile :request) vrep_common::simRosTransferFileRequest)
(setf (get vrep_common::simRosTransferFile :response) vrep_common::simRosTransferFileResponse)

(defmethod vrep_common::simRosTransferFileRequest
  (:response () (instance vrep_common::simRosTransferFileResponse :init)))

(setf (get vrep_common::simRosTransferFileRequest :md5sum-) "3c956e5a32cec1f93100fec7ced2ccd4")
(setf (get vrep_common::simRosTransferFileRequest :datatype-) "vrep_common/simRosTransferFileRequest")
(setf (get vrep_common::simRosTransferFileRequest :definition-)
      "



uint8[] data
string fileName
---
int32 result

")

(setf (get vrep_common::simRosTransferFileResponse :md5sum-) "3c956e5a32cec1f93100fec7ced2ccd4")
(setf (get vrep_common::simRosTransferFileResponse :datatype-) "vrep_common/simRosTransferFileResponse")
(setf (get vrep_common::simRosTransferFileResponse :definition-)
      "



uint8[] data
string fileName
---
int32 result

")



(provide :vrep_common/simRosTransferFile "3c956e5a32cec1f93100fec7ced2ccd4")


