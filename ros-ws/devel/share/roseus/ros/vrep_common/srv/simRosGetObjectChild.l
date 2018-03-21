;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectChild)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectChild (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTCHILD")
  (make-package "VREP_COMMON::SIMROSGETOBJECTCHILD"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTCHILDREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTCHILDREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTCHILDRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTCHILDRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectChildRequest
  :super ros::object
  :slots (_handle _index ))

(defmethod vrep_common::simRosGetObjectChildRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _index (round __index))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectChildResponse
  :super ros::object
  :slots (_childHandle ))

(defmethod vrep_common::simRosGetObjectChildResponse
  (:init
   (&key
    ((:childHandle __childHandle) 0)
    )
   (send-super :init)
   (setq _childHandle (round __childHandle))
   self)
  (:childHandle
   (&optional __childHandle)
   (if __childHandle (setq _childHandle __childHandle)) _childHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _childHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _childHandle
       (write-long _childHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _childHandle
     (setq _childHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectChild
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectChild :md5sum-) "2fc24ec13ef12d145e6853d1469b925c")
(setf (get vrep_common::simRosGetObjectChild :datatype-) "vrep_common/simRosGetObjectChild")
(setf (get vrep_common::simRosGetObjectChild :request) vrep_common::simRosGetObjectChildRequest)
(setf (get vrep_common::simRosGetObjectChild :response) vrep_common::simRosGetObjectChildResponse)

(defmethod vrep_common::simRosGetObjectChildRequest
  (:response () (instance vrep_common::simRosGetObjectChildResponse :init)))

(setf (get vrep_common::simRosGetObjectChildRequest :md5sum-) "2fc24ec13ef12d145e6853d1469b925c")
(setf (get vrep_common::simRosGetObjectChildRequest :datatype-) "vrep_common/simRosGetObjectChildRequest")
(setf (get vrep_common::simRosGetObjectChildRequest :definition-)
      "



int32 handle
int32 index
---
int32 childHandle

")

(setf (get vrep_common::simRosGetObjectChildResponse :md5sum-) "2fc24ec13ef12d145e6853d1469b925c")
(setf (get vrep_common::simRosGetObjectChildResponse :datatype-) "vrep_common/simRosGetObjectChildResponse")
(setf (get vrep_common::simRosGetObjectChildResponse :definition-)
      "



int32 handle
int32 index
---
int32 childHandle

")



(provide :vrep_common/simRosGetObjectChild "2fc24ec13ef12d145e6853d1469b925c")


