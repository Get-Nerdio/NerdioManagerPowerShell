# Remove-NmeLinkedResourceGroup

**Endpoint:** `DELETE /api/v1/resourcegroup/{subscriptionId}/{resourceGroup}/linked`

## Description

Unlink Azure resource group

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Remove-NmeLinkedResourceGroup `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

