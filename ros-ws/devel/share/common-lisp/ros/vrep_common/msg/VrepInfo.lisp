; Auto-generated. Do not edit!


(cl:in-package vrep_common-msg)


;//! \htmlinclude VrepInfo.msg.html

(cl:defclass <VrepInfo> (roslisp-msg-protocol:ros-message)
  ((headerInfo
    :reader headerInfo
    :initarg :headerInfo
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (simulatorState
    :reader simulatorState
    :initarg :simulatorState
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (simulationTime
    :reader simulationTime
    :initarg :simulationTime
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (timeStep
    :reader timeStep
    :initarg :timeStep
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass VrepInfo (<VrepInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VrepInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VrepInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vrep_common-msg:<VrepInfo> is deprecated: use vrep_common-msg:VrepInfo instead.")))

(cl:ensure-generic-function 'headerInfo-val :lambda-list '(m))
(cl:defmethod headerInfo-val ((m <VrepInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:headerInfo-val is deprecated.  Use vrep_common-msg:headerInfo instead.")
  (headerInfo m))

(cl:ensure-generic-function 'simulatorState-val :lambda-list '(m))
(cl:defmethod simulatorState-val ((m <VrepInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:simulatorState-val is deprecated.  Use vrep_common-msg:simulatorState instead.")
  (simulatorState m))

(cl:ensure-generic-function 'simulationTime-val :lambda-list '(m))
(cl:defmethod simulationTime-val ((m <VrepInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:simulationTime-val is deprecated.  Use vrep_common-msg:simulationTime instead.")
  (simulationTime m))

(cl:ensure-generic-function 'timeStep-val :lambda-list '(m))
(cl:defmethod timeStep-val ((m <VrepInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vrep_common-msg:timeStep-val is deprecated.  Use vrep_common-msg:timeStep instead.")
  (timeStep m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VrepInfo>) ostream)
  "Serializes a message object of type '<VrepInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'headerInfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'simulatorState) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'simulationTime) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timeStep) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VrepInfo>) istream)
  "Deserializes a message object of type '<VrepInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'headerInfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'simulatorState) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'simulationTime) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timeStep) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VrepInfo>)))
  "Returns string type for a message object of type '<VrepInfo>"
  "vrep_common/VrepInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VrepInfo)))
  "Returns string type for a message object of type 'VrepInfo"
  "vrep_common/VrepInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VrepInfo>)))
  "Returns md5sum for a message object of type '<VrepInfo>"
  "66334ab2212d3c89226a89b7a37b2f95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VrepInfo)))
  "Returns md5sum for a message object of type 'VrepInfo"
  "66334ab2212d3c89226a89b7a37b2f95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VrepInfo>)))
  "Returns full string definition for message of type '<VrepInfo>"
  (cl:format cl:nil "std_msgs/Header headerInfo~%std_msgs/Int32 simulatorState~%std_msgs/Float32 simulationTime~%std_msgs/Float32 timeStep~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VrepInfo)))
  "Returns full string definition for message of type 'VrepInfo"
  (cl:format cl:nil "std_msgs/Header headerInfo~%std_msgs/Int32 simulatorState~%std_msgs/Float32 simulationTime~%std_msgs/Float32 timeStep~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VrepInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'headerInfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'simulatorState))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'simulationTime))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timeStep))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VrepInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VrepInfo
    (cl:cons ':headerInfo (headerInfo msg))
    (cl:cons ':simulatorState (simulatorState msg))
    (cl:cons ':simulationTime (simulationTime msg))
    (cl:cons ':timeStep (timeStep msg))
))
