;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosEraseFile)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosEraseFile (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSERASEFILE")
  (make-package "VREP_COMMON::SIMROSERASEFILE"))
(unless (find-package "VREP_COMMON::SIMROSERASEFILEREQUEST")
  (make-package "VREP_COMMON::SIMROSERASEFILEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSERASEFILERESPONSE")
  (make-package "VREP_COMMON::SIMROSERASEFILERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosEraseFileRequest
  :super ros::object
  :slots (_fileName ))

(defmethod vrep_common::simRosEraseFileRequest
  (:init
   (&key
    ((:fileName __fileName) "")
    )
   (send-super :init)
   (setq _fileName (string __fileName))
   self)
  (:fileName
   (&optional __fileName)
   (if __fileName (setq _fileName __fileName)) _fileName)
  (:serialization-length
   ()
   (+
    ;; string _fileName
    4 (length _fileName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _fileName
       (write-long (length _fileName) s) (princ _fileName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _fileName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fileName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosEraseFileResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosEraseFileResponse
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

(defclass vrep_common::simRosEraseFile
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosEraseFile :md5sum-) "4ce16c0ffb6dc4c97455e3e44d2010aa")
(setf (get vrep_common::simRosEraseFile :datatype-) "vrep_common/simRosEraseFile")
(setf (get vrep_common::simRosEraseFile :request) vrep_common::simRosEraseFileRequest)
(setf (get vrep_common::simRosEraseFile :response) vrep_common::simRosEraseFileResponse)

(defmethod vrep_common::simRosEraseFileRequest
  (:response () (instance vrep_common::simRosEraseFileResponse :init)))

(setf (get vrep_common::simRosEraseFileRequest :md5sum-) "4ce16c0ffb6dc4c97455e3e44d2010aa")
(setf (get vrep_common::simRosEraseFileRequest :datatype-) "vrep_common/simRosEraseFileRequest")
(setf (get vrep_common::simRosEraseFileRequest :definition-)
      "



string fileName
---
int32 result

")

(setf (get vrep_common::simRosEraseFileResponse :md5sum-) "4ce16c0ffb6dc4c97455e3e44d2010aa")
(setf (get vrep_common::simRosEraseFileResponse :datatype-) "vrep_common/simRosEraseFileResponse")
(setf (get vrep_common::simRosEraseFileResponse :definition-)
      "



string fileName
---
int32 result

")



(provide :vrep_common/simRosEraseFile "4ce16c0ffb6dc4c97455e3e44d2010aa")


