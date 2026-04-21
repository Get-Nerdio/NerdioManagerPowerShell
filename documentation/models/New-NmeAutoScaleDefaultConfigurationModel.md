# New-NmeAutoScaleDefaultConfigurationModel

Create an in-memory object for AutoScaleDefaultConfiguration.

**Output Type:** `AutoScaleDefaultConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AutoHealEnable | Boolean | Yes |  |
| AvdPropertyLoadBalancing | String | Yes | Values: `BreadthFirst`, `DepthFirst`, `Persistent`, `MultiplePersistent` |
| AvdPropertyMaxSessionsPerHost | Int32 | Yes |  |
| AvdPropertyStartVMOnConnect | Boolean | Yes |  |
| PreStageEnable | Boolean | Yes |  |
| RestrictionEnable | Boolean | Yes |  |
| RestrictionPutToDrainMode | Boolean | Yes |  |
| RollingDrainModeIsEnabled | Boolean | Yes |  |
| RollingDrainModeWindows | [IRollingDrainModeWindow[]](New-NmeRollingDrainModeWindowModel.md) | Yes | Pass as array. |
| ScaleInPolicyAggressiveness | String | Yes | Values: `High`, `Medium`, `Low` |
| SizeActiveHostType | String | Yes | Values: `Running`, `AvailableForConnection` |
| SizeBurstCapacity | Int32 | Yes |  |
| SizeHostPoolCapacity | Int32 | Yes |  |
| SizeMinActiveHostsCount | Int32 | Yes |  |
| Triggers | [IDynamicPoolTriggerInfo[]](New-NmeDynamicPoolTriggerInfoModel.md) | Yes | Pass as array. |
| AutoHealConfigs | [IAutoHealConfigurationItem[]](New-NmeAutoHealConfigurationItemModel.md) | No | Pass as array. |
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
| PreStageIntelligentPrestageMode | String | No | Values: `Hybrid`, `Automated` |
| PreStageIsMultipleConfigsMode | Boolean | No |  |
| StartWorkDuration | Int32 | No |  |
| StartWorkHour | Int32 | No |  |
| StartWorkMinutes | Int32 | No |  |
| TimeRangeEndHour | Int32 | No |  |
| TimeRangeEndMinutes | Int32 | No |  |
| TimeRangeStartHour | Int32 | No |  |
| TimeRangeStartMinutes | Int32 | No |  |

## Usage

```powershell
$rollingDrainModeWindows = New-NmeRollingDrainModeWindowModel `
    -Name "<Name>" `
    -Percent 0 `
    -StartTime "<StartTime>"
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$model = New-NmeAutoScaleDefaultConfigurationModel `
    -AutoHealEnable $true `
    -AvdPropertyLoadBalancing "BreadthFirst" `
    -AvdPropertyMaxSessionsPerHost 0 `
    -AvdPropertyStartVMOnConnect $true `
    -PreStageEnable $true `
    -RestrictionEnable $true `
    -RestrictionPutToDrainMode $true `
    -RollingDrainModeIsEnabled $true `
    -RollingDrainModeWindows $rollingDrainModeWindows `
    -ScaleInPolicyAggressiveness "High" `
    -SizeActiveHostType "Running" `
    -SizeBurstCapacity 0 `
    -SizeHostPoolCapacity 0 `
    -SizeMinActiveHostsCount 0 `
    -Triggers $triggers
```

