# New-NmeLinkedCapacityReservationGroup

**Endpoint:** `POST /api/v1/capacity-reservation-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Link a capacity reservation group.

**Output Type:** `IResponseWithJobAndCapacityReservationGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
New-NmeLinkedCapacityReservationGroup `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

