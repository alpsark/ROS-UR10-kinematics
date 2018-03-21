;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetObjectSelection)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetObjectSelection (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTSELECTION")
  (make-package "VREP_COMMON::SIMROSSETOBJECTSELECTION"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTSELECTIONREQUEST")
  (make-package "VREP_COMMON::SIMROSSETOBJECTSELECTIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTSELECTIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTSELECTIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosSetObjectSelectionRequest
  :super ros::object
  :slots (_handles ))

(defmethod vrep_common::simRosSetObjectSelectionRequest
  (:init
   (&key
    ((:handles __handles) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _handles __handles)
   self)
  (:handles
   (&optional __handles)
   (if __handles (setq _handles __handles)) _handles)
  (:serialization-length
   ()
   (+
    ;; int32[] _handles
    (* 4    (length _handles)) 4
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
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectSelectionResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetObjectSelectionResponse
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

(defclass vrep_common::simRosSetObjectSelection
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetObjectSelection :md5sum-) "e00e479c133a7c8d25d2f7b4d86be540")
(setf (get vrep_common::simRosSetObjectSelection :datatype-) "vrep_common/simRosSetObjectSelection")
(setf (get vrep_common::simRosSetObjectSelection :request) vrep_common::simRosSetObjectSelectionRequest)
(setf (get vrep_common::simRosSetObjectSelection :response) vrep_common::simRosSetObjectSelectionResponse)

(defmethod vrep_common::simRosSetObjectSelectionRequest
  (:response () (instance vrep_common::simRosSetObjectSelectionResponse :init)))

(setf (get vrep_common::simRosSetObjectSelectionRequest :md5sum-) "e00e479c133a7c8d25d2f7b4d86be540")
(setf (get vrep_common::simRosSetObjectSelectionRequest :datatype-) "vrep_common/simRosSetObjectSelectionRequest")
(setf (get vrep_common::simRosSetObjectSelectionRequest :definition-)
      "



int32[] handles
---
int32 result

")

(setf (get vrep_common::simRosSetObjectSelectionResponse :md5sum-) "e00e479c133a7c8d25d2f7b4d86be540")
(setf (get vrep_common::simRosSetObjectSelectionResponse :datatype-) "vrep_common/simRosSetObjectSelectionResponse")
(setf (get vrep_common::simRosSetObjectSelectionResponse :definition-)
      "



int32[] handles
---
int32 result

")



(provide :vrep_common/simRosSetObjectSelection "e00e479c133a7c8d25d2f7b4d86be540")


