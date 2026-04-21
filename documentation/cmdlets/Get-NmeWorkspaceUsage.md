# Get-NmeWorkspaceUsage

**Category:** Usages

**Endpoint:** `GET /api/v1/usages/arm/workspace`

**Endpoint:** `GET /api/v1/usages/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}`

## Description

List usage of all ARM workspaces, or get usage of a single workspace.

**Output Type:** `IUsage`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| WorkspaceName | String | Yes |  |
| EndUtc | DateTime | No |  |
| StartUtc | DateTime | No |  |

## Examples

### Example 1: GET /api/v1/usages/arm/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}

```powershell
Get-NmeWorkspaceUsage `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -WorkspaceName "<WorkspaceName>"
```

### Example 2: GET /api/v1/usages/arm/workspace

```powershell
Get-NmeWorkspaceUsage
```

