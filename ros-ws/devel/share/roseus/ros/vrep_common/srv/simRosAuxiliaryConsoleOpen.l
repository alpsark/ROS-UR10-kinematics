;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosAuxiliaryConsoleOpen)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosAuxiliaryConsoleOpen (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEOPEN")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEOPEN"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEOPENREQUEST")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEOPENREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEOPENRESPONSE")
  (make-package "VREP_COMMON::SIMROSAUXILIARYCONSOLEOPENRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosAuxiliaryConsoleOpenRequest
  :super ros::object
  :slots (_title _maxLines _mode _position _size _textColor _backgroundColor ))

(defmethod vrep_common::simRosAuxiliaryConsoleOpenRequest
  (:init
   (&key
    ((:title __title) "")
    ((:maxLines __maxLines) 0)
    ((:mode __mode) 0)
    ((:position __position) (make-array 0 :initial-element 0 :element-type :integer))
    ((:size __size) (make-array 0 :initial-element 0 :element-type :integer))
    ((:textColor __textColor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:backgroundColor __backgroundColor) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _title (string __title))
   (setq _maxLines (round __maxLines))
   (setq _mode (round __mode))
   (setq _position __position)
   (setq _size __size)
   (setq _textColor __textColor)
   (setq _backgroundColor __backgroundColor)
   self)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:maxLines
   (&optional __maxLines)
   (if __maxLines (setq _maxLines __maxLines)) _maxLines)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:textColor
   (&optional __textColor)
   (if __textColor (setq _textColor __textColor)) _textColor)
  (:backgroundColor
   (&optional __backgroundColor)
   (if __backgroundColor (setq _backgroundColor __backgroundColor)) _backgroundColor)
  (:serialization-length
   ()
   (+
    ;; string _title
    4 (length _title)
    ;; int32 _maxLines
    4
    ;; int32 _mode
    4
    ;; int32[] _position
    (* 4    (length _position)) 4
    ;; int32[] _size
    (* 4    (length _size)) 4
    ;; float32[] _textColor
    (* 4    (length _textColor)) 4
    ;; float32[] _backgroundColor
    (* 4    (length _backgroundColor)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; int32 _maxLines
       (write-long _maxLines s)
     ;; int32 _mode
       (write-long _mode s)
     ;; int32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (write-long (elt _position i) s)
       )
     ;; int32[] _size
     (write-long (length _size) s)
     (dotimes (i (length _size))
       (write-long (elt _size i) s)
       )
     ;; float32[] _textColor
     (write-long (length _textColor) s)
     (dotimes (i (length _textColor))
       (sys::poke (elt _textColor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _backgroundColor
     (write-long (length _backgroundColor) s)
     (dotimes (i (length _backgroundColor))
       (sys::poke (elt _backgroundColor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _maxLines
     (setq _maxLines (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _size i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _textColor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _textColor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _textColor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _backgroundColor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _backgroundColor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _backgroundColor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosAuxiliaryConsoleOpenResponse
  :super ros::object
  :slots (_consoleHandle ))

(defmethod vrep_common::simRosAuxiliaryConsoleOpenResponse
  (:init
   (&key
    ((:consoleHandle __consoleHandle) 0)
    )
   (send-super :init)
   (setq _consoleHandle (round __consoleHandle))
   self)
  (:consoleHandle
   (&optional __consoleHandle)
   (if __consoleHandle (setq _consoleHandle __consoleHandle)) _consoleHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _consoleHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _consoleHandle
       (write-long _consoleHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _consoleHandle
     (setq _consoleHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosAuxiliaryConsoleOpen
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosAuxiliaryConsoleOpen :md5sum-) "f861a9b4fa1cfe42d343017f3c8914a5")
(setf (get vrep_common::simRosAuxiliaryConsoleOpen :datatype-) "vrep_common/simRosAuxiliaryConsoleOpen")
(setf (get vrep_common::simRosAuxiliaryConsoleOpen :request) vrep_common::simRosAuxiliaryConsoleOpenRequest)
(setf (get vrep_common::simRosAuxiliaryConsoleOpen :response) vrep_common::simRosAuxiliaryConsoleOpenResponse)

(defmethod vrep_common::simRosAuxiliaryConsoleOpenRequest
  (:response () (instance vrep_common::simRosAuxiliaryConsoleOpenResponse :init)))

(setf (get vrep_common::simRosAuxiliaryConsoleOpenRequest :md5sum-) "f861a9b4fa1cfe42d343017f3c8914a5")
(setf (get vrep_common::simRosAuxiliaryConsoleOpenRequest :datatype-) "vrep_common/simRosAuxiliaryConsoleOpenRequest")
(setf (get vrep_common::simRosAuxiliaryConsoleOpenRequest :definition-)
      "



string title
int32 maxLines
int32 mode
int32[] position
int32[] size
float32[] textColor
float32[] backgroundColor
---
int32 consoleHandle


")

(setf (get vrep_common::simRosAuxiliaryConsoleOpenResponse :md5sum-) "f861a9b4fa1cfe42d343017f3c8914a5")
(setf (get vrep_common::simRosAuxiliaryConsoleOpenResponse :datatype-) "vrep_common/simRosAuxiliaryConsoleOpenResponse")
(setf (get vrep_common::simRosAuxiliaryConsoleOpenResponse :definition-)
      "



string title
int32 maxLines
int32 mode
int32[] position
int32[] size
float32[] textColor
float32[] backgroundColor
---
int32 consoleHandle


")



(provide :vrep_common/simRosAuxiliaryConsoleOpen "f861a9b4fa1cfe42d343017f3c8914a5")


