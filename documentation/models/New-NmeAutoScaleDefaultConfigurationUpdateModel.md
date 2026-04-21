# New-NmeAutoScaleDefaultConfigurationUpdateModel

Create an in-memory object for AutoScaleDefaultConfigurationUpdate.

**Output Type:** `AutoScaleDefaultConfigurationUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AutoHealConfigs | [IAutoHealConfigurationItem[]](New-NmeAutoHealConfigurationItemModel.md) | No | Pass as array. |
| AutoHealEnable | Boolean | No |  |
| AvdPropertyLoadBalancing | String | No | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| AvdPropertyMaxSessionsPerHost | Int32 | No |  |
| AvdPropertyStartVMOnConnect | Boolean | No |  |
| ConfigActions | [IAutoHealAction[]](New-NmeAutoHealActionModel.md) | No | Pass as array. |
| ConfigDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ConfigHostsToBeReady | Int32 | No |  |
| ConfigHostsToBeReadyMeasureType | String | No | Values: `Count`, `Percent` |
| ConfigPreStageDiskType | Boolean | No |  |
| ConfigPreStageUnassigned | Boolean | No |  |
| ConfigPreStageUnassignedHosts | Boolean | No |  |
| ConfigSessionCriteria | String | No | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| ConfigStaleHeartbeatMinutes | Int32 | No |  |
| ConfigWaitMinutes | Int32 | No |  |
| ConfigWaitMinutesBeforeFirstAction | Int32 | No |  |
| ConfigWvdStatuses | Object | No | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| MessagingMessage | String | No |  |
| MessagingMinutesBeforeRemove | Int32 | No |  |
| PreStageConfigs | [IPreStageHostsConfigurationItem[]](New-NmePreStageHostsConfigurationItemModel.md) | No | Pass as array. |
| PreStageEnable | Boolean | No |  |
| PreStageIntelligentPrestageMode | String | No | Values: `Hybrid`, `Automated` |
| PreStageIsMultipleConfigsMode | Boolean | No |  |
| RestrictionEnable | Boolean | No |  |
| RestrictionPutToDrainMode | Boolean | No |  |
| RollingDrainModeIsEnabled | Boolean | No |  |
| RollingDrainModeWindows | [IRollingDrainModeWindow[]](New-NmeRollingDrainModeWindowModel.md) | No | Pass as array. |
| ScaleInPolicyAggressiveness | String | No | Values: `High`, `Medium`, `Low` |
| SizeActiveHostType | String | No | Values: `Running`, `AvailableForConnection` |
| SizeBurstCapacity | Int32 | No |  |
| SizeHostPoolCapacity | Int32 | No |  |
| SizeMinActiveHostsCount | Int32 | No |  |
| StartWorkDuration | Int32 | No |  |
| StartWorkHour | Int32 | No |  |
| StartWorkMinutes | Int32 | No |  |
| TimeRangeEndHour | Int32 | No |  |
| TimeRangeEndMinutes | Int32 | No |  |
| TimeRangeStartHour | Int32 | No |  |
| TimeRangeStartMinutes | Int32 | No |  |
| Triggers | [IDynamicPoolTriggerInfo[]](New-NmeDynamicPoolTriggerInfoModel.md) | No | Pass as array. |

## Usage

```powershell
$autoHealConfigs = New-NmeAutoHealConfigurationItemModel `
    -SessionCriteria "WithoutSessions" `
    -WaitMinutes 0 `
    -WvdStatuses "Available"
$configActions = New-NmeAutoHealActionModel `
    -Type "RestartVm"
$preStageConfigs = New-NmePreStageHostsConfigurationItemModel `
    -Days "0" `
    -HostsToBeReady 0 `
    -HostsToBeReadyMeasureType "Count" `
    -PreStageDiskType $true `
    -PreStageUnassigned $true `
    -PreStageUnassignedHosts $true `
    -StartWorkDuration 0 `
    -StartWorkHour 0
$rollingDrainModeWindows = New-NmeRollingDrainModeWindowModel `
    -Name "<Name>" `
    -Percent 0 `
    -StartTime "<StartTime>"
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$model = New-NmeAutoScaleDefaultConfigurationUpdateModel `
    -AutoHealConfigs $autoHealConfigs `
    -AutoHealEnable $true `
    -AvdPropertyLoadBalancing "BreadthFirst" `
    -AvdPropertyMaxSessionsPerHost 0 `
    -AvdPropertyStartVMOnConnect $true `
    -ConfigActions $configActions `
    -ConfigDays "0" `
    -ConfigHostsToBeReady 0 `
    -ConfigHostsToBeReadyMeasureType "Count" `
    -ConfigPreStageDiskType $true `
    -ConfigPreStageUnassigned $true `
    -ConfigPreStageUnassignedHosts $true `
    -ConfigSessionCriteria "WithoutSessions" `
    -ConfigStaleHeartbeatMinutes 0 `
    -ConfigWaitMinutes 0 `
    -ConfigWaitMinutesBeforeFirstAction 0 `
    -ConfigWvdStatuses "Available" `
    -MessagingMessage "<MessagingMessage>" `
    -MessagingMinutesBeforeRemove 0 `
    -PreStageConfigs $preStageConfigs `
    -PreStageEnable $true `
    -PreStageIntelligentPrestageMode "Hybrid" `
    -PreStageIsMultipleConfigsMode $true `
    -RestrictionEnable $true `
    -RestrictionPutToDrainMode $true `
    -RollingDrainModeIsEnabled $true `
    -RollingDrainModeWindows $rollingDrainModeWindows `
    -ScaleInPolicyAggressiveness "High" `
    -SizeActiveHostType "Running" `
    -SizeBurstCapacity 0 `
    -SizeHostPoolCapacity 0 `
    -SizeMinActiveHostsCount 0 `
    -StartWorkDuration 0 `
    -StartWorkHour 0 `
    -StartWorkMinutes 0 `
    -TimeRangeEndHour 0 `
    -TimeRangeEndMinutes 0 `
    -TimeRangeStartHour 0 `
    -TimeRangeStartMinutes 0 `
    -Triggers $triggers
```

