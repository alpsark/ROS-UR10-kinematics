;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosLoadUI)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosLoadUI (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSLOADUI")
  (make-package "VREP_COMMON::SIMROSLOADUI"))
(unless (find-package "VREP_COMMON::SIMROSLOADUIREQUEST")
  (make-package "VREP_COMMON::SIMROSLOADUIREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSLOADUIRESPONSE")
  (make-package "VREP_COMMON::SIMROSLOADUIRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosLoadUIRequest
  :super ros::object
  :slots (_fileName ))

(defmethod vrep_common::simRosLoadUIRequest
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

(defclass vrep_common::simRosLoadUIResponse
  :super ros::object
  :slots (_result _uiHandles ))

(defmethod vrep_common::simRosLoadUIResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:uiHandles __uiHandles) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _uiHandles __uiHandles)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:uiHandles
   (&optional __uiHandles)
   (if __uiHandles (setq _uiHandles __uiHandles)) _uiHandles)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32[] _uiHandles
    (* 4    (length _uiHandles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32[] _uiHandles
     (write-long (length _uiHandles) s)
     (dotimes (i (length _uiHandles))
       (write-long (elt _uiHandles i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _uiHandles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uiHandles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _uiHandles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosLoadUI
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosLoadUI :md5sum-) "16005ff8dad636c8c963ce5d5ee0c3c1")
(setf (get vrep_common::simRosLoadUI :datatype-) "vrep_common/simRosLoadUI")
(setf (get vrep_common::simRosLoadUI :request) vrep_common::simRosLoadUIRequest)
(setf (get vrep_common::simRosLoadUI :response) vrep_common::simRosLoadUIResponse)

(defmethod vrep_common::simRosLoadUIRequest
  (:response () (instance vrep_common::simRosLoadUIResponse :init)))

(setf (get vrep_common::simRosLoadUIRequest :md5sum-) "16005ff8dad636c8c963ce5d5ee0c3c1")
(setf (get vrep_common::simRosLoadUIRequest :datatype-) "vrep_common/simRosLoadUIRequest")
(setf (get vrep_common::simRosLoadUIRequest :definition-)
      "



string fileName
---
int32 result
int32[] uiHandles

")

(setf (get vrep_common::simRosLoadUIResponse :md5sum-) "16005ff8dad636c8c963ce5d5ee0c3c1")
(setf (get vrep_common::simRosLoadUIResponse :datatype-) "vrep_common/simRosLoadUIResponse")
(setf (get vrep_common::simRosLoadUIResponse :definition-)
      "



string fileName
---
int32 result
int32[] uiHandles

")



(provide :vrep_common/simRosLoadUI "16005ff8dad636c8c963ce5d5ee0c3c1")


