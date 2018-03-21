;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosCallScriptFunction)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosCallScriptFunction (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSCALLSCRIPTFUNCTION")
  (make-package "VREP_COMMON::SIMROSCALLSCRIPTFUNCTION"))
(unless (find-package "VREP_COMMON::SIMROSCALLSCRIPTFUNCTIONREQUEST")
  (make-package "VREP_COMMON::SIMROSCALLSCRIPTFUNCTIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSCALLSCRIPTFUNCTIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSCALLSCRIPTFUNCTIONRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosCallScriptFunctionRequest
  :super ros::object
  :slots (_functionNameAtObjectName _scriptHandleOrType _inputInts _inputFloats _inputStrings _inputBuffer ))

(defmethod vrep_common::simRosCallScriptFunctionRequest
  (:init
   (&key
    ((:functionNameAtObjectName __functionNameAtObjectName) "")
    ((:scriptHandleOrType __scriptHandleOrType) 0)
    ((:inputInts __inputInts) (make-array 0 :initial-element 0 :element-type :integer))
    ((:inputFloats __inputFloats) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:inputStrings __inputStrings) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:inputBuffer __inputBuffer) "")
    )
   (send-super :init)
   (setq _functionNameAtObjectName (string __functionNameAtObjectName))
   (setq _scriptHandleOrType (round __scriptHandleOrType))
   (setq _inputInts __inputInts)
   (setq _inputFloats __inputFloats)
   (setq _inputStrings __inputStrings)
   (setq _inputBuffer (string __inputBuffer))
   self)
  (:functionNameAtObjectName
   (&optional __functionNameAtObjectName)
   (if __functionNameAtObjectName (setq _functionNameAtObjectName __functionNameAtObjectName)) _functionNameAtObjectName)
  (:scriptHandleOrType
   (&optional __scriptHandleOrType)
   (if __scriptHandleOrType (setq _scriptHandleOrType __scriptHandleOrType)) _scriptHandleOrType)
  (:inputInts
   (&optional __inputInts)
   (if __inputInts (setq _inputInts __inputInts)) _inputInts)
  (:inputFloats
   (&optional __inputFloats)
   (if __inputFloats (setq _inputFloats __inputFloats)) _inputFloats)
  (:inputStrings
   (&optional __inputStrings)
   (if __inputStrings (setq _inputStrings __inputStrings)) _inputStrings)
  (:inputBuffer
   (&optional __inputBuffer)
   (if __inputBuffer (setq _inputBuffer __inputBuffer)) _inputBuffer)
  (:serialization-length
   ()
   (+
    ;; string _functionNameAtObjectName
    4 (length _functionNameAtObjectName)
    ;; int32 _scriptHandleOrType
    4
    ;; int32[] _inputInts
    (* 4    (length _inputInts)) 4
    ;; float32[] _inputFloats
    (* 4    (length _inputFloats)) 4
    ;; string[] _inputStrings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _inputStrings)) 4
    ;; string _inputBuffer
    4 (length _inputBuffer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _functionNameAtObjectName
       (write-long (length _functionNameAtObjectName) s) (princ _functionNameAtObjectName s)
     ;; int32 _scriptHandleOrType
       (write-long _scriptHandleOrType s)
     ;; int32[] _inputInts
     (write-long (length _inputInts) s)
     (dotimes (i (length _inputInts))
       (write-long (elt _inputInts i) s)
       )
     ;; float32[] _inputFloats
     (write-long (length _inputFloats) s)
     (dotimes (i (length _inputFloats))
       (sys::poke (elt _inputFloats i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _inputStrings
     (write-long (length _inputStrings) s)
     (dolist (elem _inputStrings)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _inputBuffer
       (write-long (length _inputBuffer) s) (princ _inputBuffer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _functionNameAtObjectName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _functionNameAtObjectName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _scriptHandleOrType
     (setq _scriptHandleOrType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _inputInts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputInts (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _inputInts i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _inputFloats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputFloats (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _inputFloats i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _inputStrings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputStrings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _inputStrings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _inputBuffer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _inputBuffer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosCallScriptFunctionResponse
  :super ros::object
  :slots (_result _outputInts _outputFloats _outputStrings _outputBuffer ))

(defmethod vrep_common::simRosCallScriptFunctionResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:outputInts __outputInts) (make-array 0 :initial-element 0 :element-type :integer))
    ((:outputFloats __outputFloats) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:outputStrings __outputStrings) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:outputBuffer __outputBuffer) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _outputInts __outputInts)
   (setq _outputFloats __outputFloats)
   (setq _outputStrings __outputStrings)
   (setq _outputBuffer (string __outputBuffer))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:outputInts
   (&optional __outputInts)
   (if __outputInts (setq _outputInts __outputInts)) _outputInts)
  (:outputFloats
   (&optional __outputFloats)
   (if __outputFloats (setq _outputFloats __outputFloats)) _outputFloats)
  (:outputStrings
   (&optional __outputStrings)
   (if __outputStrings (setq _outputStrings __outputStrings)) _outputStrings)
  (:outputBuffer
   (&optional __outputBuffer)
   (if __outputBuffer (setq _outputBuffer __outputBuffer)) _outputBuffer)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32[] _outputInts
    (* 4    (length _outputInts)) 4
    ;; float32[] _outputFloats
    (* 4    (length _outputFloats)) 4
    ;; string[] _outputStrings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _outputStrings)) 4
    ;; string _outputBuffer
    4 (length _outputBuffer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32[] _outputInts
     (write-long (length _outputInts) s)
     (dotimes (i (length _outputInts))
       (write-long (elt _outputInts i) s)
       )
     ;; float32[] _outputFloats
     (write-long (length _outputFloats) s)
     (dotimes (i (length _outputFloats))
       (sys::poke (elt _outputFloats i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _outputStrings
     (write-long (length _outputStrings) s)
     (dolist (elem _outputStrings)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _outputBuffer
       (write-long (length _outputBuffer) s) (princ _outputBuffer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _outputInts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outputInts (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _outputInts i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _outputFloats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outputFloats (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _outputFloats i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _outputStrings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outputStrings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _outputStrings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _outputBuffer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _outputBuffer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vrep_common::simRosCallScriptFunction
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosCallScriptFunction :md5sum-) "df820c7b6bf8dac295ae340e203b4857")
(setf (get vrep_common::simRosCallScriptFunction :datatype-) "vrep_common/simRosCallScriptFunction")
(setf (get vrep_common::simRosCallScriptFunction :request) vrep_common::simRosCallScriptFunctionRequest)
(setf (get vrep_common::simRosCallScriptFunction :response) vrep_common::simRosCallScriptFunctionResponse)

(defmethod vrep_common::simRosCallScriptFunctionRequest
  (:response () (instance vrep_common::simRosCallScriptFunctionResponse :init)))

(setf (get vrep_common::simRosCallScriptFunctionRequest :md5sum-) "df820c7b6bf8dac295ae340e203b4857")
(setf (get vrep_common::simRosCallScriptFunctionRequest :datatype-) "vrep_common/simRosCallScriptFunctionRequest")
(setf (get vrep_common::simRosCallScriptFunctionRequest :definition-)
      "



string functionNameAtObjectName
int32 scriptHandleOrType
int32[] inputInts
float32[] inputFloats
string[] inputStrings
string inputBuffer
---
int32 result
int32[] outputInts
float32[] outputFloats
string[] outputStrings
string outputBuffer

")

(setf (get vrep_common::simRosCallScriptFunctionResponse :md5sum-) "df820c7b6bf8dac295ae340e203b4857")
(setf (get vrep_common::simRosCallScriptFunctionResponse :datatype-) "vrep_common/simRosCallScriptFunctionResponse")
(setf (get vrep_common::simRosCallScriptFunctionResponse :definition-)
      "



string functionNameAtObjectName
int32 scriptHandleOrType
int32[] inputInts
float32[] inputFloats
string[] inputStrings
string inputBuffer
---
int32 result
int32[] outputInts
float32[] outputFloats
string[] outputStrings
string outputBuffer

")



(provide :vrep_common/simRosCallScriptFunction "df820c7b6bf8dac295ae340e203b4857")


