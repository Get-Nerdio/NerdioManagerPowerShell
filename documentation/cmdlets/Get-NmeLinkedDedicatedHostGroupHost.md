# Get-NmeLinkedDedicatedHostGroupHost

**Endpoint:** `GET /api/v1/dedicated-host-groups/{subscriptionId}/{resourceGroup}/{name}/hosts`

## Description

Get dedicated hosts in a dedicated host group.

**Output Type:** `IDedicatedHostGroupHost`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeLinkedDedicatedHostGroupHost `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

