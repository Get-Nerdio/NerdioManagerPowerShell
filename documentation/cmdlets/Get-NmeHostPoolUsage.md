# Get-NmeHostPoolUsage

**Endpoint:** `GET /api/v1/usages/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}`

## Description

Get usage of ARM host pool

**Output Type:** `IUsage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| EndUtc | DateTime | No |  |
| StartUtc | DateTime | No |  |

## Examples

```powershell
Get-NmeHostPoolUsage `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

