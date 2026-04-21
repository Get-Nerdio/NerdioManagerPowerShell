# Get-NmeDesktopImageRunScriptSchedule

**Endpoint:** `GET /api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script/schedule-v2/{scheduleId}`

## Description

Get scheduled script execution job params for desktop image

**Output Type:** `ICustomScriptSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleId | Int32 | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeDesktopImageRunScriptSchedule `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleId 0 `
    -SubscriptionId "<SubscriptionId>"
```

