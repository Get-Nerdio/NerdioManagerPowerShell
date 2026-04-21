# New-NmeHostPoolRunScriptSchedule

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/script-execution`

## Description

Schedule script execution on ARM host pool session hosts' VMs

**Output Type:** `IRunScriptScheduledBulkJobParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BulkJobParamCountFailedTaskToStopWork | Int32 | Yes |  |
| BulkJobParamExcludeNotRunning | SwitchParameter | Yes |  |
| BulkJobParamRestartVms | SwitchParameter | Yes |  |
| BulkJobParamTaskParallelism | Int32 | Yes |  |
| ConfigScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleRecurrenceType | String | Yes | Values: `Once`, `Daily`, `Weekly`, `Monthly`, `Hourly`, `PatchTuesday` |
| ScheduleStartDate | DateTime | Yes |  |
| ScheduleStartHour | Int32 | Yes |  |
| ScheduleStartMinutes | Int32 | Yes |  |
| ScheduleTimeZoneId | String | Yes |  |
| SubscriptionId | String | Yes |  |
| BulkJobParamEnableDrainMode | SwitchParameter | No |  |
| BulkJobParamMessage | String | No |  |
| BulkJobParamMinutesBeforeRemove | Int32 | No |  |
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
New-NmeHostPoolRunScriptSchedule `
    -BulkJobParamCountFailedTaskToStopWork 0 `
    -BulkJobParamExcludeNotRunning `
    -BulkJobParamRestartVms `
    -BulkJobParamTaskParallelism 0 `
    -ConfigScriptedActions @($configScriptedActions) `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleRecurrenceType "Once" `
    -ScheduleStartDate "2024-01-01T00:00:00Z" `
    -ScheduleStartHour 0 `
    -ScheduleStartMinutes 0 `
    -ScheduleTimeZoneId "<ScheduleTimeZoneId>" `
    -SubscriptionId "<SubscriptionId>"
```

