;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosDisplayDialog)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosDisplayDialog (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSDISPLAYDIALOG")
  (make-package "VREP_COMMON::SIMROSDISPLAYDIALOG"))
(unless (find-package "VREP_COMMON::SIMROSDISPLAYDIALOGREQUEST")
  (make-package "VREP_COMMON::SIMROSDISPLAYDIALOGREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSDISPLAYDIALOGRESPONSE")
  (make-package "VREP_COMMON::SIMROSDISPLAYDIALOGRESPONSE"))

(in-package "ROS")





(defclass vrep_common::simRosDisplayDialogRequest
  :super ros::object
  :slots (_titleText _mainText _dialogType _initialText _titleColors _dialogColors ))

(defmethod vrep_common::simRosDisplayDialogRequest
  (:init
   (&key
    ((:titleText __titleText) "")
    ((:mainText __mainText) "")
    ((:dialogType __dialogType) 0)
    ((:initialText __initialText) "")
    ((:titleColors __titleColors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dialogColors __dialogColors) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _titleText (string __titleText))
   (setq _mainText (string __mainText))
   (setq _dialogType (round __dialogType))
   (setq _initialText (string __initialText))
   (setq _titleColors __titleColors)
   (setq _dialogColors __dialogColors)
   self)
  (:titleText
   (&optional __titleText)
   (if __titleText (setq _titleText __titleText)) _titleText)
  (:mainText
   (&optional __mainText)
   (if __mainText (setq _mainText __mainText)) _mainText)
  (:dialogType
   (&optional __dialogType)
   (if __dialogType (setq _dialogType __dialogType)) _dialogType)
  (:initialText
   (&optional __initialText)
   (if __initialText (setq _initialText __initialText)) _initialText)
  (:titleColors
   (&optional __titleColors)
   (if __titleColors (setq _titleColors __titleColors)) _titleColors)
  (:dialogColors
   (&optional __dialogColors)
   (if __dialogColors (setq _dialogColors __dialogColors)) _dialogColors)
  (:serialization-length
   ()
   (+
    ;; string _titleText
    4 (length _titleText)
    ;; string _mainText
    4 (length _mainText)
    ;; int32 _dialogType
    4
    ;; string _initialText
    4 (length _initialText)
    ;; float32[] _titleColors
    (* 4    (length _titleColors)) 4
    ;; float32[] _dialogColors
    (* 4    (length _dialogColors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _titleText
       (write-long (length _titleText) s) (princ _titleText s)
     ;; string _mainText
       (write-long (length _mainText) s) (princ _mainText s)
     ;; int32 _dialogType
       (write-long _dialogType s)
     ;; string _initialText
       (write-long (length _initialText) s) (princ _initialText s)
     ;; float32[] _titleColors
     (write-long (length _titleColors) s)
     (dotimes (i (length _titleColors))
       (sys::poke (elt _titleColors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _dialogColors
     (write-long (length _dialogColors) s)
     (dotimes (i (length _dialogColors))
       (sys::poke (elt _dialogColors i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _titleText
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _titleText (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mainText
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mainText (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _dialogType
     (setq _dialogType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _initialText
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _initialText (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _titleColors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _titleColors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _titleColors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _dialogColors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dialogColors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dialogColors i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass vrep_common::simRosDisplayDialogResponse
  :super ros::object
  :slots (_dialogHandle _uiHandle ))

(defmethod vrep_common::simRosDisplayDialogResponse
  (:init
   (&key
    ((:dialogHandle __dialogHandle) 0)
    ((:uiHandle __uiHandle) 0)
    )
   (send-super :init)
   (setq _dialogHandle (round __dialogHandle))
   (setq _uiHandle (round __uiHandle))
   self)
  (:dialogHandle
   (&optional __dialogHandle)
   (if __dialogHandle (setq _dialogHandle __dialogHandle)) _dialogHandle)
  (:uiHandle
   (&optional __uiHandle)
   (if __uiHandle (setq _uiHandle __uiHandle)) _uiHandle)
  (:serialization-length
   ()
   (+
    ;; int32 _dialogHandle
    4
    ;; int32 _uiHandle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dialogHandle
       (write-long _dialogHandle s)
     ;; int32 _uiHandle
       (write-long _uiHandle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dialogHandle
     (setq _dialogHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _uiHandle
     (setq _uiHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosDisplayDialog
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosDisplayDialog :md5sum-) "948197fff5a2d242998cebb95fb8cae1")
(setf (get vrep_common::simRosDisplayDialog :datatype-) "vrep_common/simRosDisplayDialog")
(setf (get vrep_common::simRosDisplayDialog :request) vrep_common::simRosDisplayDialogRequest)
(setf (get vrep_common::simRosDisplayDialog :response) vrep_common::simRosDisplayDialogResponse)

(defmethod vrep_common::simRosDisplayDialogRequest
  (:response () (instance vrep_common::simRosDisplayDialogResponse :init)))

(setf (get vrep_common::simRosDisplayDialogRequest :md5sum-) "948197fff5a2d242998cebb95fb8cae1")
(setf (get vrep_common::simRosDisplayDialogRequest :datatype-) "vrep_common/simRosDisplayDialogRequest")
(setf (get vrep_common::simRosDisplayDialogRequest :definition-)
      "



string titleText
string mainText
int32 dialogType
string initialText
float32[] titleColors
float32[] dialogColors
---
int32 dialogHandle
int32 uiHandle

")

(setf (get vrep_common::simRosDisplayDialogResponse :md5sum-) "948197fff5a2d242998cebb95fb8cae1")
(setf (get vrep_common::simRosDisplayDialogResponse :datatype-) "vrep_common/simRosDisplayDialogResponse")
(setf (get vrep_common::simRosDisplayDialogResponse :definition-)
      "



string titleText
string mainText
int32 dialogType
string initialText
float32[] titleColors
float32[] dialogColors
---
int32 dialogHandle
int32 uiHandle

")



(provide :vrep_common/simRosDisplayDialog "948197fff5a2d242998cebb95fb8cae1")


