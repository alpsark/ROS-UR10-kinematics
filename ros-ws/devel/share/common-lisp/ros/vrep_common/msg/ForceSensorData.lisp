; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude ForceSensorData.msg.html

(cl:defclass <ForceSensorData> (roslisp-msg-protocol:ros-message)
  ((sensorState
    :reader sensorState
    :initarg :sensorState
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (torque
    :reader torque
    :initarg :torque
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass ForceSensorData (<ForceSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<ForceSensorData> is deprecated: use vrep_common-msg:ForceSensorData instead.")))

(cl:ensure-generic-function 'sensorState-val :lambda-list '(m))
(cl:defmethod sensorState-val ((m <ForceSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:sensorState-val is deprecated.  Use vrep_common-msg:sensorState instead.")
  (sensorState m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <ForceSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:force-val is deprecated.  Use vrep_common-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ForceSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:torque-val is deprecated.  Use vrep_common-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceSensorData>) ostream)
  "Serializes a message object of type '<ForceSensorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensorState) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceSensorData>) istream)
  "Deserializes a message object of type '<ForceSensorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensorState) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceSensorData>)))
  "Returns string type for a message object of type '<ForceSensorData>"
  "vrep_common/ForceSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceSensorData)))
  "Returns string type for a message object of type 'ForceSensorData"
  "vrep_common/ForceSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceSensorData>)))
  "Returns md5sum for a message object of type '<ForceSensorData>"
  "975cc3fe659f11cb0dbd06416cff4a10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceSensorData)))
  "Returns md5sum for a message object of type 'ForceSensorData"
  "975cc3fe659f11cb0dbd06416cff4a10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceSensorData>)))
  "Returns full string definition for message of type '<ForceSensorData>"
  (cl:format cl:nil "std_msgs/Int32 sensorState~%geometry_msgs/Vector3 force~%geometry_msgs/Vector3 torque~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceSensorData)))
  "Returns full string definition for message of type 'ForceSensorData"
  (cl:format cl:nil "std_msgs/Int32 sensorState~%geometry_msgs/Vector3 force~%geometry_msgs/Vector3 torque~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceSensorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensorState))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceSensorData
    (cl:cons ':sensorState (sensorState msg))
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
