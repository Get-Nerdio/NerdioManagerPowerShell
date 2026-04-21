# Get-NmeRunbookScriptedActionsSchedule

**Category:** Scripted Actions

**Endpoint:** `GET /api/v1/scripted-actions/{id}/schedule-v2`

**Endpoint:** `GET /api/v1/scripted-actions/{id}/schedule-v2/{scheduleId}`

## Description

List schedules for Azure runbook scripted action, or get a single schedule by scheduleId.

**Output Type:** `IScriptedActionSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| ScheduleId | Int32 | Yes |  |

## Examples

### Example 1: GET /api/v1/scripted-actions/{id}/schedule-v2/{scheduleId}

```powershell
Get-NmeRunbookScriptedActionsSchedule `
    -Id 0 `
    -ScheduleId 0
```

### Example 2: GET /api/v1/scripted-actions/{id}/schedule-v2

```powershell
Get-NmeRunbookScriptedActionsSchedule -Id 0
```

