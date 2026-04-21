# Invoke-NmeHostPoolAssociateVM

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/associate-vms`

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ResourceGroupId | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Invoke-NmeHostPoolAssociateVM `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ResourceGroupId "<ResourceGroupId>" `
    -SubscriptionId "<SubscriptionId>"
```

