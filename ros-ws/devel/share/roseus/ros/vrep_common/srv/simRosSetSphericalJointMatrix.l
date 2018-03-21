;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetSphericalJointMatrix)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetSphericalJointMatrix (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETSPHERICALJOINTMATRIX")
  (make-package "VREP_COMMON::SIMROSSETSPHERICALJOINTMATRIX"))
(unless (find-package "VREP_COMMON::SIMROSSETSPHERICALJOINTMATRIXREQUEST")
  (make-package "VREP_COMMON::SIMROSSETSPHERICALJOINTMATRIXREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETSPHERICALJOINTMATRIXRESPONSE")
  (make-package "VREP_COMMON::SIMROSSETSPHERICALJOINTMATRIXRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass vrep_common::simRosSetSphericalJointMatrixRequest
  :super ros::object
  :slots (_handle _quaternion ))

(defmethod vrep_common::simRosSetSphericalJointMatrixRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _quaternion __quaternion)
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosSetSphericalJointMatrixResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetSphericalJointMatrixResponse
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

(defclass vrep_common::simRosSetSphericalJointMatrix
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetSphericalJointMatrix :md5sum-) "ff6022ac5ed35d4a73c1ed756bc036db")
(setf (get vrep_common::simRosSetSphericalJointMatrix :datatype-) "vrep_common/simRosSetSphericalJointMatrix")
(setf (get vrep_common::simRosSetSphericalJointMatrix :request) vrep_common::simRosSetSphericalJointMatrixRequest)
(setf (get vrep_common::simRosSetSphericalJointMatrix :response) vrep_common::simRosSetSphericalJointMatrixResponse)

(defmethod vrep_common::simRosSetSphericalJointMatrixRequest
  (:response () (instance vrep_common::simRosSetSphericalJointMatrixResponse :init)))

(setf (get vrep_common::simRosSetSphericalJointMatrixRequest :md5sum-) "ff6022ac5ed35d4a73c1ed756bc036db")
(setf (get vrep_common::simRosSetSphericalJointMatrixRequest :datatype-) "vrep_common/simRosSetSphericalJointMatrixRequest")
(setf (get vrep_common::simRosSetSphericalJointMatrixRequest :definition-)
      "



int32 handle
geometry_msgs/Quaternion quaternion

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 result

")

(setf (get vrep_common::simRosSetSphericalJointMatrixResponse :md5sum-) "ff6022ac5ed35d4a73c1ed756bc036db")
(setf (get vrep_common::simRosSetSphericalJointMatrixResponse :datatype-) "vrep_common/simRosSetSphericalJointMatrixResponse")
(setf (get vrep_common::simRosSetSphericalJointMatrixResponse :definition-)
      "



int32 handle
geometry_msgs/Quaternion quaternion

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 result

")



(provide :vrep_common/simRosSetSphericalJointMatrix "ff6022ac5ed35d4a73c1ed756bc036db")


