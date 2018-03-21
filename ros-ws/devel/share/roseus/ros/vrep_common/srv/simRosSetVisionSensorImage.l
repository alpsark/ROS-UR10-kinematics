;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosSetVisionSensorImage)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosSetVisionSensorImage (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSSETVISIONSENSORIMAGE")
  (make-package "VREP_COMMON::SIMROSSETVISIONSENSORIMAGE"))
(unless (find-package "VREP_COMMON::SIMROSSETVISIONSENSORIMAGEREQUEST")
  (make-package "VREP_COMMON::SIMROSSETVISIONSENSORIMAGEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSSETVISIONSENSORIMAGERESPONSE")
  (make-package "VREP_COMMON::SIMROSSETVISIONSENSORIMAGERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass vrep_common::simRosSetVisionSensorImageRequest
  :super ros::object
  :slots (_handle _image ))

(defmethod vrep_common::simRosSetVisionSensorImageRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _image __image)
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosSetVisionSensorImageResponse
  :super ros::object
  :slots (_result ))

(defmethod vrep_common::simRosSetVisionSensorImageResponse
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

(defclass vrep_common::simRosSetVisionSensorImage
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosSetVisionSensorImage :md5sum-) "e312c990380d2289b9e07f7a0295ef34")
(setf (get vrep_common::simRosSetVisionSensorImage :datatype-) "vrep_common/simRosSetVisionSensorImage")
(setf (get vrep_common::simRosSetVisionSensorImage :request) vrep_common::simRosSetVisionSensorImageRequest)
(setf (get vrep_common::simRosSetVisionSensorImage :response) vrep_common::simRosSetVisionSensorImageResponse)

(defmethod vrep_common::simRosSetVisionSensorImageRequest
  (:response () (instance vrep_common::simRosSetVisionSensorImageResponse :init)))

(setf (get vrep_common::simRosSetVisionSensorImageRequest :md5sum-) "e312c990380d2289b9e07f7a0295ef34")
(setf (get vrep_common::simRosSetVisionSensorImageRequest :datatype-) "vrep_common/simRosSetVisionSensorImageRequest")
(setf (get vrep_common::simRosSetVisionSensorImageRequest :definition-)
      "



int32 handle
sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
---
int32 result

")

(setf (get vrep_common::simRosSetVisionSensorImageResponse :md5sum-) "e312c990380d2289b9e07f7a0295ef34")
(setf (get vrep_common::simRosSetVisionSensorImageResponse :datatype-) "vrep_common/simRosSetVisionSensorImageResponse")
(setf (get vrep_common::simRosSetVisionSensorImageResponse :definition-)
      "



int32 handle
sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
---
int32 result

")



(provide :vrep_common/simRosSetVisionSensorImage "e312c990380d2289b9e07f7a0295ef34")


