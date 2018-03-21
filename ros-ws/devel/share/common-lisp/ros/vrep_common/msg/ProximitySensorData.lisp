; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude ProximitySensorData.msg.html

(cl:defclass <ProximitySensorData> (roslisp-msg-protocol:ros-message)
  ((detectedPoint
    :reader detectedPoint
    :initarg :detectedPoint
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (detectedObject
    :reader detectedObject
    :initarg :detectedObject
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (normalVector
    :reader normalVector
    :initarg :normalVector
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass ProximitySensorData (<ProximitySensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProximitySensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProximitySensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<ProximitySensorData> is deprecated: use vrep_common-msg:ProximitySensorData instead.")))

(cl:ensure-generic-function 'detectedPoint-val :lambda-list '(m))
(cl:defmethod detectedPoint-val ((m <ProximitySensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:detectedPoint-val is deprecated.  Use vrep_common-msg:detectedPoint instead.")
  (detectedPoint m))

(cl:ensure-generic-function 'detectedObject-val :lambda-list '(m))
(cl:defmethod detectedObject-val ((m <ProximitySensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:detectedObject-val is deprecated.  Use vrep_common-msg:detectedObject instead.")
  (detectedObject m))

(cl:ensure-generic-function 'normalVector-val :lambda-list '(m))
(cl:defmethod normalVector-val ((m <ProximitySensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:normalVector-val is deprecated.  Use vrep_common-msg:normalVector instead.")
  (normalVector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProximitySensorData>) ostream)
  "Serializes a message object of type '<ProximitySensorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detectedPoint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detectedObject) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normalVector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProximitySensorData>) istream)
  "Deserializes a message object of type '<ProximitySensorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detectedPoint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detectedObject) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normalVector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProximitySensorData>)))
  "Returns string type for a message object of type '<ProximitySensorData>"
  "vrep_common/ProximitySensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProximitySensorData)))
  "Returns string type for a message object of type 'ProximitySensorData"
  "vrep_common/ProximitySensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProximitySensorData>)))
  "Returns md5sum for a message object of type '<ProximitySensorData>"
  "ca4cef31bef118238b22d9d3bc7e3089")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProximitySensorData)))
  "Returns md5sum for a message object of type 'ProximitySensorData"
  "ca4cef31bef118238b22d9d3bc7e3089")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProximitySensorData>)))
  "Returns full string definition for message of type '<ProximitySensorData>"
  (cl:format cl:nil "geometry_msgs/Point32 detectedPoint~%std_msgs/Int32 detectedObject~%geometry_msgs/Point32 normalVector~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProximitySensorData)))
  "Returns full string definition for message of type 'ProximitySensorData"
  (cl:format cl:nil "geometry_msgs/Point32 detectedPoint~%std_msgs/Int32 detectedObject~%geometry_msgs/Point32 normalVector~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProximitySensorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detectedPoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detectedObject))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normalVector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProximitySensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'ProximitySensorData
    (cl:cons ':detectedPoint (detectedPoint msg))
    (cl:cons ':detectedObject (detectedObject msg))
    (cl:cons ':normalVector (normalVector msg))
))
