# Get-NmeLinkedDedicatedHostGroup

**Category:** Dedicated Host Groups

**Endpoint:** `GET /api/v1/dedicated-host-groups`

**Endpoint:** `GET /api/v1/dedicated-host-groups/{subscriptionId}/{resourceGroup}/{name}`

## Description

Get dedicated host groups.

Get a dedicated host group.

**Output Type:** `IDedicatedHostGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

### Example 1: GET /api/v1/dedicated-host-groups

```powershell
Get-NmeLinkedDedicatedHostGroup
```

### Example 2: GET /api/v1/dedicated-host-groups/{subscriptionId}/{resourceGroup}/{name}

```powershell
Get-NmeLinkedDedicatedHostGroup `
    -Name "<Name>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

