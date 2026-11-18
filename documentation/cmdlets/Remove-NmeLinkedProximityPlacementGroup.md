# Remove-NmeLinkedProximityPlacementGroup

**Endpoint:** `DELETE /api/v1/proximity-placement-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Unlink a proximity placement group.

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Force | SwitchParameter | Yes |  |
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Remove-NmeLinkedProximityPlacementGroup `
    -Force `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

