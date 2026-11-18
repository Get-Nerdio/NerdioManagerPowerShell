# Get-NmeHostPoolUserSession

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/session`

## Description

Get ARM host pool user sessions

**Output Type:** `IArmSession`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Hostname | String | No |  |
| Username | String | No |  |

## Examples

```powershell
Get-NmeHostPoolUserSession `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

