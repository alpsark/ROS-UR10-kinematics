
"use strict";

let simRosSetObjectPosition = require('./simRosSetObjectPosition.js')
let simRosSetObjectParent = require('./simRosSetObjectParent.js')
let simRosGetDialogInput = require('./simRosGetDialogInput.js')
let simRosReadCollision = require('./simRosReadCollision.js')
let simRosAuxiliaryConsoleOpen = require('./simRosAuxiliaryConsoleOpen.js')
let simRosGetIntegerSignal = require('./simRosGetIntegerSignal.js')
let simRosEnableSubscriber = require('./simRosEnableSubscriber.js')
let simRosClearFloatSignal = require('./simRosClearFloatSignal.js')
let simRosRemoveModel = require('./simRosRemoveModel.js')
let simRosGetDistanceHandle = require('./simRosGetDistanceHandle.js')
let simRosSynchronous = require('./simRosSynchronous.js')
let simRosGetFloatSignal = require('./simRosGetFloatSignal.js')
let simRosGetDialogResult = require('./simRosGetDialogResult.js')
let simRosSetModelProperty = require('./simRosSetModelProperty.js')
let simRosGetFloatingParameter = require('./simRosGetFloatingParameter.js')
let simRosGetObjectIntParameter = require('./simRosGetObjectIntParameter.js')
let simRosGetStringSignal = require('./simRosGetStringSignal.js')
let simRosGetObjectHandle = require('./simRosGetObjectHandle.js')
let simRosGetObjectChild = require('./simRosGetObjectChild.js')
let simRosSynchronousTrigger = require('./simRosSynchronousTrigger.js')
let simRosSetObjectSelection = require('./simRosSetObjectSelection.js')
let simRosGetVisionSensorDepthBuffer = require('./simRosGetVisionSensorDepthBuffer.js')
let simRosGetCollisionHandle = require('./simRosGetCollisionHandle.js')
let simRosSetJointTargetVelocity = require('./simRosSetJointTargetVelocity.js')
let simRosReadProximitySensor = require('./simRosReadProximitySensor.js')
let simRosAppendStringSignal = require('./simRosAppendStringSignal.js')
let simRosGetCollectionHandle = require('./simRosGetCollectionHandle.js')
let simRosGetAndClearStringSignal = require('./simRosGetAndClearStringSignal.js')
let simRosGetInfo = require('./simRosGetInfo.js')
let simRosAddStatusbarMessage = require('./simRosAddStatusbarMessage.js')
let simRosDisableSubscriber = require('./simRosDisableSubscriber.js')
let simRosGetLastErrors = require('./simRosGetLastErrors.js')
let simRosRemoveUI = require('./simRosRemoveUI.js')
let simRosEnablePublisher = require('./simRosEnablePublisher.js')
let simRosReadVisionSensor = require('./simRosReadVisionSensor.js')
let simRosCallScriptFunction = require('./simRosCallScriptFunction.js')
let simRosSetJointPosition = require('./simRosSetJointPosition.js')
let simRosGetUIEventButton = require('./simRosGetUIEventButton.js')
let simRosDisablePublisher = require('./simRosDisablePublisher.js')
let simRosGetObjectPose = require('./simRosGetObjectPose.js')
let simRosPauseSimulation = require('./simRosPauseSimulation.js')
let simRosSetBooleanParameter = require('./simRosSetBooleanParameter.js')
let simRosEraseFile = require('./simRosEraseFile.js')
let simRosSetVisionSensorImage = require('./simRosSetVisionSensorImage.js')
let simRosGetIntegerParameter = require('./simRosGetIntegerParameter.js')
let simRosAuxiliaryConsoleShow = require('./simRosAuxiliaryConsoleShow.js')
let simRosStopSimulation = require('./simRosStopSimulation.js')
let simRosGetVisionSensorImage = require('./simRosGetVisionSensorImage.js')
let simRosGetJointState = require('./simRosGetJointState.js')
let simRosGetObjectGroupData = require('./simRosGetObjectGroupData.js')
let simRosGetObjectParent = require('./simRosGetObjectParent.js')
let simRosCreateDummy = require('./simRosCreateDummy.js')
let simRosStartSimulation = require('./simRosStartSimulation.js')
let simRosGetBooleanParameter = require('./simRosGetBooleanParameter.js')
let simRosSetJointTargetPosition = require('./simRosSetJointTargetPosition.js')
let simRosSetArrayParameter = require('./simRosSetArrayParameter.js')
let simRosGetObjectFloatParameter = require('./simRosGetObjectFloatParameter.js')
let simRosGetUIButtonProperty = require('./simRosGetUIButtonProperty.js')
let simRosClearIntegerSignal = require('./simRosClearIntegerSignal.js')
let simRosBreakForceSensor = require('./simRosBreakForceSensor.js')
let simRosSetFloatSignal = require('./simRosSetFloatSignal.js')
let simRosAuxiliaryConsolePrint = require('./simRosAuxiliaryConsolePrint.js')
let simRosSetObjectQuaternion = require('./simRosSetObjectQuaternion.js')
let simRosSetIntegerParameter = require('./simRosSetIntegerParameter.js')
let simRosGetJointMatrix = require('./simRosGetJointMatrix.js')
let simRosSetObjectFloatParameter = require('./simRosSetObjectFloatParameter.js')
let simRosAuxiliaryConsoleClose = require('./simRosAuxiliaryConsoleClose.js')
let simRosSetUIButtonProperty = require('./simRosSetUIButtonProperty.js')
let simRosReadForceSensor = require('./simRosReadForceSensor.js')
let simRosEndDialog = require('./simRosEndDialog.js')
let simRosTransferFile = require('./simRosTransferFile.js')
let simRosSetUISlider = require('./simRosSetUISlider.js')
let simRosGetObjects = require('./simRosGetObjects.js')
let simRosCopyPasteObjects = require('./simRosCopyPasteObjects.js')
let simRosSetObjectIntParameter = require('./simRosSetObjectIntParameter.js')
let simRosGetUISlider = require('./simRosGetUISlider.js')
let simRosGetModelProperty = require('./simRosGetModelProperty.js')
let simRosSetSphericalJointMatrix = require('./simRosSetSphericalJointMatrix.js')
let simRosLoadScene = require('./simRosLoadScene.js')
let simRosClearStringSignal = require('./simRosClearStringSignal.js')
let simRosRemoveObject = require('./simRosRemoveObject.js')
let simRosGetStringParameter = require('./simRosGetStringParameter.js')
let simRosSetObjectPose = require('./simRosSetObjectPose.js')
let simRosSetUIButtonLabel = require('./simRosSetUIButtonLabel.js')
let simRosSetJointForce = require('./simRosSetJointForce.js')
let simRosReadDistance = require('./simRosReadDistance.js')
let simRosGetObjectSelection = require('./simRosGetObjectSelection.js')
let simRosCloseScene = require('./simRosCloseScene.js')
let simRosSetJointState = require('./simRosSetJointState.js')
let simRosSetIntegerSignal = require('./simRosSetIntegerSignal.js')
let simRosGetUIHandle = require('./simRosGetUIHandle.js')
let simRosSetFloatingParameter = require('./simRosSetFloatingParameter.js')
let simRosDisplayDialog = require('./simRosDisplayDialog.js')
let simRosGetArrayParameter = require('./simRosGetArrayParameter.js')
let simRosSetStringSignal = require('./simRosSetStringSignal.js')
let simRosLoadModel = require('./simRosLoadModel.js')
let simRosLoadUI = require('./simRosLoadUI.js')

module.exports = {
  simRosSetObjectPosition: simRosSetObjectPosition,
  simRosSetObjectParent: simRosSetObjectParent,
  simRosGetDialogInput: simRosGetDialogInput,
  simRosReadCollision: simRosReadCollision,
  simRosAuxiliaryConsoleOpen: simRosAuxiliaryConsoleOpen,
  simRosGetIntegerSignal: simRosGetIntegerSignal,
  simRosEnableSubscriber: simRosEnableSubscriber,
  simRosClearFloatSignal: simRosClearFloatSignal,
  simRosRemoveModel: simRosRemoveModel,
  simRosGetDistanceHandle: simRosGetDistanceHandle,
  simRosSynchronous: simRosSynchronous,
  simRosGetFloatSignal: simRosGetFloatSignal,
  simRosGetDialogResult: simRosGetDialogResult,
  simRosSetModelProperty: simRosSetModelProperty,
  simRosGetFloatingParameter: simRosGetFloatingParameter,
  simRosGetObjectIntParameter: simRosGetObjectIntParameter,
  simRosGetStringSignal: simRosGetStringSignal,
  simRosGetObjectHandle: simRosGetObjectHandle,
  simRosGetObjectChild: simRosGetObjectChild,
  simRosSynchronousTrigger: simRosSynchronousTrigger,
  simRosSetObjectSelection: simRosSetObjectSelection,
  simRosGetVisionSensorDepthBuffer: simRosGetVisionSensorDepthBuffer,
  simRosGetCollisionHandle: simRosGetCollisionHandle,
  simRosSetJointTargetVelocity: simRosSetJointTargetVelocity,
  simRosReadProximitySensor: simRosReadProximitySensor,
  simRosAppendStringSignal: simRosAppendStringSignal,
  simRosGetCollectionHandle: simRosGetCollectionHandle,
  simRosGetAndClearStringSignal: simRosGetAndClearStringSignal,
  simRosGetInfo: simRosGetInfo,
  simRosAddStatusbarMessage: simRosAddStatusbarMessage,
  simRosDisableSubscriber: simRosDisableSubscriber,
  simRosGetLastErrors: simRosGetLastErrors,
  simRosRemoveUI: simRosRemoveUI,
  simRosEnablePublisher: simRosEnablePublisher,
  simRosReadVisionSensor: simRosReadVisionSensor,
  simRosCallScriptFunction: simRosCallScriptFunction,
  simRosSetJointPosition: simRosSetJointPosition,
  simRosGetUIEventButton: simRosGetUIEventButton,
  simRosDisablePublisher: simRosDisablePublisher,
  simRosGetObjectPose: simRosGetObjectPose,
  simRosPauseSimulation: simRosPauseSimulation,
  simRosSetBooleanParameter: simRosSetBooleanParameter,
  simRosEraseFile: simRosEraseFile,
  simRosSetVisionSensorImage: simRosSetVisionSensorImage,
  simRosGetIntegerParameter: simRosGetIntegerParameter,
  simRosAuxiliaryConsoleShow: simRosAuxiliaryConsoleShow,
  simRosStopSimulation: simRosStopSimulation,
  simRosGetVisionSensorImage: simRosGetVisionSensorImage,
  simRosGetJointState: simRosGetJointState,
  simRosGetObjectGroupData: simRosGetObjectGroupData,
  simRosGetObjectParent: simRosGetObjectParent,
  simRosCreateDummy: simRosCreateDummy,
  simRosStartSimulation: simRosStartSimulation,
  simRosGetBooleanParameter: simRosGetBooleanParameter,
  simRosSetJointTargetPosition: simRosSetJointTargetPosition,
  simRosSetArrayParameter: simRosSetArrayParameter,
  simRosGetObjectFloatParameter: simRosGetObjectFloatParameter,
  simRosGetUIButtonProperty: simRosGetUIButtonProperty,
  simRosClearIntegerSignal: simRosClearIntegerSignal,
  simRosBreakForceSensor: simRosBreakForceSensor,
  simRosSetFloatSignal: simRosSetFloatSignal,
  simRosAuxiliaryConsolePrint: simRosAuxiliaryConsolePrint,
  simRosSetObjectQuaternion: simRosSetObjectQuaternion,
  simRosSetIntegerParameter: simRosSetIntegerParameter,
  simRosGetJointMatrix: simRosGetJointMatrix,
  simRosSetObjectFloatParameter: simRosSetObjectFloatParameter,
  simRosAuxiliaryConsoleClose: simRosAuxiliaryConsoleClose,
  simRosSetUIButtonProperty: simRosSetUIButtonProperty,
  simRosReadForceSensor: simRosReadForceSensor,
  simRosEndDialog: simRosEndDialog,
  simRosTransferFile: simRosTransferFile,
  simRosSetUISlider: simRosSetUISlider,
  simRosGetObjects: simRosGetObjects,
  simRosCopyPasteObjects: simRosCopyPasteObjects,
  simRosSetObjectIntParameter: simRosSetObjectIntParameter,
  simRosGetUISlider: simRosGetUISlider,
  simRosGetModelProperty: simRosGetModelProperty,
  simRosSetSphericalJointMatrix: simRosSetSphericalJointMatrix,
  simRosLoadScene: simRosLoadScene,
  simRosClearStringSignal: simRosClearStringSignal,
  simRosRemoveObject: simRosRemoveObject,
  simRosGetStringParameter: simRosGetStringParameter,
  simRosSetObjectPose: simRosSetObjectPose,
  simRosSetUIButtonLabel: simRosSetUIButtonLabel,
  simRosSetJointForce: simRosSetJointForce,
  simRosReadDistance: simRosReadDistance,
  simRosGetObjectSelection: simRosGetObjectSelection,
  simRosCloseScene: simRosCloseScene,
  simRosSetJointState: simRosSetJointState,
  simRosSetIntegerSignal: simRosSetIntegerSignal,
  simRosGetUIHandle: simRosGetUIHandle,
  simRosSetFloatingParameter: simRosSetFloatingParameter,
  simRosDisplayDialog: simRosDisplayDialog,
  simRosGetArrayParameter: simRosGetArrayParameter,
  simRosSetStringSignal: simRosSetStringSignal,
  simRosLoadModel: simRosLoadModel,
  simRosLoadUI: simRosLoadUI,
};
