# Get-NmeLinkedCapacityReservationGroup

**Category:** Capacity Reservation Groups

**Endpoint:** `GET /api/v1/capacity-reservation-groups`

**Endpoint:** `GET /api/v1/capacity-reservation-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Get capacity reservation groups.

Get a capacity reservation group.

**Output Type:** `ICapacityReservationGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

### Example 1: GET /api/v1/capacity-reservation-groups

```powershell
Get-NmeLinkedCapacityReservationGroup
```

### Example 2: GET /api/v1/capacity-reservation-groups/{subscriptionId}/{resourceGroup}/{name}

```powershell
Get-NmeLinkedCapacityReservationGroup `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

