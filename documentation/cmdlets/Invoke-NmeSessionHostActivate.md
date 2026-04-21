# Invoke-NmeSessionHostActivate

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostname}/activate`

**Output Type:** `IResponseWithJobAndArmSessionHost`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Hostname | String | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Invoke-NmeSessionHostActivate `
    -Hostname "<Hostname>" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

