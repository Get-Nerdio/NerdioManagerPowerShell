# New-NmeAutoScaleUserDrivenConfigurationCreateModel

Create an in-memory object for AutoScaleUserDrivenConfigurationCreate.

**Output Type:** `AutoScaleUserDrivenConfigurationCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AutoHealEnable | Boolean | Yes |  |
| AvdPropertyStartVMOnConnect | Boolean | Yes |  |
| OSDiskPreStageMode | String | Yes | Values: `None`, `Default`, `Hybrid`, `Automated` |
| OSDiskPreStageTarget | String | Yes | Values: `All`, `Assigned` |
| Triggers | [IDynamicPoolTriggerInfo[]](New-NmeDynamicPoolTriggerInfoModel.md) | Yes | Pass as array. |
| AutoHealConfigs | [IAutoHealConfigurationItem[]](New-NmeAutoHealConfigurationItemModel.md) | No | Pass as array. |
| ConfigActions | [IAutoHealAction[]](New-NmeAutoHealActionModel.md) | No | Pass as array. |
| ConfigSessionCriteria | String | No | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| ConfigStaleHeartbeatMinutes | Int32 | No |  |
| ConfigWaitMinutes | Int32 | No |  |
| ConfigWaitMinutesBeforeFirstAction | Int32 | No |  |
| ConfigWvdStatuses | Object | No | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| PreStageHostConfigs | [IUserDrivenPreStageHostsConfigurationItem[]](New-NmeUserDrivenPreStageHostsConfigurationItemModel.md) | No | Pass as array. |
| PreStageHostEnable | Boolean | No |  |
| PreStageHostPreStageIfUnassigned | Boolean | No |  |
| TimeIntervalDuration | Int32 | No |  |
| TimeIntervalHour | Int32 | No |  |
| TimeIntervalMinutes | Int32 | No |  |
| WorkingHourDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$model = New-NmeAutoScaleUserDrivenConfigurationCreateModel `
    -AutoHealEnable $true `
    -AvdPropertyStartVMOnConnect $true `
    -OSDiskPreStageMode "None" `
    -OSDiskPreStageTarget "All" `
    -Triggers $triggers
```

