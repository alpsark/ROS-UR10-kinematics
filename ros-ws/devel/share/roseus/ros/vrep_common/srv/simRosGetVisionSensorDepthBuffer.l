;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetVisionSensorDepthBuffer)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetVisionSensorDepthBuffer (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETVISIONSENSORDEPTHBUFFER")
  (make-package "VREP_COMMON::SIMROSGETVISIONSENSORDEPTHBUFFER"))
(unless (find-package "VREP_COMMON::SIMROSGETVISIONSENSORDEPTHBUFFERREQUEST")
  (make-package "VREP_COMMON::SIMROSGETVISIONSENSORDEPTHBUFFERREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETVISIONSENSORDEPTHBUFFERRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETVISIONSENSORDEPTHBUFFERRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetVisionSensorDepthBufferRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosGetVisionSensorDepthBufferRequest
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

(defclass vrep_common::simRosGetVisionSensorDepthBufferResponse
  :super ros::object
  :slots (_result _resolution _buffer ))

(defmethod vrep_common::simRosGetVisionSensorDepthBufferResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:resolution __resolution) (make-array 0 :initial-element 0 :element-type :integer))
    ((:buffer __buffer) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _resolution __resolution)
   (setq _buffer __buffer)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:buffer
   (&optional __buffer)
   (if __buffer (setq _buffer __buffer)) _buffer)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32[] _resolution
    (* 4    (length _resolution)) 4
    ;; float32[] _buffer
    (* 4    (length _buffer)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32[] _resolution
     (write-long (length _resolution) s)
     (dotimes (i (length _resolution))
       (write-long (elt _resolution i) s)
       )
     ;; float32[] _buffer
     (write-long (length _buffer) s)
     (dotimes (i (length _buffer))
       (sys::poke (elt _buffer i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _resolution
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resolution (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _resolution i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _buffer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _buffer (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _buffer i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosGetVisionSensorDepthBuffer
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetVisionSensorDepthBuffer :md5sum-) "4ba1b459e0a6f0de6bdb7a5376ec08af")
(setf (get vrep_common::simRosGetVisionSensorDepthBuffer :datatype-) "vrep_common/simRosGetVisionSensorDepthBuffer")
(setf (get vrep_common::simRosGetVisionSensorDepthBuffer :request) vrep_common::simRosGetVisionSensorDepthBufferRequest)
(setf (get vrep_common::simRosGetVisionSensorDepthBuffer :response) vrep_common::simRosGetVisionSensorDepthBufferResponse)

(defmethod vrep_common::simRosGetVisionSensorDepthBufferRequest
  (:response () (instance vrep_common::simRosGetVisionSensorDepthBufferResponse :init)))

(setf (get vrep_common::simRosGetVisionSensorDepthBufferRequest :md5sum-) "4ba1b459e0a6f0de6bdb7a5376ec08af")
(setf (get vrep_common::simRosGetVisionSensorDepthBufferRequest :datatype-) "vrep_common/simRosGetVisionSensorDepthBufferRequest")
(setf (get vrep_common::simRosGetVisionSensorDepthBufferRequest :definition-)
      "



int32 handle
---
int32 result
int32[] resolution
float32[] buffer

")

(setf (get vrep_common::simRosGetVisionSensorDepthBufferResponse :md5sum-) "4ba1b459e0a6f0de6bdb7a5376ec08af")
(setf (get vrep_common::simRosGetVisionSensorDepthBufferResponse :datatype-) "vrep_common/simRosGetVisionSensorDepthBufferResponse")
(setf (get vrep_common::simRosGetVisionSensorDepthBufferResponse :definition-)
      "



int32 handle
---
int32 result
int32[] resolution
float32[] buffer

")



(provide :vrep_common/simRosGetVisionSensorDepthBuffer "4ba1b459e0a6f0de6bdb7a5376ec08af")


