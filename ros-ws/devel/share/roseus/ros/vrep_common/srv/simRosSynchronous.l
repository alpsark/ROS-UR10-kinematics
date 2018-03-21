;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSynchronous)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSynchronous (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSYNCHRONOUS")
  (make-package "VREP_COMMON::SIMROSSYNCHRONOUS"))
(unless (find-package "VREP_COMMON::SIMROSSYNCHRONOUSREQUEST")
  (make-package "VREP_COMMON::SIMROSSYNCHRONOUSREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSYNCHRONOUSRESPONSE")
  (make-package "VREP_COMMON::SIMROSSYNCHRONOUSRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSynchronousRequest
  :super ros::object
  :slots (_enable ))

(defmethod vrep_common::simRosSynchronousRequest
  (:init
   (&key
    ((:enable __enable) 0)
    )
   (send-super :init)
   (setq _enable (round __enable))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; uint8 _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _enable
       (write-byte _enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _enable
     (setq _enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrep_common::simRosSynchronousResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSynchronousResponse
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

(defclass vrep_common::simRosSynchronous
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSynchronous :md5sum-) "ee99577c106b55d579549e7b24b16926")
(setf (get vrep_common::simRosSynchronous :datatype-) "vrep_common/simRosSynchronous")
(setf (get vrep_common::simRosSynchronous :request) vrep_common::simRosSynchronousRequest)
(setf (get vrep_common::simRosSynchronous :response) vrep_common::simRosSynchronousResponse)

(defmethod vrep_common::simRosSynchronousRequest
  (:response () (instance vrep_common::simRosSynchronousResponse :init)))

(setf (get vrep_common::simRosSynchronousRequest :md5sum-) "ee99577c106b55d579549e7b24b16926")
(setf (get vrep_common::simRosSynchronousRequest :datatype-) "vrep_common/simRosSynchronousRequest")
(setf (get vrep_common::simRosSynchronousRequest :definition-)
      "



uint8 enable
---
int32 result

")

(setf (get vrep_common::simRosSynchronousResponse :md5sum-) "ee99577c106b55d579549e7b24b16926")
(setf (get vrep_common::simRosSynchronousResponse :datatype-) "vrep_common/simRosSynchronousResponse")
(setf (get vrep_common::simRosSynchronousResponse :definition-)
      "



uint8 enable
---
int32 result

")



(provide :vrep_common/simRosSynchronous "ee99577c106b55d579549e7b24b16926")


