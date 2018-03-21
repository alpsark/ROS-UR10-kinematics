;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetUIHandle)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetUIHandle (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETUIHANDLE")
  (make-package "VREP_COMMON::SIMROSGETUIHANDLE"))
(unless (find-package "VREP_COMMON::SIMROSGETUIHANDLEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETUIHANDLEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETUIHANDLERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETUIHANDLERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetUIHandleRequest
  :super ros::object
  :slots (_uiName ))

(defmethod vrep_common::simRosGetUIHandleRequest
  (:init
   (&key
    ((:uiName __uiName) "")
    )
   (send-super :init)
   (setq _uiName (string __uiName))
   self)
  (:uiName
   (&optional __uiName)
   (if __uiName (setq _uiName __uiName)) _uiName)
  (:serialization-length
   ()
   (+
    ;; string _uiName
    4 (length _uiName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uiName
       (write-long (length _uiName) s) (princ _uiName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uiName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uiName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosGetUIHandleResponse
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetUIHandleResponse
  (:init
   (&key
    ((:handle __handle) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetUIHandle
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetUIHandle :md5sum-) "01db922614d69b8d439cae7d43e67d03")
(setf (get vrep_common::simRosGetUIHandle :datatype-) "vrep_common/simRosGetUIHandle")
(setf (get vrep_common::simRosGetUIHandle :request) vrep_common::simRosGetUIHandleRequest)
(setf (get vrep_common::simRosGetUIHandle :response) vrep_common::simRosGetUIHandleResponse)

(defmethod vrep_common::simRosGetUIHandleRequest
  (:response () (instance vrep_common::simRosGetUIHandleResponse :init)))

(setf (get vrep_common::simRosGetUIHandleRequest :md5sum-) "01db922614d69b8d439cae7d43e67d03")
(setf (get vrep_common::simRosGetUIHandleRequest :datatype-) "vrep_common/simRosGetUIHandleRequest")
(setf (get vrep_common::simRosGetUIHandleRequest :definition-)
      "



string uiName
---
int32 handle

")

(setf (get vrep_common::simRosGetUIHandleResponse :md5sum-) "01db922614d69b8d439cae7d43e67d03")
(setf (get vrep_common::simRosGetUIHandleResponse :datatype-) "vrep_common/simRosGetUIHandleResponse")
(setf (get vrep_common::simRosGetUIHandleResponse :definition-)
      "



string uiName
---
int32 handle

")



(provide :vrep_common/simRosGetUIHandle "01db922614d69b8d439cae7d43e67d03")


