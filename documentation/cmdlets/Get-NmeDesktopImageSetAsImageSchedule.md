# Get-NmeDesktopImageSetAsImageSchedule

**Endpoint:** `GET /api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/set-as-image/schedule-v2/{scheduleId}`

## Description

Get scheduled "Set as image" job params for desktop image

**Output Type:** `ISetAsImageSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleId | Int32 | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeDesktopImageSetAsImageSchedule `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleId 0 `
    -SubscriptionId "<SubscriptionId>"
```

