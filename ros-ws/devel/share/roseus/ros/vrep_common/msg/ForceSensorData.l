;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::ForceSensorData)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'ForceSensorData (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::FORCESENSORDATA")
  (make-package "VREP_COMMON::FORCESENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude ForceSensorData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::ForceSensorData
  :super ros::object
  :slots (_sensorState _force _torque ))

(defmethod vrep_common::ForceSensorData
  (:init
   (&key
    ((:sensorState __sensorState) (instance std_msgs::Int32 :init))
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:torque __torque) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _sensorState __sensorState)
   (setq _force __force)
   (setq _torque __torque)
   self)
  (:sensorState
   (&rest __sensorState)
   (if (keywordp (car __sensorState))
       (send* _sensorState __sensorState)
     (progn
       (if __sensorState (setq _sensorState (car __sensorState)))
       _sensorState)))
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:torque
   (&rest __torque)
   (if (keywordp (car __torque))
       (send* _torque __torque)
     (progn
       (if __torque (setq _torque (car __torque)))
       _torque)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _sensorState
    (send _sensorState :serialization-length)
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; geometry_msgs/Vector3 _torque
    (send _torque :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _sensorState
       (send _sensorState :serialize s)
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; geometry_msgs/Vector3 _torque
       (send _torque :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _sensorState
     (send _sensorState :deserialize buf ptr-) (incf ptr- (send _sensorState :serialization-length))
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; geometry_msgs/Vector3 _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;;
   self)
  )

(setf (get vrep_common::ForceSensorData :md5sum-) "975cc3fe659f11cb0dbd06416cff4a10")
(setf (get vrep_common::ForceSensorData :datatype-) "vrep_common/ForceSensorData")
(setf (get vrep_common::ForceSensorData :definition-)
      "std_msgs/Int32 sensorState
geometry_msgs/Vector3 force
geometry_msgs/Vector3 torque

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :vrep_common/ForceSensorData "975cc3fe659f11cb0dbd06416cff4a10")


