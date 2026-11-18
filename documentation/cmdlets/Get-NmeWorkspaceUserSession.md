# Get-NmeWorkspaceUserSession

**Endpoint:** `GET /api/v1/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}/session`

## Description

Get ARM workspace user sessions

**Output Type:** `IArmSession`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| WorkspaceName | String | Yes |  |
| Hostname | String | No |  |
| Username | String | No |  |

## Examples

```powershell
Get-NmeWorkspaceUserSession `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -WorkspaceName "<WorkspaceName>"
```

