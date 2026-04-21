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
| Username | String | Yes |  |
| WorkspaceName | String | Yes |  |

## Examples

```powershell
Get-NmeSessionHostsByWorkspace `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Username "<Username>" `
    -WorkspaceName "<WorkspaceName>"
```

