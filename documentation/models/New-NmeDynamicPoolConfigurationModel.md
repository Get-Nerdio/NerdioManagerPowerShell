# New-NmeDynamicPoolConfigurationModel

Create an in-memory object for DynamicPoolConfiguration.

**Output Type:** `DynamicPoolConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ActiveHostType | String | Yes | Values: `Running`, `AvailableForConnection` |
| AutoHealEnable | Boolean | Yes |  |
| BurstCapacity | Int32 | Yes |  |
| HostPoolCapacity | Int32 | Yes |  |
| IsEnabled | Boolean | Yes |  |
| IsSingleUserDesktop | Boolean | Yes |  |
| MinActiveHostsCount | Int32 | Yes |  |
| PreStageHostEnable | Boolean | Yes |  |
| ReImageUsedHosts | Boolean | Yes |  |
| ReImageUsedHostsMode | String | Yes | Values: `Disabled`, `Always`, `OnlyWhenScaleInIsAllowed` |
| ScaleInAggressiveness | String | Yes | Values: `High`, `Medium`, `Low` |
| ScaleInRestrictionEnable | Boolean | Yes |  |
| ScaleInRestrictionPutToDrainMode | Boolean | Yes |  |
| ScalingMode | String | Yes | Values: `Default`, `WorkingHours`, `UserDriven` |
| ActiveSessionsScaleCriteriaScaleInHostChangeCount | Int32 | No |  |
| ActiveSessionsScaleCriteriaScaleInValue | Single | No |  |
| ActiveSessionsScaleCriteriaScaleOutHostChangeCount | Int32 | No |  |
| ActiveSessionsScaleCriteriaScaleOutValue | Single | No |  |
| AdditionalNetworks | Object | No |  |
| AutoHealConfigs | [IAutoHealConfigurationItem[]](New-NmeAutoHealConfigurationItemModel.md) | No | Pass as array. |
| AutoScaleCriteria | String | No | Values: `CPUUsage`, `RAMUsage`, `AvgActiveSessions`, `AvailableUserSessionSingle`, `AvailableUserSessions`, `UserDriven`, `PersonalAutoGrow`, `PersonalAutoShrink` |
| AutoScaleInterval | Int32 | No |  |
| AutoScaleTriggers | [IDynamicPoolTriggerInfo[]](New-NmeDynamicPoolTriggerInfoModel.md) | No | Pass as array. |
| AvailableUserSessionScaleCriterionAvailableSessionRestriction | String | No | Values: `Always`, `DuringWorkHours` |
| AvailableUserSessionScaleCriterionEndWorkHours | String | No |  |
| AvailableUserSessionScaleCriterionMaxAvailableUserSessions | Int32 | No |  |
| AvailableUserSessionScaleCriterionMinAvailableUserSessions | Int32 | No |  |
| AvailableUserSessionScaleCriterionOutsideWorkHoursSessions | Int32 | No |  |
| ConfigActions | [IAutoHealAction[]](New-NmeAutoHealActionModel.md) | No | Pass as array. |
| ConfigDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ConfigHostsToBeReady | Int32 | No |  |
| ConfigHostsToBeReadyMeasureType | String | No | Values: `Count`, `Percent` |
| ConfigNetworkId | String | No |  |
| ConfigPreStageDiskType | Boolean | No |  |
| ConfigPreStageUnassigned | Boolean | No |  |
| ConfigPreStageUnassignedHosts | Boolean | No |  |
| ConfigPrefix | String | No |  |
| ConfigResourceGroupId | String | No |  |
| ConfigSessionCriteria | String | No | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| ConfigStaleHeartbeatMinutes | Int32 | No |  |
| ConfigSubnet | String | No |  |
| ConfigWaitMinutes | Int32 | No |  |
| ConfigWaitMinutesBeforeFirstAction | Int32 | No |  |
| ConfigWvdStatuses | Object | No | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| ExtensionLoadBalancing | String | No | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| ExtensionMaxSessionsPerHost | Int32 | No |  |
| ExtensionStartVMOnConnect | Boolean | No |  |
| HostUsageScaleCriteriaScaleInHostChangeCount | Int32 | No |  |
| HostUsageScaleCriteriaScaleInValue | Single | No |  |
| HostUsageScaleCriteriaScaleOutHostChangeCount | Int32 | No |  |
| HostUsageScaleCriteriaScaleOutValue | Single | No |  |
| NetworkDistributionStrategy | String | No | Values: `DepthFirst`, `BreadthFirst` |
| PreStageHostConfigs | [IPreStageHostsConfigurationItem[]](New-NmePreStageHostsConfigurationItemModel.md) | No | Pass as array. |
| PreStageHostIntelligentPrestageMode | String | No | Values: `Hybrid`, `Automated` |
| PreStageHostIsMultipleConfigsMode | Boolean | No |  |
| RemoveMessagingMessage | String | No |  |
| RemoveMessagingMinutesBeforeRemove | Int32 | No |  |
| RollingDrainModeIsEnabled | Boolean | No |  |
| RollingDrainModeWindows | [IRollingDrainModeWindow[]](New-NmeRollingDrainModeWindowModel.md) | No | Pass as array. |
| ScaleInAverageTimeRangeInMinutes | Int32 | No |  |
| ScaleOutAverageTimeRangeInMinutes | Int32 | No |  |
| SecondaryRegionEnabled | Boolean | No |  |
| StartWorkDuration | Int32 | No |  |
| StartWorkHour | Int32 | No |  |
| StartWorkMinutes | Int32 | No |  |
| StoppedDiskType | String | No |  |
| TimeRangeEndHour | Int32 | No |  |
| TimeRangeEndMinutes | Int32 | No |  |
| TimeRangeStartHour | Int32 | No |  |
| TimeRangeStartMinutes | Int32 | No |  |
| TimezoneId | String | No |  |
| UserDrivenBypassDrainMode | Boolean | No |  |
| UserDrivenMinAvailableSessions | Int32 | No |  |
| UserDrivenPreStageHostConfigs | [IUserDrivenPreStageHostsConfigurationItem[]](New-NmeUserDrivenPreStageHostsConfigurationItemModel.md) | No | Pass as array. |
| UserDrivenPreStageHostEnable | Boolean | No |  |
| UserDrivenPreStageHostPreStageIfUnassigned | Boolean | No |  |
| UserDrivenStopDelayMinutes | Int32 | No |  |
| VMNamingMode | String | No | Values: `Standard`, `Reuse`, `Unique` |
| VMTemplateDiskPerformanceTier | String | No |  |
| VMTemplateDiskSize | Int32 | No |  |
| VMTemplateEphemeralOsdiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| VMTemplateHasEphemeralOsdisk | Boolean | No |  |
| VMTemplateImage | String | No |  |
| VMTemplateNetworkId | String | No |  |
| VMTemplatePrefix | String | No |  |
| VMTemplateResourceGroupId | String | No |  |
| VMTemplateSize | String | No |  |
| VMTemplateStorageType | String | No |  |
| VMTemplateSubnet | String | No |  |
| WorkingHoursScaleInBehavior | String | No | Values: `OneTime`, `Continuously`, `Never` |
| WorkingHoursScaleOutBehavior | String | No | Values: `OneTime`, `Continuously`, `Never` |

## Usage

```powershell
$model = New-NmeDynamicPoolConfigurationModel `
    -ActiveHostType "Running" `
    -AutoHealEnable $true `
    -BurstCapacity 0 `
    -HostPoolCapacity 0 `
    -IsEnabled $true `
    -IsSingleUserDesktop $true `
    -MinActiveHostsCount 0 `
    -PreStageHostEnable $true `
    -ReImageUsedHosts $true `
    -ReImageUsedHostsMode "Disabled" `
    -ScaleInAggressiveness "High" `
    -ScaleInRestrictionEnable $true `
    -ScaleInRestrictionPutToDrainMode $true `
    -ScalingMode "Default"
```

