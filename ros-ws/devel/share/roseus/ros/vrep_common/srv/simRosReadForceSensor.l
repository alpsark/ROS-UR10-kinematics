;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosReadForceSensor)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosReadForceSensor (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSREADFORCESENSOR")
  (make-package "VREP_COMMON::SIMROSREADFORCESENSOR"))
(unless (find-package "VREP_COMMON::SIMROSREADFORCESENSORREQUEST")
  (make-package "VREP_COMMON::SIMROSREADFORCESENSORREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSREADFORCESENSORRESPONSE")
  (make-package "VREP_COMMON::SIMROSREADFORCESENSORRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vrep_common::simRosReadForceSensorRequest
  :super ros::object
  :slots (_handle ))

(defmethod vrep_common::simRosReadForceSensorRequest
  (:init
   (&key
    ((:handle __handle) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vrep_common::simRosReadForceSensorResponse
  :super ros::object
  :slots (_result _force _torque ))

(defmethod vrep_common::simRosReadForceSensorResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:torque __torque) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _force __force)
   (setq _torque __torque)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
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
    ;; int32 _result
    4
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; geometry_msgs/Vector3 _torque
    (send _torque :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; geometry_msgs/Vector3 _torque
       (send _torque :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; geometry_msgs/Vector3 _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosReadForceSensor
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosReadForceSensor :md5sum-) "f2a54a090baac0d8c5c08bb865b8cd2d")
(setf (get vrep_common::simRosReadForceSensor :datatype-) "vrep_common/simRosReadForceSensor")
(setf (get vrep_common::simRosReadForceSensor :request) vrep_common::simRosReadForceSensorRequest)
(setf (get vrep_common::simRosReadForceSensor :response) vrep_common::simRosReadForceSensorResponse)

(defmethod vrep_common::simRosReadForceSensorRequest
  (:response () (instance vrep_common::simRosReadForceSensorResponse :init)))

(setf (get vrep_common::simRosReadForceSensorRequest :md5sum-) "f2a54a090baac0d8c5c08bb865b8cd2d")
(setf (get vrep_common::simRosReadForceSensorRequest :datatype-) "vrep_common/simRosReadForceSensorRequest")
(setf (get vrep_common::simRosReadForceSensorRequest :definition-)
      "



int32 handle
---
int32 result
geometry_msgs/Vector3 force
geometry_msgs/Vector3 torque


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
")

(setf (get vrep_common::simRosReadForceSensorResponse :md5sum-) "f2a54a090baac0d8c5c08bb865b8cd2d")
(setf (get vrep_common::simRosReadForceSensorResponse :datatype-) "vrep_common/simRosReadForceSensorResponse")
(setf (get vrep_common::simRosReadForceSensorResponse :definition-)
      "



int32 handle
---
int32 result
geometry_msgs/Vector3 force
geometry_msgs/Vector3 torque


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
")



(provide :vrep_common/simRosReadForceSensor "f2a54a090baac0d8c5c08bb865b8cd2d")


