# Invoke-NmeSessionHostLock

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/lock`

## Description

Lock ARM session host

**Output Type:** `IResourceLockModel`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Hostname | String | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Invoke-NmeSessionHostLock `
    -Hostname "<Hostname>" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

