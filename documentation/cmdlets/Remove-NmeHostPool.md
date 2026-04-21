# Remove-NmeHostPool

**Endpoint:** `DELETE /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}`

## Description

Delete ARM host pool

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Remove-NmeHostPool `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

