# Get-NmeWorkspaceUserSession

**Endpoint:** `GET /api/v1/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}/session`

## Description

Get ARM workspace user sessions

**Output Type:** `IArmSession`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Hostname | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Username | String | Yes |  |
| WorkspaceName | String | Yes |  |

## Examples

```powershell
Get-NmeWorkspaceUserSession `
    -Hostname "<Hostname>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -Username "<Username>" `
    -WorkspaceName "<WorkspaceName>"
```

