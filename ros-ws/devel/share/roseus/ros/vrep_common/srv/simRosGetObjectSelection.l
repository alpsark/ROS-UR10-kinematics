;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectSelection)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectSelection (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTSELECTION")
  (make-package "VREP_COMMON::SIMROSGETOBJECTSELECTION"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTSELECTIONREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTSELECTIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTSELECTIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTSELECTIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectSelectionRequest
  :super ros::object
  :slots ())

(defmethod vrep_common::simRosGetObjectSelectionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectSelectionResponse
  :super ros::object
  :slots (_handles ))

(defmethod vrep_common::simRosGetObjectSelectionResponse
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

(defclass vrep_common::simRosGetObjectSelection
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectSelection :md5sum-) "1b24af430705cefc484ff6cc1c5669ad")
(setf (get vrep_common::simRosGetObjectSelection :datatype-) "vrep_common/simRosGetObjectSelection")
(setf (get vrep_common::simRosGetObjectSelection :request) vrep_common::simRosGetObjectSelectionRequest)
(setf (get vrep_common::simRosGetObjectSelection :response) vrep_common::simRosGetObjectSelectionResponse)

(defmethod vrep_common::simRosGetObjectSelectionRequest
  (:response () (instance vrep_common::simRosGetObjectSelectionResponse :init)))

(setf (get vrep_common::simRosGetObjectSelectionRequest :md5sum-) "1b24af430705cefc484ff6cc1c5669ad")
(setf (get vrep_common::simRosGetObjectSelectionRequest :datatype-) "vrep_common/simRosGetObjectSelectionRequest")
(setf (get vrep_common::simRosGetObjectSelectionRequest :definition-)
      "



---
int32[] handles

")

(setf (get vrep_common::simRosGetObjectSelectionResponse :md5sum-) "1b24af430705cefc484ff6cc1c5669ad")
(setf (get vrep_common::simRosGetObjectSelectionResponse :datatype-) "vrep_common/simRosGetObjectSelectionResponse")
(setf (get vrep_common::simRosGetObjectSelectionResponse :definition-)
      "



---
int32[] handles

")



(provide :vrep_common/simRosGetObjectSelection "1b24af430705cefc484ff6cc1c5669ad")


