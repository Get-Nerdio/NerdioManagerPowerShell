# New-NmeRunbookScriptedActionScheduleModel

Create an in-memory object for RunbookScriptedActionSchedule.

**Output Type:** `RunbookScriptedActionSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConfigMinutesToWait | Int32 | Yes |  |
| ConfigParamsBindings | IRunbookScriptedActionRunParamsBindings | Yes |  |
| ConfigSubscriptionId | String | Yes |  |
| ScheduleRecurrenceType | String | Yes | Values: `Once`, `Daily`, `Weekly`, `Monthly`, `Hourly`, `PatchTuesday` |
| ScheduleStartDate | DateTime | Yes |  |
| ScheduleStartHour | Int32 | Yes |  |
| ScheduleStartMinutes | Int32 | Yes |  |
| ScheduleTimeZoneId | String | Yes |  |
| ConfigAdConfigId | Int32 | No |  |
| ScheduleDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScheduleDayOfWeekNumber | String | No | Values: `First`, `Second`, `Third`, `Fourth`, `Last` |
| ScheduleDescription | String | No |  |
| ScheduleName | String | No |  |
| ScheduleOffsetInDays | Int32 | No |  |

## Usage

```powershell
$model = New-NmeRunbookScriptedActionScheduleModel `
    -ConfigMinutesToWait 0 `
    -ConfigParamsBindings @{} `
    -ConfigSubscriptionId "<ConfigSubscriptionId>" `
    -ScheduleRecurrenceType "Once" `
    -ScheduleStartDate "2024-01-01T00:00:00Z" `
    -ScheduleStartHour 0 `
    -ScheduleStartMinutes 0 `
    -ScheduleTimeZoneId "<ScheduleTimeZoneId>"
```

