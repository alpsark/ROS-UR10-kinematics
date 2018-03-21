;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetJointState)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetJointState (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTSTATE")
  (make-package "VREP_COMMON::SIMROSSETJOINTSTATE"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTSTATEREQUEST")
  (make-package "VREP_COMMON::SIMROSSETJOINTSTATEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETJOINTSTATERESPONSE")
  (make-package "VREP_COMMON::SIMROSSETJOINTSTATERESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetJointStateRequest
  :super ros::object
  :slots (_handles _setModes _values ))

(defmethod vrep_common::simRosSetJointStateRequest
  (:init
   (&key
    ((:handles __handles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:setModes __setModes) (make-array 0 :initial-element 0 :element-type :char))
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _handles __handles)
   (setq _setModes __setModes)
   (setq _values __values)
   self)
  (:handles
   (&optional __handles)
   (if __handles (setq _handles __handles)) _handles)
  (:setModes
   (&optional __setModes)
   (if __setModes (setq _setModes __setModes)) _setModes)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; int32[] _handles
    (* 4    (length _handles)) 4
    ;; uint8[] _setModes
    (* 1    (length _setModes)) 4
    ;; float32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _handles
     (write-long (length _handles) s)
     (dotimes (i (length _handles))
       (write-long (elt _handles i) s)
       )
     ;; uint8[] _setModes
     (write-long (length _setModes) s)
     (princ _setModes s)
     ;; float32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _handles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _handles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _handles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8[] _setModes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _setModes (make-array n :element-type :char))
     (replace _setModes buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosSetJointStateResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetJointStateResponse
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

(defclass vrep_common::simRosSetJointState
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetJointState :md5sum-) "f0dcb80e3d9c4b8b983ca341425c1996")
(setf (get vrep_common::simRosSetJointState :datatype-) "vrep_common/simRosSetJointState")
(setf (get vrep_common::simRosSetJointState :request) vrep_common::simRosSetJointStateRequest)
(setf (get vrep_common::simRosSetJointState :response) vrep_common::simRosSetJointStateResponse)

(defmethod vrep_common::simRosSetJointStateRequest
  (:response () (instance vrep_common::simRosSetJointStateResponse :init)))

(setf (get vrep_common::simRosSetJointStateRequest :md5sum-) "f0dcb80e3d9c4b8b983ca341425c1996")
(setf (get vrep_common::simRosSetJointStateRequest :datatype-) "vrep_common/simRosSetJointStateRequest")
(setf (get vrep_common::simRosSetJointStateRequest :definition-)
      "



int32[] handles
uint8[] setModes
float32[] values
---
int32 result

")

(setf (get vrep_common::simRosSetJointStateResponse :md5sum-) "f0dcb80e3d9c4b8b983ca341425c1996")
(setf (get vrep_common::simRosSetJointStateResponse :datatype-) "vrep_common/simRosSetJointStateResponse")
(setf (get vrep_common::simRosSetJointStateResponse :definition-)
      "



int32[] handles
uint8[] setModes
float32[] values
---
int32 result

")



(provide :vrep_common/simRosSetJointState "f0dcb80e3d9c4b8b983ca341425c1996")


