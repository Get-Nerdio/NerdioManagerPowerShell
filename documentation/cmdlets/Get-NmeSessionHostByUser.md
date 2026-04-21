# Get-NmeSessionHostByUser

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/user/{username}/host`

## Description

Get ARM session host by assigned user

**Output Type:** `IArmSessionHost`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Username | String | Yes |  |

## Examples

```powershell
Get-NmeSessionHostByUser `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Username "<Username>"
```

