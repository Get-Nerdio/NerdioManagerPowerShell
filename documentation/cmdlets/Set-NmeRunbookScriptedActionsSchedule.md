# Set-NmeRunbookScriptedActionsSchedule

**Endpoint:** `PUT /api/v1/scripted-actions/{id}/schedule-v2/{scheduleId}`

## Description

Update scheduled Azure runbook scripted action execution in Automation account

**Output Type:** `IScriptedActionSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConfigMinutesToWait | Int32 | Yes |  |
| ConfigParamsBindings | Hashtable | Yes | Key is parameter name, value is `@{value = "..."; isSecure = $false}` |
| ConfigSubscriptionId | String | Yes |  |
| Id | Int32 | Yes |  |
| ScheduleId | Int32 | Yes |  |
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

## Examples

```powershell
Set-NmeRunbookScriptedActionsSchedule `
    -ConfigMinutesToWait 0 `
    -ConfigParamsBindings @{} `
    -ConfigSubscriptionId "<ConfigSubscriptionId>" `
    -Id 0 `
    -ScheduleId 0 `
    -ScheduleRecurrenceType "Once" `
    -ScheduleStartDate "2024-01-01T00:00:00Z" `
    -ScheduleStartHour 0 `
    -ScheduleStartMinutes 0 `
    -ScheduleTimeZoneId "<ScheduleTimeZoneId>"
```

