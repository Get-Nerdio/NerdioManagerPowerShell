# Remove-NmeLinkedCapacityReservationGroup

**Endpoint:** `DELETE /api/v1/capacity-reservation-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Unlink a capacity reservation group.

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
Remove-NmeLinkedCapacityReservationGroup `
    -Force `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

