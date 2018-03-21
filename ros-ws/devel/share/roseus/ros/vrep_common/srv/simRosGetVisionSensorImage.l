;; Auto-generated. Do not edit!


(when (boundp 'vrep_common::simRosGetVisionSensorImage)
  (if (not (find-package "VREP_COMMON"))
    (make-package "VREP_COMMON"))
  (shadow 'simRosGetVisionSensorImage (find-package "VREP_COMMON")))
(unless (find-package "VREP_COMMON::SIMROSGETVISIONSENSORIMAGE")
  (make-package "VREP_COMMON::SIMROSGETVISIONSENSORIMAGE"))
(unless (find-package "VREP_COMMON::SIMROSGETVISIONSENSORIMAGEREQUEST")
  (make-package "VREP_COMMON::SIMROSGETVISIONSENSORIMAGEREQUEST"))
(unless (find-package "VREP_COMMON::SIMROSGETVISIONSENSORIMAGERESPONSE")
  (make-package "VREP_COMMON::SIMROSGETVISIONSENSORIMAGERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass vrep_common::simRosGetVisionSensorImageRequest
  :super ros::object
  :slots (_handle _options ))

(defmethod vrep_common::simRosGetVisionSensorImageRequest
  (:init
   (&key
    ((:handle __handle) 0)
    ((:options __options) 0)
    )
   (send-super :init)
   (setq _handle (round __handle))
   (setq _options (round __options))
   self)
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:options
   (&optional __options)
   (if __options (setq _options __options)) _options)
  (:serialization-length
   ()
   (+
    ;; int32 _handle
    4
    ;; uint8 _options
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _handle
       (write-long _handle s)
     ;; uint8 _options
       (write-byte _options s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _handle
     (setq _handle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _options
     (setq _options (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass vrep_common::simRosGetVisionSensorImageResponse
  :super ros::object
  :slots (_result _image ))

(defmethod vrep_common::simRosGetVisionSensorImageResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _image __image)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
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
    ;; int32 _result
    4
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass vrep_common::simRosGetVisionSensorImage
  :super ros::object
  :slots ())

(setf (get vrep_common::simRosGetVisionSensorImage :md5sum-) "c9fa464de5ffa4b5a019f79bc572d29f")
(setf (get vrep_common::simRosGetVisionSensorImage :datatype-) "vrep_common/simRosGetVisionSensorImage")
(setf (get vrep_common::simRosGetVisionSensorImage :request) vrep_common::simRosGetVisionSensorImageRequest)
(setf (get vrep_common::simRosGetVisionSensorImage :response) vrep_common::simRosGetVisionSensorImageResponse)

(defmethod vrep_common::simRosGetVisionSensorImageRequest
  (:response () (instance vrep_common::simRosGetVisionSensorImageResponse :init)))

(setf (get vrep_common::simRosGetVisionSensorImageRequest :md5sum-) "c9fa464de5ffa4b5a019f79bc572d29f")
(setf (get vrep_common::simRosGetVisionSensorImageRequest :datatype-) "vrep_common/simRosGetVisionSensorImageRequest")
(setf (get vrep_common::simRosGetVisionSensorImageRequest :definition-)
      "



int32 handle
uint8 options
---
int32 result
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
")

(setf (get vrep_common::simRosGetVisionSensorImageResponse :md5sum-) "c9fa464de5ffa4b5a019f79bc572d29f")
(setf (get vrep_common::simRosGetVisionSensorImageResponse :datatype-) "vrep_common/simRosGetVisionSensorImageResponse")
(setf (get vrep_common::simRosGetVisionSensorImageResponse :definition-)
      "



int32 handle
uint8 options
---
int32 result
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
")



(provide :vrep_common/simRosGetVisionSensorImage "c9fa464de5ffa4b5a019f79bc572d29f")


