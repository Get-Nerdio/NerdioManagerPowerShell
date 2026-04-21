# Get-NmeHostPoolReimageSchedule

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/schedule-v2/{scheduleId}/reimage/job-params`

## Description

Get scheduled re-image job params for ARM host pool

**Output Type:** `IReimageScheduledBulkJobParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleId | Int32 | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeHostPoolReimageSchedule `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleId 0 `
    -SubscriptionId "<SubscriptionId>"
```

