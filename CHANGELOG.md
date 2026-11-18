# Changelog

## 1.4.0-preview

### New cmdlets

#### Health Alerts
- `Get-NmeNotificationHealthAlertCondition`

#### Azure Files Autoscale Models
- `New-NmeAzureFilesPerformanceBoundsModel`
- `New-NmeAzureFilesScalingRuleModel`

### Breaking changes
- `New-NmeWorkspace` and `New-NmeWorkspaceCreateModel` - Added mandatory `DeploymentScope` parameter (`Geographical` or `Regional`)
- `New-NmeNotificationAction` and `New-NmeNotificationActionCreateModel` - Added mandatory `ConditionHealthAlertConditionIds` parameter
- `New-NmeNotificationActionConditionsModel` - Added mandatory `HealthAlertConditionIds` parameter
- `New-NmePersonalAutoShrinkConfigurationModel` - Added mandatory `SessionType` parameter (`All` or `Active`)
- `Get-NmeFileShareAutoscale` - Output type changed from `IAzureFilesAutoscaleConfig` to `IAzureFilesAutoscaleConfigState`

### Changes to existing cmdlets
- `Set-NmeFileShareAutoscale`, `Update-NmeFileShareAutoscaleStatus`, `New-NmeAzureFilesAutoscaleConfigModel`, and `New-NmeAzureFilesAutoscaleConfigUpdateModel` - Added Azure Files V2 storage type, scaling rules, IOPS and throughput bounds, and pre-stage IOPS and throughput parameters
- `Set-NmeFileShareAutoscale` and `New-NmeAzureFilesAutoscaleConfigModel` - `ScalingScaleInBy`, `ScalingScaleInInterval`, `ScalingScaleInLowLatency`, `ScalingScaleOutBy`, `ScalingScaleOutHighLatency`, `ScalingScaleOutInterval`, `ScalingTransactionThreshold`, and `ScalingTrigger` are no longer mandatory
- `New-NmeAzureFilesPreStageConfigModel` and `New-NmeAzureFilesPreStageConfigUpdateModel` - Added `Iops` and `Throughput` parameters
- `Set-NmeHostPoolAutoScale`, `New-NmeDynamicPoolConfigurationModel`, `New-NmeAutoScaleDefaultConfigurationModel`, and `New-NmeAutoScaleDefaultConfigurationUpdateModel` - Added `AutoScaleMethod` parameter (`Dynamic` or `PowerManagement`)
- `New-NmeDynamicPoolTriggerInfoModel` - Added `PersonalAutoShrinkSessionType` parameter
- `Update-NmeHostPoolUserSelfServiceProperty` and `New-NmeHostPoolUserSelfServiceUpdateModel` - Added `AllowPreStageDesktops` and `ConnectOption` parameters
- `Update-NmeNotificationAction` and `New-NmeNotificationActionUpdateModel` - Added `ConditionHealthAlertConditionIds` parameter
- `New-NmeNotificationActionConditionsUpdateModel` - Added `HealthAlertConditionIds` parameter
- `Get-NmeHostPoolUserSession` and `Get-NmeWorkspaceUserSession` - `Hostname` and `Username` are no longer mandatory
- `Get-NmeSessionHostsByWorkspace` - `Username` is no longer mandatory
- Clarified that `ScheduleStartDate` is a calendar date in `TimeZoneId`, not UTC, in schedule cmdlet documentation

> [!NOTE]
> Compatible with NME 8.3.0 REST API

## 1.3.1-preview

### New cmdlets

#### Entra ID Tenants
- `Get-NmeEntraIdTenant`
- `New-NmeEntraIdTenant`
- `Update-NmeEntraIdTenant`
- `Remove-NmeEntraIdTenant`

### Changes to existing cmdlets
- `Invoke-NmeDesktopImageSetAsImage` - `JobPayloadScriptedActions` is no longer mandatory
- `Invoke-NmeHostPoolRunScript` - `ConfigScriptedActions` is no longer mandatory
- `Invoke-NmeRunbookScriptedActionRun` - `ParamsBindings` is no longer mandatory
- `New-NmeHostPoolRunScriptSchedule` - `ConfigScriptedActions` is no longer mandatory
- `Set-NmeHostPoolRunScriptSchedule` - `ConfigScriptedActions` is no longer mandatory
- `New-NmeRunbookScriptedActionsSchedule` - `ConfigParamsBindings` is no longer mandatory
- `Set-NmeRunbookScriptedActionsSchedule` - `ConfigParamsBindings` is no longer mandatory
- `New-NmeNotificationCondition` - `ExclusionKeywords`, `RunByUsers`, `Statuses`, `Targets`, and `Tasks` are no longer mandatory
- `New-NmeSecureVariable` - `ScriptedActions` is no longer mandatory
- `New-NmeHostPoolScriptRunModel` - `ConfigScriptedActions` is no longer mandatory
- `New-NmeHostPoolScriptRunParamsModel` - `ConfigScriptedActions` is no longer mandatory
- `New-NmeHostPoolScriptScheduleModel` - `ConfigScriptedActions` is no longer mandatory
- `New-NmeImageFromLibraryCreateParamsModel` - `ScriptedActions` is no longer mandatory
- `New-NmeNotificationConditionCreateModel` - `ExclusionKeywords`, `RunByUsers`, `Statuses`, `Targets`, and `Tasks` are no longer mandatory
- `New-NmeRunbookScriptedActionRunModel` - `ParamsBindings` is no longer mandatory
- `New-NmeRunbookScriptedActionScheduleModel` - `ConfigParamsBindings` is no longer mandatory
- `New-NmeScriptRunParamsModel` - `ScriptedActions` is no longer mandatory
- `New-NmeSecureVariableCreateOrUpdateModel` - `ScriptedActions` is no longer mandatory
- `New-NmeSetAsImageModel` - `JobPayloadScriptedActions` is no longer mandatory
- `New-NmeSetAsImageParamsModel` - `ScriptedActions` is no longer mandatory

> [!NOTE]
> Compatible with NME 8.2.1 REST API

## 1.3.0-preview

### New cmdlets

#### Capacity Reservation Groups
- `Get-NmeLinkedCapacityReservationGroup`
- `New-NmeLinkedCapacityReservationGroup`
- `Remove-NmeLinkedCapacityReservationGroup`

#### Cloud PC Alert Conditions
- `Get-NmeCloudPcAlertCondition`
- `New-NmeCloudPcAlertCondition`
- `Update-NmeCloudPcAlertCondition`

#### Dedicated Host Groups
- `Get-NmeLinkedDedicatedHostGroup`
- `Get-NmeLinkedDedicatedHostGroupHost`
- `New-NmeLinkedDedicatedHostGroup`
- `Remove-NmeLinkedDedicatedHostGroup`

#### Host Pool RDP Profiles
- `Get-NmeHostPoolRdpProfile`
- `New-NmeHostPoolRdpProfile`
- `Update-NmeHostPoolRdpProfile`
- `Remove-NmeHostPoolRdpProfile`

#### Host Pool VM Deployment Profiles
- `Get-NmeHostPoolVMDeploymentProfile`
- `New-NmeHostPoolVMDeploymentProfile`
- `Update-NmeHostPoolVMDeploymentProfile`
- `Remove-NmeHostPoolVMDeploymentProfile`

#### Intune Alert Conditions
- `Get-NmeIntuneAlertCondition`
- `Update-NmeIntuneAlertCondition`

#### Proximity Placement Groups
- `Get-NmeLinkedProximityPlacementGroup`
- `New-NmeLinkedProximityPlacementGroup`
- `Remove-NmeLinkedProximityPlacementGroup`

#### Signing Certificates
- `Get-NmeLinkedSigningCertificate`
- `Import-NmeLinkedSigningCertificate`
- `New-NmeLinkedSigningCertificate`
- `Update-NmeLinkedSigningCertificate`
- `Remove-NmeLinkedSigningCertificate`

### Changes to existing cmdlets
- `New-NmeAnyAppScopeCreateModel` - Added `NgpGroupIds` and `NgpIds` parameters and NGP scope types
- `New-NmeAppGroupItemCreateModel` - Added `AssignmentType` and `OnUpgradeFail` parameters; `Reboot` is no longer mandatory
- `New-NmeShellAppCreateModel` - Added `DetectBeforeUnzip` parameter
- `New-NmeShellAppUpdateModel` - Added `DetectBeforeUnzip` parameter

> [!NOTE]
> Compatible with NME 8.2.0 REST API

## 1.2.0-preview

### New cmdlets

#### Host Pool Scripted Actions
- `Get-NmeHostPoolScriptedAction`
- `Get-NmeHostPoolScriptedActionProfile`
- `New-NmeHostPoolScriptedActionProfile`
- `Update-NmeHostPoolScriptedAction`
- `Update-NmeHostPoolScriptedActionProfile`
- `Remove-NmeHostPoolScriptedAction`
- `Remove-NmeHostPoolScriptedActionProfile`

#### Scripted Actions Groups
- `New-NmeScriptedActionsGroup`
- `Update-NmeScriptedActionsGroup`
- `Remove-NmeScriptedActionsGroup`

#### Other
- `Get-NmeLinkedSubscription`
- `Get-NmeUserEntitlement`

### Changes to existing cmdlets
- `New-NmeDynamicPoolConfigurationModel` - Added `HostPoolSizingMeasureType` parameter
- `Set-NmeHostPoolAutoScale` - Added `HostPoolSizingMeasureType` parameter
- `New-NmeVmSecurityProfileModel` - Added `ConfidentialDiskEncryption`, `DiskEncryptionSetsIds`, `EncryptionAtHost`, `IntegrityMonitoring` parameters
- `New-NmeImageFromLibraryCreateParamsModel` - Added `SecurityProfileConfidentialDiskEncryption`, `SecurityProfileDiskEncryptionSetsIds`, `SecurityProfileEncryptionAtHost`, `SecurityProfileIntegrityMonitoring` parameters

> [!NOTE]
> Compatible with NME 8.1.0 REST API

## 1.1.1-preview

- Added field descriptions
- Added UK region support to Console Connect cmdlets

> [!NOTE]
> Compatible with NME 8.0.1 REST API

## 1.1.0-preview

### New cmdlets

#### Notifications
- `New-NmeNotificationAction` - Create a new notification action
- `Get-NmeNotificationAction` - Get notification actions
- `Update-NmeNotificationAction` - Update a notification action
- `Remove-NmeNotificationAction` - Remove a notification action
- `New-NmeNotificationCondition` - Create a new notification condition
- `Get-NmeNotificationCondition` - Get notification conditions
- `Update-NmeNotificationCondition` - Update a notification condition
- `Remove-NmeNotificationCondition` - Remove a notification condition
- `Get-NmeLinkedNotificationMailbox` - Get linked notification mailboxes
- `Get-NmeLinkedNotificationWebhook` - Get linked notification webhooks

#### Console Connect
- `Enable-NmeConsoleConnectRegion` - Enable a Console Connect region
- `Disable-NmeConsoleConnectRegion` - Disable a Console Connect region
- `Get-NmeConsoleConnectRegion` - Get Console Connect regions
- `Update-NmeConsoleConnectRegion` - Update a Console Connect region

#### Jobs
- `Get-NmeJobType` - Get available job types

### Changes to existing cmdlets
- `New-NmeHostPoolVmDeploymentUpdateModel` - Added `UserAssignedIdentityIds` parameter
- `New-NmeLinkedSubscriptionCreateModel` - Added `ServicePrincipalCertificateName` parameter
- `New-NmeServicePrincipalParamsModel` - Added `CertificateName` parameter; `AppSecret` is no longer mandatory

> [!NOTE]
> Compatible with NME 8.0 REST API

## 1.0.0-preview
- Module rewritten using AutoRest code generation from the NME REST API specification
- **Breaking:** This version is not compatible with previous versions of the module. All cmdlet names, parameters, and object models have changed

> [!NOTE]
> Compatible with NME 7.7 REST API

## 0.12.2
- New function added for compatibility with NME 7.0 REST API
- See release notes for NME REST API for added and removed/deprecated functionality

## 0.10.2
- New functions added for compatibility with NME 6.6 REST API
- See release notes for NME REST API for added and removed/deprecated functionality

## 0.9.10
- New functions added for compatibility with NME 6.5 REST API
- See release notes for NME REST API for added and removed/deprecated functionality

## 0.9.3
- New functions added for compatibility with NME 6.3 REST API
- Some function properties have new aliases to improve compatibility with the API output
- Added new component constructor functions to improve compatibility

## 0.8.6
- New functions added for compatibility with NME 6.1 REST API

## 0.8.5
- New functions added for compatibility with NME 6.1 REST API

## 0.6.1
- New functions have been added for configuring and managing the Unified Application Management features
- Compatible with NME 5.6.1 release
- Two properties of `New-NmeDynamicPoolConfiguration` are now deprecated: `minCountCreatedVmsType` and `enableFixFailedTask`

## 0.5.0
- App Management function `Get-NmeAppRepository` now available
- New ability to manage scripted action groups
- New function `Get-NmeDesktopImage` to list NME images
- Rolling drain mode parameters for Host Pool AutoScale configuration
- Enhancements to managing scripted actions
- New functions for managing images
- New functions for querying Entra ID & Entra domain services profiles
- New functions for managing ControlUp integrations
- New parameters for `New-NmePersonalAutoShrinkRestConfiguration`
- New parameter `IntelligentPrestageMode` for function `New-NmePreStateHostsConfiguration`
- New options for host pool user self service
- `New-NmeTimeIntervalWithTimeZone` parameter `TimeZoneId` is now deprecated
- New RDP configuration options
- New function `Set-NmeAppAttachImageVersionName`

### Breaking changes in 0.5.0
- New mandatory parameters for `New-NmeHostPoolVmDeploymentRestModel`
- New mandatory parameter `RdpShortpath` for `New-NmeHostPoolVmDeploymentRestPutRequest`
- `New-NmeHostPoolRdpModelRest` has been updated to `New-NmeArmHostPoolRdpModelRest`
- Object `BulkJobParams` used in `New-NmeRunScriptScheduledBulkJobParams` has changed parameters
- `TimeZoneId` is now a required parameter for `New-NmeDynamicPoolConfiguration` and `Set-NmeDynamicPoolConfiguration`
