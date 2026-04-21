# New-NmeDesktopImageRunScriptSchedule

**Endpoint:** `POST /api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script/schedule-v2`

## Description

Schedule script execution on desktop image VM

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConfigRestartVM | SwitchParameter | Yes |  |
| ConfigScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleRecurrenceType | String | Yes | Values: `Once`, `Daily`, `Weekly`, `Monthly`, `Hourly`, `PatchTuesday` |
| ScheduleStartDate | DateTime | Yes |  |
| ScheduleStartHour | Int32 | Yes |  |
| ScheduleStartMinutes | Int32 | Yes |  |
| ScheduleTimeZoneId | String | Yes |  |
| SubscriptionId | String | Yes |  |
| ConfigActiveDirectoryId | Int32 | No |  |
| ScheduleDayOfWeek | Int32 | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScheduleDayOfWeekNumber | String | No | Values: `First`, `Second`, `Third`, `Fourth`, `Last` |
| ScheduleDescription | String | No |  |
| ScheduleName | String | No |  |
| ScheduleOffsetInDays | Int32 | No |  |

## Examples

```powershell
$configScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
New-NmeDesktopImageRunScriptSchedule `
    -ConfigRestartVM `
    -ConfigScriptedActions @($configScriptedActions) `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleRecurrenceType "Once" `
    -ScheduleStartDate "2024-01-01T00:00:00Z" `
    -ScheduleStartHour 0 `
    -ScheduleStartMinutes 0 `
    -ScheduleTimeZoneId "<ScheduleTimeZoneId>" `
    -SubscriptionId "<SubscriptionId>"
```

