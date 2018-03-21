;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetObjectPosition)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetObjectPosition (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPOSITION")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPOSITION"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPOSITIONREQUEST")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPOSITIONREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETOBJECTPOSITIONRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETOBJECTPOSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass vrep_common::simRosSetObjectPositionRequest
  :super ros::object
  :slots (_handle _relativeToObjectHandle _position ))

(defmethod vrep_common::simRosSetObjectPositionRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:relativeToObjectHandle __relativeToObjectHandle) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _relativeToObjectHandle (round __relativeToObjectHandle))
   (setq _position __position)
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:relativeToObjectHandle
   (&optional __relativeToObjectHandle)
   (if __relativeToObjectHandle (setq _relativeToObjectHandle __relativeToObjectHandle)) _relativeToObjectHandle)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; int32 _relativeToObjectHandle
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; int32 _relativeToObjectHandle
       (write-long _relativeToObjectHandle s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _relativeToObjectHandle
     (setq _relativeToObjectHandle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosSetObjectPositionResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetObjectPositionResponse
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

(defclass vrep_common::simRosSetObjectPosition
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetObjectPosition :md5sum-) "6f49de0c0a94265fc772061f892cd142")
(setf (get vrep_common::simRosSetObjectPosition :datatype-) "vrep_common/simRosSetObjectPosition")
(setf (get vrep_common::simRosSetObjectPosition :request) vrep_common::simRosSetObjectPositionRequest)
(setf (get vrep_common::simRosSetObjectPosition :response) vrep_common::simRosSetObjectPositionResponse)

(defmethod vrep_common::simRosSetObjectPositionRequest
  (:response () (instance vrep_common::simRosSetObjectPositionResponse :init)))

(setf (get vrep_common::simRosSetObjectPositionRequest :md5sum-) "6f49de0c0a94265fc772061f892cd142")
(setf (get vrep_common::simRosSetObjectPositionRequest :datatype-) "vrep_common/simRosSetObjectPositionRequest")
(setf (get vrep_common::simRosSetObjectPositionRequest :definition-)
      "



int32 handle
int32 relativeToObjectHandle
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
int32 result

")

(setf (get vrep_common::simRosSetObjectPositionResponse :md5sum-) "6f49de0c0a94265fc772061f892cd142")
(setf (get vrep_common::simRosSetObjectPositionResponse :datatype-) "vrep_common/simRosSetObjectPositionResponse")
(setf (get vrep_common::simRosSetObjectPositionResponse :definition-)
      "



int32 handle
int32 relativeToObjectHandle
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
int32 result

")



(provide :vrep_common/simRosSetObjectPosition "6f49de0c0a94265fc772061f892cd142")


