# Get-NmeHostPoolControlUpProperty

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/controlup`

## Description

Get ControlUp properties for ARM host pool

**Output Type:** `IHostPoolControlUp`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeHostPoolControlUpProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

