# New-NmeLinkedDedicatedHostGroup

**Endpoint:** `POST /api/v1/dedicated-host-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Link a dedicated host group.

**Output Type:** `IResponseWithJobAndDedicatedHostGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostIds | String[] | Yes |  |
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
New-NmeLinkedDedicatedHostGroup `
    -HostIds @("/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Compute/hostGroups/host-group-name/hosts/host-name") `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

