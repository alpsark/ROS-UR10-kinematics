;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::ProximitySensorData)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'ProximitySensorData (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::PROXIMITYSENSORDATA")
  (make-package "VREP_COMMON::PROXIMITYSENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude ProximitySensorData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vrep_common::ProximitySensorData
  :super ros::object
  :slots (_detectedPoint _detectedObject _normalVector ))

(defmethod vrep_common::ProximitySensorData
  (:init
   (&key
    ((:detectedPoint __detectedPoint) (instance geometry_msgs::Point32 :init))
    ((:detectedObject __detectedObject) (instance std_msgs::Int32 :init))
    ((:normalVector __normalVector) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _detectedPoint __detectedPoint)
   (setq _detectedObject __detectedObject)
   (setq _normalVector __normalVector)
   self)
  (:detectedPoint
   (&rest __detectedPoint)
   (if (keywordp (car __detectedPoint))
       (send* _detectedPoint __detectedPoint)
     (progn
       (if __detectedPoint (setq _detectedPoint (car __detectedPoint)))
       _detectedPoint)))
  (:detectedObject
   (&rest __detectedObject)
   (if (keywordp (car __detectedObject))
       (send* _detectedObject __detectedObject)
     (progn
       (if __detectedObject (setq _detectedObject (car __detectedObject)))
       _detectedObject)))
  (:normalVector
   (&rest __normalVector)
   (if (keywordp (car __normalVector))
       (send* _normalVector __normalVector)
     (progn
       (if __normalVector (setq _normalVector (car __normalVector)))
       _normalVector)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32 _detectedPoint
    (send _detectedPoint :serialization-length)
    ;; std_msgs/Int32 _detectedObject
    (send _detectedObject :serialization-length)
    ;; geometry_msgs/Point32 _normalVector
    (send _normalVector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _detectedPoint
       (send _detectedPoint :serialize s)
     ;; std_msgs/Int32 _detectedObject
       (send _detectedObject :serialize s)
     ;; geometry_msgs/Point32 _normalVector
       (send _normalVector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _detectedPoint
     (send _detectedPoint :deserialize buf ptr-) (incf ptr- (send _detectedPoint :serialization-length))
   ;; std_msgs/Int32 _detectedObject
     (send _detectedObject :deserialize buf ptr-) (incf ptr- (send _detectedObject :serialization-length))
   ;; geometry_msgs/Point32 _normalVector
     (send _normalVector :deserialize buf ptr-) (incf ptr- (send _normalVector :serialization-length))
   ;;
   self)
  )

(setf (get vrep_common::ProximitySensorData :md5sum-) "ca4cef31bef118238b22d9d3bc7e3089")
(setf (get vrep_common::ProximitySensorData :datatype-) "vrep_common/ProximitySensorData")
(setf (get vrep_common::ProximitySensorData :definition-)
      "geometry_msgs/Point32 detectedPoint
std_msgs/Int32 detectedObject
geometry_msgs/Point32 normalVector

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :vrep_common/ProximitySensorData "ca4cef31bef118238b22d9d3bc7e3089")


