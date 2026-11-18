# Get-NmeSessionHostsByWorkspace

**Endpoint:** `GET /api/v1/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}/host`

## Description

Get ARM workspace session hosts

**Output Type:** `IArmSessionHost`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| WorkspaceName | String | Yes |  |
| Username | String | No |  |

## Examples

```powershell
Get-NmeSessionHostsByWorkspace `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -WorkspaceName "<WorkspaceName>"
```

