;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosCreateDummy)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosCreateDummy (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSCREATEDUMMY")
  (make-package "VREP_COMMON::SIMROSCREATEDUMMY"))
(unless (find-package "VREP_COMMON::SIMROSCREATEDUMMYREQUEST")
  (make-package "VREP_COMMON::SIMROSCREATEDUMMYREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSCREATEDUMMYRESPONSE")
  (make-package "VREP_COMMON::SIMROSCREATEDUMMYRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosCreateDummyRequest
  :super ros::object
  :slots (_size _colors ))

(defmethod vrep_common::simRosCreateDummyRequest
  (:init
   (&key
    ((:size __size) 0.0)
    ((:colors __colors) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _size (float __size))
   (setq _colors __colors)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:colors
   (&optional __colors)
   (if __colors (setq _colors __colors)) _colors)
  (:serialization-length
   ()
   (+
    ;; float32 _size
    4
    ;; int8[] _colors
    (* 1    (length _colors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _size
       (sys::poke _size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8[] _colors
     (write-long (length _colors) s)
     (dotimes (i (length _colors))
       (write-byte (elt _colors i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _size
     (setq _size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8[] _colors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _colors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _colors i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _colors i) 127) (setf (elt _colors i) (- (elt _colors i) 256)))
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosCreateDummyResponse
  :super ros::object
  :slots (_dummyHandle ))

(defmethod vrep_common::simRosCreateDummyResponse
  (:init
   (&key
    ((:dummyHandle __dummyHandle) 0)
    )
   (send-super :init)
   (setq _dummyHandle (round __dummyHandle))
   self)
  (:dummyHandle
   (&optional __dummyHandle)
   (if __dummyHandle (setq _dummyHandle __dummyHandle)) _dummyHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _dummyHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dummyHandle
       (write-long _dummyHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dummyHandle
     (setq _dummyHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosCreateDummy
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosCreateDummy :md5sum-) "ca160749088e63e26f75d439232c561a")
(setf (get vrep_common::simRosCreateDummy :datatype-) "vrep_common/simRosCreateDummy")
(setf (get vrep_common::simRosCreateDummy :request) vrep_common::simRosCreateDummyRequest)
(setf (get vrep_common::simRosCreateDummy :response) vrep_common::simRosCreateDummyResponse)

(defmethod vrep_common::simRosCreateDummyRequest
  (:response () (instance vrep_common::simRosCreateDummyResponse :init)))

(setf (get vrep_common::simRosCreateDummyRequest :md5sum-) "ca160749088e63e26f75d439232c561a")
(setf (get vrep_common::simRosCreateDummyRequest :datatype-) "vrep_common/simRosCreateDummyRequest")
(setf (get vrep_common::simRosCreateDummyRequest :definition-)
      "



float32 size
int8[] colors
---
int32 dummyHandle


")

(setf (get vrep_common::simRosCreateDummyResponse :md5sum-) "ca160749088e63e26f75d439232c561a")
(setf (get vrep_common::simRosCreateDummyResponse :datatype-) "vrep_common/simRosCreateDummyResponse")
(setf (get vrep_common::simRosCreateDummyResponse :definition-)
      "



float32 size
int8[] colors
---
int32 dummyHandle


")



(provide :vrep_common/simRosCreateDummy "ca160749088e63e26f75d439232c561a")


