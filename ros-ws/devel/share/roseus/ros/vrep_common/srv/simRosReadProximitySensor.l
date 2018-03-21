;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosReadProximitySensor)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosReadProximitySensor (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREADPROXIMITYSENSOR")
  (make-package "VREP_COMMON::SIMROSREADPROXIMITYSENSOR"))
(unless (find-package "VREP_COMMON::SIMROSREADPROXIMITYSENSORREQUEST")
  (make-package "VREP_COMMON::SIMROSREADPROXIMITYSENSORREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREADPROXIMITYSENSORRESPONSE")
  (make-package "VREP_COMMON::SIMROSREADPROXIMITYSENSORRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosReadProximitySensorRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosReadProximitySensorRequest
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

(defclass vrep_common::simRosReadProximitySensorResponse
  :super ros::object
  :slots (_result _detectedPoint _detectedObject _normalVector ))

(defmethod vrep_common::simRosReadProximitySensorResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:detectedPoint __detectedPoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:detectedObject __detectedObject) 0)
    ((:normalVector __normalVector) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _detectedPoint __detectedPoint)
   (setq _detectedObject (round __detectedObject))
   (setq _normalVector __normalVector)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:detectedPoint
   (&optional __detectedPoint)
   (if __detectedPoint (setq _detectedPoint __detectedPoint)) _detectedPoint)
  (:detectedObject
   (&optional __detectedObject)
   (if __detectedObject (setq _detectedObject __detectedObject)) _detectedObject)
  (:normalVector
   (&optional __normalVector)
   (if __normalVector (setq _normalVector __normalVector)) _normalVector)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32[] _detectedPoint
    (* 4    (length _detectedPoint)) 4
    ;; int32 _detectedObject
    4
    ;; float32[] _normalVector
    (* 4    (length _normalVector)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32[] _detectedPoint
     (write-long (length _detectedPoint) s)
     (dotimes (i (length _detectedPoint))
       (sys::poke (elt _detectedPoint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _detectedObject
       (write-long _detectedObject s)
     ;; float32[] _normalVector
     (write-long (length _normalVector) s)
     (dotimes (i (length _normalVector))
       (sys::poke (elt _normalVector i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _detectedPoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detectedPoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _detectedPoint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _detectedObject
     (setq _detectedObject (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _normalVector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normalVector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _normalVector i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosReadProximitySensor
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosReadProximitySensor :md5sum-) "05a1fa096e5ff4ba7072c60e22ef589e")
(setf (get vrep_common::simRosReadProximitySensor :datatype-) "vrep_common/simRosReadProximitySensor")
(setf (get vrep_common::simRosReadProximitySensor :request) vrep_common::simRosReadProximitySensorRequest)
(setf (get vrep_common::simRosReadProximitySensor :response) vrep_common::simRosReadProximitySensorResponse)

(defmethod vrep_common::simRosReadProximitySensorRequest
  (:response () (instance vrep_common::simRosReadProximitySensorResponse :init)))

(setf (get vrep_common::simRosReadProximitySensorRequest :md5sum-) "05a1fa096e5ff4ba7072c60e22ef589e")
(setf (get vrep_common::simRosReadProximitySensorRequest :datatype-) "vrep_common/simRosReadProximitySensorRequest")
(setf (get vrep_common::simRosReadProximitySensorRequest :definition-)
      "



int32 handle
---
int32 result
float32[] detectedPoint
int32 detectedObject
float32[] normalVector

")

(setf (get vrep_common::simRosReadProximitySensorResponse :md5sum-) "05a1fa096e5ff4ba7072c60e22ef589e")
(setf (get vrep_common::simRosReadProximitySensorResponse :datatype-) "vrep_common/simRosReadProximitySensorResponse")
(setf (get vrep_common::simRosReadProximitySensorResponse :definition-)
      "



int32 handle
---
int32 result
float32[] detectedPoint
int32 detectedObject
float32[] normalVector

")



(provide :vrep_common/simRosReadProximitySensor "05a1fa096e5ff4ba7072c60e22ef589e")


