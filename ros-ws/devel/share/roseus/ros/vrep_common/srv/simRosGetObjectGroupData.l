;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetObjectGroupData)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetObjectGroupData (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTGROUPDATA")
  (make-package "VREP_COMMON::SIMROSGETOBJECTGROUPDATA"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTGROUPDATAREQUEST")
  (make-package "VREP_COMMON::SIMROSGETOBJECTGROUPDATAREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETOBJECTGROUPDATARESPONSE")
  (make-package "VREP_COMMON::SIMROSGETOBJECTGROUPDATARESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosGetObjectGroupDataRequest
  :super ros::object
  :slots (_objectType _dataType ))

(defmethod vrep_common::simRosGetObjectGroupDataRequest
  (:init
   (&key
    ((:objectType __objectType) 0)
    ((:dataType __dataType) 0)
    )
   (send-super :init)
   (setq _objectType (round __objectType))
   (setq _dataType (round __dataType))
   self)
  (:objectType
   (&optional __objectType)
   (if __objectType (setq _objectType __objectType)) _objectType)
  (:dataType
   (&optional __dataType)
   (if __dataType (setq _dataType __dataType)) _dataType)
  (:serialization-length
   ()
   (+
    ;; int32 _objectType
    4
    ;; int32 _dataType
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _objectType
       (write-long _objectType s)
     ;; int32 _dataType
       (write-long _dataType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _objectType
     (setq _objectType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dataType
     (setq _dataType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectGroupDataResponse
  :super ros::object
  :slots (_handles _intData _floatData _strings ))

(defmethod vrep_common::simRosGetObjectGroupDataResponse
  (:init
   (&key
    ((:handles __handles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:intData __intData) (make-array 0 :initial-element 0 :element-type :integer))
    ((:floatData __floatData) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:strings __strings) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _handles __handles)
   (setq _intData __intData)
   (setq _floatData __floatData)
   (setq _strings __strings)
   self)
  (:handles
   (&optional __handles)
   (if __handles (setq _handles __handles)) _handles)
  (:intData
   (&optional __intData)
   (if __intData (setq _intData __intData)) _intData)
  (:floatData
   (&optional __floatData)
   (if __floatData (setq _floatData __floatData)) _floatData)
  (:strings
   (&optional __strings)
   (if __strings (setq _strings __strings)) _strings)
  (:serialization-length
   ()
   (+
    ;; int32[] _handles
    (* 4    (length _handles)) 4
    ;; int32[] _intData
    (* 4    (length _intData)) 4
    ;; float32[] _floatData
    (* 4    (length _floatData)) 4
    ;; string[] _strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _strings)) 4
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
     ;; int32[] _intData
     (write-long (length _intData) s)
     (dotimes (i (length _intData))
       (write-long (elt _intData i) s)
       )
     ;; float32[] _floatData
     (write-long (length _floatData) s)
     (dotimes (i (length _floatData))
       (sys::poke (elt _floatData i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _strings
     (write-long (length _strings) s)
     (dolist (elem _strings)
       (write-long (length elem) s) (princ elem s)
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
   ;; int32[] _intData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _intData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _floatData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _floatData (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _floatData i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosGetObjectGroupData
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetObjectGroupData :md5sum-) "8d0534a840a5e37715f425228506250e")
(setf (get vrep_common::simRosGetObjectGroupData :datatype-) "vrep_common/simRosGetObjectGroupData")
(setf (get vrep_common::simRosGetObjectGroupData :request) vrep_common::simRosGetObjectGroupDataRequest)
(setf (get vrep_common::simRosGetObjectGroupData :response) vrep_common::simRosGetObjectGroupDataResponse)

(defmethod vrep_common::simRosGetObjectGroupDataRequest
  (:response () (instance vrep_common::simRosGetObjectGroupDataResponse :init)))

(setf (get vrep_common::simRosGetObjectGroupDataRequest :md5sum-) "8d0534a840a5e37715f425228506250e")
(setf (get vrep_common::simRosGetObjectGroupDataRequest :datatype-) "vrep_common/simRosGetObjectGroupDataRequest")
(setf (get vrep_common::simRosGetObjectGroupDataRequest :definition-)
      "



int32 objectType
int32 dataType
---
int32[] handles
int32[] intData
float32[] floatData
string[] strings

")

(setf (get vrep_common::simRosGetObjectGroupDataResponse :md5sum-) "8d0534a840a5e37715f425228506250e")
(setf (get vrep_common::simRosGetObjectGroupDataResponse :datatype-) "vrep_common/simRosGetObjectGroupDataResponse")
(setf (get vrep_common::simRosGetObjectGroupDataResponse :definition-)
      "



int32 objectType
int32 dataType
---
int32[] handles
int32[] intData
float32[] floatData
string[] strings

")



(provide :vrep_common/simRosGetObjectGroupData "8d0534a840a5e37715f425228506250e")


