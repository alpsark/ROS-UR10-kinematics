;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjects)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjects (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTS")
  (make-package "VREP_COMMON::SIMROSGETOBJECTS"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTSREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTSREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTSRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTSRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectsRequest
  :super ros::object
  :slots (_objectType ))

(defmethod vrep_common::simRosGetObjectsRequest
  (:init
   (&key
    ((:objectType __objectType) 0)
    )
   (send-super :init)
   (setq _objectType (round __objectType))
   self)
  (:objectType
   (&optional __objectType)
   (if __objectType (setq _objectType __objectType)) _objectType)
  (:serialization-length
   ()
   (+
    ;; int32 _objectType
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _objectType
       (write-long _objectType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _objectType
     (setq _objectType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectsResponse
  :super ros::object
  :slots (_result _handles ))

(defmethod vrep_common::simRosGetObjectsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:handles __handles) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _handles __handles)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:handles
   (&optional __handles)
   (if __handles (setq _handles __handles)) _handles)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32[] _handles
    (* 4    (length _handles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32[] _handles
     (write-long (length _handles) s)
     (dotimes (i (length _handles))
       (write-long (elt _handles i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _handles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _handles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _handles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjects
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjects :md5sum-) "53b04066ba6b21f5182d36e874212727")
(setf (get vrep_common::simRosGetObjects :datatype-) "vrep_common/simRosGetObjects")
(setf (get vrep_common::simRosGetObjects :request) vrep_common::simRosGetObjectsRequest)
(setf (get vrep_common::simRosGetObjects :response) vrep_common::simRosGetObjectsResponse)

(defmethod vrep_common::simRosGetObjectsRequest
  (:response () (instance vrep_common::simRosGetObjectsResponse :init)))

(setf (get vrep_common::simRosGetObjectsRequest :md5sum-) "53b04066ba6b21f5182d36e874212727")
(setf (get vrep_common::simRosGetObjectsRequest :datatype-) "vrep_common/simRosGetObjectsRequest")
(setf (get vrep_common::simRosGetObjectsRequest :definition-)
      "



int32 objectType
---
int32 result
int32[] handles

")

(setf (get vrep_common::simRosGetObjectsResponse :md5sum-) "53b04066ba6b21f5182d36e874212727")
(setf (get vrep_common::simRosGetObjectsResponse :datatype-) "vrep_common/simRosGetObjectsResponse")
(setf (get vrep_common::simRosGetObjectsResponse :definition-)
      "



int32 objectType
---
int32 result
int32[] handles

")



(provide :vrep_common/simRosGetObjects "53b04066ba6b21f5182d36e874212727")


