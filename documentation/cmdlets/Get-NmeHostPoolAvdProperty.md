# Get-NmeHostPoolAvdProperty

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/wvd`

## Description

Get AVD properties for ARM host pool

**Output Type:** `IArmHostPoolProperties`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeHostPoolAvdProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

