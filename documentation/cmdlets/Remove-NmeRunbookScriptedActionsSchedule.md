# Remove-NmeRunbookScriptedActionsSchedule

**Endpoint:** `DELETE /api/v1/scripted-actions/{id}/schedule-v2/{scheduleId}`

## Description

Delete Azure runbook scripted action schedule configuration

**Output Type:** `Boolean`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| ScheduleId | Int32 | Yes |  |
| PassThru | SwitchParameter | No | Returns true when the command succeeds |

## Examples

```powershell
Remove-NmeRunbookScriptedActionsSchedule `
    -Id 0 `
    -ScheduleId 0
```

