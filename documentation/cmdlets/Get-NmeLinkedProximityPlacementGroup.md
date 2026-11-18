# Get-NmeLinkedProximityPlacementGroup

**Category:** Proximity Placement Groups

**Endpoint:** `GET /api/v1/proximity-placement-groups`

**Endpoint:** `GET /api/v1/proximity-placement-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Get proximity placement groups.

Get a proximity placement group.

**Output Type:** `IProximityPlacementGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

### Example 1: GET /api/v1/proximity-placement-groups

```powershell
Get-NmeLinkedProximityPlacementGroup
```

### Example 2: GET /api/v1/proximity-placement-groups/{subscriptionId}/{resourceGroup}/{name}

```powershell
Get-NmeLinkedProximityPlacementGroup `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

