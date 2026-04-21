# New-NmeLinkedResourceGroup

**Endpoint:** `POST /api/v1/resourcegroup/{subscriptionId}/{resourceGroup}/linked`

## Description

Link Azure resource group

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsDefault | SwitchParameter | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
New-NmeLinkedResourceGroup `
    -IsDefault `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

