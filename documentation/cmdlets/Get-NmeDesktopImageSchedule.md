# Get-NmeDesktopImageSchedule

**Endpoint:** `GET /api/v1/desktop-image/{subscriptionId}/{resourceGroup}/{name}/schedule`

## Description

Get scheduled tasks for desktop image

**Output Type:** `IDesktopImageSchedule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeDesktopImageSchedule `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

