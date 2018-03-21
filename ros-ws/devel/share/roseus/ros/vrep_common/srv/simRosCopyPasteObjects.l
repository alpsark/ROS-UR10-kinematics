;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosCopyPasteObjects)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosCopyPasteObjects (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSCOPYPASTEOBJECTS")
  (make-package "VREP_COMMON::SIMROSCOPYPASTEOBJECTS"))
(unless (find-package "VREP_COMMON::SIMROSCOPYPASTEOBJECTSREQUEST")
  (make-package "VREP_COMMON::SIMROSCOPYPASTEOBJECTSREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSCOPYPASTEOBJECTSRESPONSE")
  (make-package "VREP_COMMON::SIMROSCOPYPASTEOBJECTSRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosCopyPasteObjectsRequest
  :super ros::object
  :slots (_objectHandles ))

(defmethod vrep_common::simRosCopyPasteObjectsRequest
  (:init
   (&key
    ((:objectHandles __objectHandles) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _objectHandles __objectHandles)
   self)
  (:objectHandles
   (&optional __objectHandles)
   (if __objectHandles (setq _objectHandles __objectHandles)) _objectHandles)
  (:serialization-length
   ()
   (+
    ;; int32[] _objectHandles
    (* 4    (length _objectHandles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _objectHandles
     (write-long (length _objectHandles) s)
     (dotimes (i (length _objectHandles))
       (write-long (elt _objectHandles i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _objectHandles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objectHandles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _objectHandles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosCopyPasteObjectsResponse
  :super ros::object
  :slots (_result _newObjectHandles ))

(defmethod vrep_common::simRosCopyPasteObjectsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:newObjectHandles __newObjectHandles) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _newObjectHandles __newObjectHandles)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:newObjectHandles
   (&optional __newObjectHandles)
   (if __newObjectHandles (setq _newObjectHandles __newObjectHandles)) _newObjectHandles)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32[] _newObjectHandles
    (* 4    (length _newObjectHandles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32[] _newObjectHandles
     (write-long (length _newObjectHandles) s)
     (dotimes (i (length _newObjectHandles))
       (write-long (elt _newObjectHandles i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _newObjectHandles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _newObjectHandles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _newObjectHandles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosCopyPasteObjects
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosCopyPasteObjects :md5sum-) "6c736eb743dc1dca49bfc35e3f009776")
(setf (get vrep_common::simRosCopyPasteObjects :datatype-) "vrep_common/simRosCopyPasteObjects")
(setf (get vrep_common::simRosCopyPasteObjects :request) vrep_common::simRosCopyPasteObjectsRequest)
(setf (get vrep_common::simRosCopyPasteObjects :response) vrep_common::simRosCopyPasteObjectsResponse)

(defmethod vrep_common::simRosCopyPasteObjectsRequest
  (:response () (instance vrep_common::simRosCopyPasteObjectsResponse :init)))

(setf (get vrep_common::simRosCopyPasteObjectsRequest :md5sum-) "6c736eb743dc1dca49bfc35e3f009776")
(setf (get vrep_common::simRosCopyPasteObjectsRequest :datatype-) "vrep_common/simRosCopyPasteObjectsRequest")
(setf (get vrep_common::simRosCopyPasteObjectsRequest :definition-)
      "



int32[] objectHandles
---
int32 result
int32[] newObjectHandles

")

(setf (get vrep_common::simRosCopyPasteObjectsResponse :md5sum-) "6c736eb743dc1dca49bfc35e3f009776")
(setf (get vrep_common::simRosCopyPasteObjectsResponse :datatype-) "vrep_common/simRosCopyPasteObjectsResponse")
(setf (get vrep_common::simRosCopyPasteObjectsResponse :definition-)
      "



int32[] objectHandles
---
int32 result
int32[] newObjectHandles

")



(provide :vrep_common/simRosCopyPasteObjects "6c736eb743dc1dca49bfc35e3f009776")


