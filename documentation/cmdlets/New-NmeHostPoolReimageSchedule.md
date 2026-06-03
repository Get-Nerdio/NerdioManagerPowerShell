# New-NmeHostPoolReimageSchedule

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/reimage`

## Description

Schedule re-image ARM host pool session hosts' VMs

**Output Type:** `IReimageScheduledBulkJobParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleRecurrenceType | String | Yes | Values: `Once`, `Daily`, `Weekly`, `Monthly`, `Hourly`, `PatchTuesday` |
| ScheduleStartDate | DateTime | Yes |  |
| ScheduleStartHour | Int32 | Yes |  |
| ScheduleStartMinutes | Int32 | Yes |  |
| ScheduleTimeZoneId | String | Yes |  |
| SubscriptionId | String | Yes |  |
| ConcurrencyMaxFailedTasks | Int32 | No |  |
| ConcurrencyTasks | Int32 | No |  |
| MessagingDeactivateBeforeOperation | SwitchParameter | No |  |
| MessagingDelayMinutes | Int32 | No |  |
| MessagingLogOffAggressiveness | String | No | Values: `Force`, `Wait` |
| MessagingMessage | String | No |  |
| MessagingTimeoutInDays | Int32 | No |  |
| ReimageParamDiskPerformanceTier | String | No |  |
| ReimageParamDiskSize | Int32 | No |  |
| ReimageParamEphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| ReimageParamHasEphemeralOSDisk | SwitchParameter | No |  |
| ReimageParamImage | String | No |  |
| ReimageParamSetToDrainModeWhileProcessing | SwitchParameter | No |  |
| ReimageParamStorageType | String | No |  |
| ReimageParamVMSize | String | No |  |
| ScheduleDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScheduleDayOfWeekNumber | String | No | Values: `First`, `Second`, `Third`, `Fourth`, `Last` |
| ScheduleDescription | String | No |  |
| ScheduleName | String | No |  |
| ScheduleOffsetInDays | Int32 | No |  |

## Examples

### Example 1: Weekly schedule

```powershell
New-NmeHostPoolReimageSchedule `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleRecurrenceType "Weekly" `
    -ScheduleStartDate "05/09/2026 00:00:00" `
    -ScheduleStartHour 8 `
    -ScheduleStartMinutes 30 `
    -ScheduleTimeZoneId "Central Standard Time" `
    -SubscriptionId "<SubscriptionId>" `
    -ConcurrencyMaxFailedTasks 1 `
    -ConcurrencyTasks 1 `
    -MessagingDelayMinutes 10 `
    -MessagingMessage "Sorry for the interruption. We are doing some maintenance and need you to log out. We will be terminating your session in 10 minutes if you haven't logged out by then." `
    -ReimageParamDiskSize 128 `
    -ReimageParamImage "MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest" `
    -ReimageParamStorageType "StandardSSD_LRS" `
    -ReimageParamVMSize "Standard_D2s_v3" `
    -ScheduleDayOfWeek 1 `
    -ScheduleDescription "Example of a schedule description" `
    -ScheduleName "Example of a schedule name"
```

### Example 2: Monthly schedule

```powershell
New-NmeHostPoolReimageSchedule `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleRecurrenceType "Monthly" `
    -ScheduleStartDate "05/09/2026 00:00:00" `
    -ScheduleStartHour 8 `
    -ScheduleStartMinutes 30 `
    -ScheduleTimeZoneId "Central Standard Time" `
    -SubscriptionId "<SubscriptionId>" `
    -ConcurrencyMaxFailedTasks 1 `
    -ConcurrencyTasks 1 `
    -MessagingDelayMinutes 10 `
    -MessagingMessage "Sorry for the interruption. We are doing some maintenance and need you to log out. We will be terminating your session in 10 minutes if you haven't logged out by then." `
    -ReimageParamDiskSize 128 `
    -ReimageParamImage "MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest" `
    -ReimageParamStorageType "StandardSSD_LRS" `
    -ReimageParamVMSize "Standard_D2s_v3" `
    -ScheduleDayOfWeek 1 `
    -ScheduleDayOfWeekNumber "Third" `
    -ScheduleDescription "Example of a schedule description" `
    -ScheduleName "Example of a schedule name"
```

