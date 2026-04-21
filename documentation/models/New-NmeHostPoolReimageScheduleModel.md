# New-NmeHostPoolReimageScheduleModel

Create an in-memory object for HostPoolReimageSchedule.

**Output Type:** `HostPoolReimageSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScheduleRecurrenceType | String | Yes | Values: `Once`, `Daily`, `Weekly`, `Monthly`, `Hourly`, `PatchTuesday` |
| ScheduleStartDate | DateTime | Yes |  |
| ScheduleStartHour | Int32 | Yes |  |
| ScheduleStartMinutes | Int32 | Yes |  |
| ScheduleTimeZoneId | String | Yes |  |
| ConcurrencyMaxFailedTasks | Int32 | No |  |
| ConcurrencyTasks | Int32 | No |  |
| MessagingDeactivateBeforeOperation | Boolean | No |  |
| MessagingDelayMinutes | Int32 | No |  |
| MessagingLogOffAggressiveness | String | No | Values: `Force`, `Wait` |
| MessagingMessage | String | No |  |
| MessagingTimeoutInDays | Int32 | No |  |
| ReimageParamDiskPerformanceTier | String | No |  |
| ReimageParamDiskSize | Int32 | No |  |
| ReimageParamEphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| ReimageParamHasEphemeralOSDisk | Boolean | No |  |
| ReimageParamImage | String | No |  |
| ReimageParamSetToDrainModeWhileProcessing | Boolean | No |  |
| ReimageParamStorageType | String | No |  |
| ReimageParamVMSize | String | No |  |
| ScheduleDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScheduleDayOfWeekNumber | String | No | Values: `First`, `Second`, `Third`, `Fourth`, `Last` |
| ScheduleDescription | String | No |  |
| ScheduleName | String | No |  |
| ScheduleOffsetInDays | Int32 | No |  |

## Usage

```powershell
$model = New-NmeHostPoolReimageScheduleModel `
    -ScheduleRecurrenceType "Once" `
    -ScheduleStartDate "2024-01-01T00:00:00Z" `
    -ScheduleStartHour 0 `
    -ScheduleStartMinutes 0 `
    -ScheduleTimeZoneId "<ScheduleTimeZoneId>"
```

