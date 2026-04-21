# Update-NmeHostPoolAutoScale

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/auto-scale`

## Description

Enable/disable auto-scale for ARM host pool

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| IsEnabled | SwitchParameter | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Update-NmeHostPoolAutoScale `
    -HostPoolName "<HostPoolName>" `
    -IsEnabled `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

