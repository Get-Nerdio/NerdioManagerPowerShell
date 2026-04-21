# New-NmeAutoScaleWorkingHoursConfigurationUpdateModel

Create an in-memory object for AutoScaleWorkingHoursConfigurationUpdate.

**Output Type:** `AutoScaleWorkingHoursConfigurationUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AutoHealConfigs | [IAutoHealConfigurationItem[]](New-NmeAutoHealConfigurationItemModel.md) | No | Pass as array. |
| AutoHealEnable | Boolean | No |  |
| AvdPropertyStartVMOnConnect | Boolean | No |  |
| ConfigActions | [IAutoHealAction[]](New-NmeAutoHealActionModel.md) | No | Pass as array. |
| ConfigSessionCriteria | String | No | Values: `WithoutSessions`, `WithoutActive`, `WithActive` |
| ConfigStaleHeartbeatMinutes | Int32 | No |  |
| ConfigWaitMinutes | Int32 | No |  |
| ConfigWaitMinutesBeforeFirstAction | Int32 | No |  |
| ConfigWvdStatuses | Object | No | Values: `Available`, `Unavailable`, `Shutdown`, `Disconnected`, `Upgrading`, `UpgradeFailed`, `NoHeartbeat`, `NotJoinedToDomain`, `DomainTrustRelationshipLost`, `SxSStackListenerNotReady`, `FSLogixNotHealthy`, `NeedsAssistance` |
| MessagingMessage | String | No |  |
| MessagingMinutesBeforeRemove | Int32 | No |  |
| OSDiskPreStageMode | String | No | Values: `None`, `Default`, `Hybrid`, `Automated` |
| OSDiskPreStageTarget | String | No | Values: `All`, `Assigned` |
| PowerTimingPowerOffTiming | String | No | Values: `OneTime`, `Continuously`, `Never` |
| PowerTimingPowerOnTiming | String | No | Values: `OneTime`, `Continuously`, `Never` |
| PowerTimingTargetHosts | String | No | Values: `All`, `Assigned` |
| ScaleInPolicyAggressiveness | String | No | Values: `High`, `Medium`, `Low` |
| TimeIntervalDuration | Int32 | No |  |
| TimeIntervalHour | Int32 | No |  |
| TimeIntervalMinutes | Int32 | No |  |
| Triggers | [IDynamicPoolTriggerInfo[]](New-NmeDynamicPoolTriggerInfoModel.md) | No | Pass as array. |
| WorkingHourDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$autoHealConfigs = New-NmeAutoHealConfigurationItemModel `
    -SessionCriteria "WithoutSessions" `
    -WaitMinutes 0 `
    -WvdStatuses "Available"
$configActions = New-NmeAutoHealActionModel `
    -Type "RestartVm"
$triggers = New-NmeDynamicPoolTriggerInfoModel `
    -TriggerType "CPUUsage"
$model = New-NmeAutoScaleWorkingHoursConfigurationUpdateModel `
    -AutoHealConfigs $autoHealConfigs `
    -AutoHealEnable $true `
    -AvdPropertyStartVMOnConnect $true `
    -ConfigActions $configActions `
    -ConfigSessionCriteria "WithoutSessions" `
    -ConfigStaleHeartbeatMinutes 0 `
    -ConfigWaitMinutes 0 `
    -ConfigWaitMinutesBeforeFirstAction 0 `
    -ConfigWvdStatuses "Available" `
    -MessagingMessage "<MessagingMessage>" `
    -MessagingMinutesBeforeRemove 0 `
    -OSDiskPreStageMode "None" `
    -OSDiskPreStageTarget "All" `
    -PowerTimingPowerOffTiming "OneTime" `
    -PowerTimingPowerOnTiming "OneTime" `
    -PowerTimingTargetHosts "All" `
    -ScaleInPolicyAggressiveness "High" `
    -TimeIntervalDuration 0 `
    -TimeIntervalHour 0 `
    -TimeIntervalMinutes 0 `
    -Triggers $triggers `
    -WorkingHourDays "0"
```

