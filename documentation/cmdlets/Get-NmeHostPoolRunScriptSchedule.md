# Get-NmeHostPoolRunScriptSchedule

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/{scheduleId}/script-execution/job-params`

## Description

Get scheduled script execution job params for ARM host pool

**Output Type:** `IRunScriptScheduledBulkJobParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleId | Int32 | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeHostPoolRunScriptSchedule `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleId 0 `
    -SubscriptionId "<SubscriptionId>"
```

