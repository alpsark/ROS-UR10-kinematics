
(cl:in-package :asdf)

(defsystem "vrep_common-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ForceSensorData" :depends-on ("_package_ForceSensorData"))
    (:file "_package_ForceSensorData" :depends-on ("_package"))
    (:file "JointSetStateData" :depends-on ("_package_JointSetStateData"))
    (:file "_package_JointSetStateData" :depends-on ("_package"))
    (:file "ObjectGroupData" :depends-on ("_package_ObjectGroupData"))
    (:file "_package_ObjectGroupData" :depends-on ("_package"))
    (:file "ProximitySensorData" :depends-on ("_package_ProximitySensorData"))
    (:file "_package_ProximitySensorData" :depends-on ("_package"))
    (:file "ScriptFunctionCallData" :depends-on ("_package_ScriptFunctionCallData"))
    (:file "_package_ScriptFunctionCallData" :depends-on ("_package"))
    (:file "VisionSensorData" :depends-on ("_package_VisionSensorData"))
    (:file "_package_VisionSensorData" :depends-on ("_package"))
    (:file "VisionSensorDepthBuff" :depends-on ("_package_VisionSensorDepthBuff"))
    (:file "_package_VisionSensorDepthBuff" :depends-on ("_package"))
    (:file "VrepInfo" :depends-on ("_package_VrepInfo"))
    (:file "_package_VrepInfo" :depends-on ("_package"))
  ))