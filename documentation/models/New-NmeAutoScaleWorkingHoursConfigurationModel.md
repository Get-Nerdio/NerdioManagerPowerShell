# New-NmeAutoScaleWorkingHoursConfigurationModel

Create an in-memory object for AutoScaleWorkingHoursConfiguration.

**Output Type:** `AutoScaleWorkingHoursConfiguration`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AutoHealEnable | Boolean | Yes |  |
| AvdPropertyStartVMOnConnect | Boolean | Yes |  |
| OSDiskPreStageMode | String | Yes | Values: `None`, `Default`, `Hybrid`, `Automated` |
| OSDiskPreStageTarget | String | Yes | Values: `All`, `Assigned` |
| PowerTimingPowerOffTiming | String | Yes | Values: `OneTime`, `Continuously`, `Never` |
| PowerTimingPowerOnTiming | String | Yes | Values: `OneTime`, `Continuously`, `Never` |
| PowerTimingTargetHosts | String | Yes | Values: `All`, `Assigned` |
| ScaleInPolicyAggressiveness | String | Yes | Values: `High`, `Medium`, `Low` |
| TimeIntervalDuration | Int32 | Yes |  |
| TimeIntervalHour | Int32 | Yes |  |
| Triggers | [IDynamicPoolTriggerInfo[]](New-NmeDynamicPoolTriggerInfoModel.md) | Yes | Pass as array. |
| WorkingHourDays | Object | Yes | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| AutoHealConfigs | [IAutoHealConfigurationItem[]](New-NmeAutoHealConfigurationItemModel.md) | No | Pass as array. |
| ConfigActions | [IAutoHealAction[]](New-NmeAutoHealActionModel.md) | No | Pass as array. |
| ConfigSessionCriteria | String | No | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| ConfigStaleHeartbeatMinutes | Int32 | No |  |
| ConfigWaitMinutes | Int32 | No |  |
| ConfigWaitMinutesBeforeFirstAction | Int32 | No |  |
| ConfigWvdStatuses | Object | No | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| MessagingMessage | String | No |  |
| MessagingMinutesBeforeRemove | Int32 | No |  |
| TimeIntervalMinutes | Int32 | No |  |

## Usage

```powershell
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$model = New-NmeAutoScaleWorkingHoursConfigurationModel `
    -AutoHealEnable $true `
    -AvdPropertyStartVMOnConnect $true `
    -OSDiskPreStageMode "None" `
    -OSDiskPreStageTarget "All" `
    -PowerTimingPowerOffTiming "OneTime" `
    -PowerTimingPowerOnTiming "OneTime" `
    -PowerTimingTargetHosts "All" `
    -ScaleInPolicyAggressiveness "High" `
    -TimeIntervalDuration 0 `
    -TimeIntervalHour 0 `
    -Triggers $triggers `
    -WorkingHourDays "0"
```

