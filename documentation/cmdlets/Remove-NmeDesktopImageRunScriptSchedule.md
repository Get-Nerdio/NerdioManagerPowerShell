# Remove-NmeDesktopImageRunScriptSchedule

**Endpoint:** `DELETE /api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/script/schedule-v2/{scheduleId}`

## Description

Delete scheduled script execution job for desktop image

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ScheduleId | Int32 | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Remove-NmeDesktopImageRunScriptSchedule `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -ScheduleId 0 `
    -SubscriptionId "<SubscriptionId>"
```

