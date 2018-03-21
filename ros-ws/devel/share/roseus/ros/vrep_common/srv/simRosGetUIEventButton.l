;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetUIEventButton)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetUIEventButton (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETUIEVENTBUTTON")
  (make-package "VREP_COMMON::SIMROSGETUIEVENTBUTTON"))
(unless (find-package "VREP_COMMON::SIMROSGETUIEVENTBUTTONREQUEST")
  (make-package "VREP_COMMON::SIMROSGETUIEVENTBUTTONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETUIEVENTBUTTONRESPONSE")
  (make-package "VREP_COMMON::SIMROSGETUIEVENTBUTTONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetUIEventButtonRequest
  :super ros::object
  :slots (_uiHandle ))

(defmethod vrep_common::simRosGetUIEventButtonRequest
  (:init
   (&key
    ((:uiHandle __uiHandle) 0)
    )
   (send-super :init)
   (setq _uiHandle (round __uiHandle))
   self)
  (:uiHandle
   (&optional __uiHandle)
   (if __uiHandle (setq _uiHandle __uiHandle)) _uiHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _uiHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _uiHandle
       (write-long _uiHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _uiHandle
     (setq _uiHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetUIEventButtonResponse
  :super ros::object
  :slots (_buttonID _auxiliaryValues ))

(defmethod vrep_common::simRosGetUIEventButtonResponse
  (:init
   (&key
    ((:buttonID __buttonID) 0)
    ((:auxiliaryValues __auxiliaryValues) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _buttonID (round __buttonID))
   (setq _auxiliaryValues __auxiliaryValues)
   self)
  (:buttonID
   (&optional __buttonID)
   (if __buttonID (setq _buttonID __buttonID)) _buttonID)
  (:auxiliaryValues
   (&optional __auxiliaryValues)
   (if __auxiliaryValues (setq _auxiliaryValues __auxiliaryValues)) _auxiliaryValues)
  (:serialization-length
   ()
   (+
    ;; int32 _buttonID
    4
    ;; int32[] _auxiliaryValues
    (* 4    (length _auxiliaryValues)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _buttonID
       (write-long _buttonID s)
     ;; int32[] _auxiliaryValues
     (write-long (length _auxiliaryValues) s)
     (dotimes (i (length _auxiliaryValues))
       (write-long (elt _auxiliaryValues i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _buttonID
     (setq _buttonID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _auxiliaryValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _auxiliaryValues (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _auxiliaryValues i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosGetUIEventButton
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetUIEventButton :md5sum-) "73f7d10c9f731ce35564b7e9b645aa25")
(setf (get vrep_common::simRosGetUIEventButton :datatype-) "vrep_common/simRosGetUIEventButton")
(setf (get vrep_common::simRosGetUIEventButton :request) vrep_common::simRosGetUIEventButtonRequest)
(setf (get vrep_common::simRosGetUIEventButton :response) vrep_common::simRosGetUIEventButtonResponse)

(defmethod vrep_common::simRosGetUIEventButtonRequest
  (:response () (instance vrep_common::simRosGetUIEventButtonResponse :init)))

(setf (get vrep_common::simRosGetUIEventButtonRequest :md5sum-) "73f7d10c9f731ce35564b7e9b645aa25")
(setf (get vrep_common::simRosGetUIEventButtonRequest :datatype-) "vrep_common/simRosGetUIEventButtonRequest")
(setf (get vrep_common::simRosGetUIEventButtonRequest :definition-)
      "



int32 uiHandle
---
int32 buttonID
int32[] auxiliaryValues

")

(setf (get vrep_common::simRosGetUIEventButtonResponse :md5sum-) "73f7d10c9f731ce35564b7e9b645aa25")
(setf (get vrep_common::simRosGetUIEventButtonResponse :datatype-) "vrep_common/simRosGetUIEventButtonResponse")
(setf (get vrep_common::simRosGetUIEventButtonResponse :definition-)
      "



int32 uiHandle
---
int32 buttonID
int32[] auxiliaryValues

")



(provide :vrep_common/simRosGetUIEventButton "73f7d10c9f731ce35564b7e9b645aa25")


