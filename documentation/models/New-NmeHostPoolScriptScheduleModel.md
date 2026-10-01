# New-NmeHostPoolScriptScheduleModel

Create an in-memory object for HostPoolScriptSchedule.

**Output Type:** `HostPoolScriptSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BulkJobParamCountFailedTaskToStopWork | Int32 | Yes |  |
| BulkJobParamExcludeNotRunning | Boolean | Yes |  |
| BulkJobParamRestartVms | Boolean | Yes |  |
| BulkJobParamTaskParallelism | Int32 | Yes |  |
| ScheduleRecurrenceType | String | Yes | Values: `Once`, `Daily`, `Weekly`, `Monthly`, `Hourly`, `PatchTuesday` |
| ScheduleStartDate | DateTime | Yes |  |
| ScheduleStartHour | Int32 | Yes |  |
| ScheduleStartMinutes | Int32 | Yes |  |
| ScheduleTimeZoneId | String | Yes |  |
| BulkJobParamEnableDrainMode | Boolean | No |  |
| BulkJobParamMessage | String | No |  |
| BulkJobParamMinutesBeforeRemove | Int32 | No |  |
| ConfigActiveDirectoryId | Int32 | No |  |
| ConfigScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| ScheduleDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScheduleDayOfWeekNumber | String | No | Values: `First`, `Second`, `Third`, `Fourth`, `Last` |
| ScheduleDescription | String | No |  |
| ScheduleName | String | No |  |
| ScheduleOffsetInDays | Int32 | No |  |

## Usage

```powershell
$model = New-NmeHostPoolScriptScheduleModel `
    -BulkJobParamCountFailedTaskToStopWork 0 `
    -BulkJobParamExcludeNotRunning $true `
    -BulkJobParamRestartVms $true `
    -BulkJobParamTaskParallelism 0 `
    -ScheduleRecurrenceType "Once" `
    -ScheduleStartDate "2024-01-01T00:00:00Z" `
    -ScheduleStartHour 0 `
    -ScheduleStartMinutes 0 `
    -ScheduleTimeZoneId "<ScheduleTimeZoneId>"
```

