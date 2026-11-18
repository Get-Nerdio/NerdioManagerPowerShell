# Remove-NmeLinkedDedicatedHostGroup

**Endpoint:** `DELETE /api/v1/dedicated-host-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Unlink a dedicated host group.

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Remove-NmeLinkedDedicatedHostGroup `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

