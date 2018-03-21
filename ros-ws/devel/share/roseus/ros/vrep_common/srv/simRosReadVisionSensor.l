;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosReadVisionSensor)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosReadVisionSensor (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREADVISIONSENSOR")
  (make-package "VREP_COMMON::SIMROSREADVISIONSENSOR"))
(unless (find-package "VREP_COMMON::SIMROSREADVISIONSENSORREQUEST")
  (make-package "VREP_COMMON::SIMROSREADVISIONSENSORREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREADVISIONSENSORRESPONSE")
  (make-package "VREP_COMMON::SIMROSREADVISIONSENSORRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosReadVisionSensorRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosReadVisionSensorRequest
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

(defclass vrep_common::simRosReadVisionSensorResponse
  :super ros::object
  :slots (_result _packetData _packetSizes ))

(defmethod vrep_common::simRosReadVisionSensorResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:packetData __packetData) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:packetSizes __packetSizes) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _packetData __packetData)
   (setq _packetSizes __packetSizes)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:packetData
   (&optional __packetData)
   (if __packetData (setq _packetData __packetData)) _packetData)
  (:packetSizes
   (&optional __packetSizes)
   (if __packetSizes (setq _packetSizes __packetSizes)) _packetSizes)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32[] _packetData
    (* 4    (length _packetData)) 4
    ;; int32[] _packetSizes
    (* 4    (length _packetSizes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32[] _packetData
     (write-long (length _packetData) s)
     (dotimes (i (length _packetData))
       (sys::poke (elt _packetData i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _packetSizes
     (write-long (length _packetSizes) s)
     (dotimes (i (length _packetSizes))
       (write-long (elt _packetSizes i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _packetData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _packetData (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _packetData i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _packetSizes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _packetSizes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _packetSizes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosReadVisionSensor
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosReadVisionSensor :md5sum-) "06a229ce8d1f580db5bd558c65f74c4e")
(setf (get vrep_common::simRosReadVisionSensor :datatype-) "vrep_common/simRosReadVisionSensor")
(setf (get vrep_common::simRosReadVisionSensor :request) vrep_common::simRosReadVisionSensorRequest)
(setf (get vrep_common::simRosReadVisionSensor :response) vrep_common::simRosReadVisionSensorResponse)

(defmethod vrep_common::simRosReadVisionSensorRequest
  (:response () (instance vrep_common::simRosReadVisionSensorResponse :init)))

(setf (get vrep_common::simRosReadVisionSensorRequest :md5sum-) "06a229ce8d1f580db5bd558c65f74c4e")
(setf (get vrep_common::simRosReadVisionSensorRequest :datatype-) "vrep_common/simRosReadVisionSensorRequest")
(setf (get vrep_common::simRosReadVisionSensorRequest :definition-)
      "



int32 handle
---
int32 result
float32[] packetData
int32[] packetSizes

")

(setf (get vrep_common::simRosReadVisionSensorResponse :md5sum-) "06a229ce8d1f580db5bd558c65f74c4e")
(setf (get vrep_common::simRosReadVisionSensorResponse :datatype-) "vrep_common/simRosReadVisionSensorResponse")
(setf (get vrep_common::simRosReadVisionSensorResponse :definition-)
      "



int32 handle
---
int32 result
float32[] packetData
int32[] packetSizes

")



(provide :vrep_common/simRosReadVisionSensor "06a229ce8d1f580db5bd558c65f74c4e")


