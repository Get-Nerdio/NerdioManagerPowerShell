# New-NmeLinkedProximityPlacementGroup

**Endpoint:** `POST /api/v1/proximity-placement-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Link a proximity placement group.

**Output Type:** `IResponseWithJobAndProximityPlacementGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
New-NmeLinkedProximityPlacementGroup `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

