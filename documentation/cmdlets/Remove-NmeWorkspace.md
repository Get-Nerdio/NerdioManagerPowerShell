# Remove-NmeWorkspace

**Endpoint:** `DELETE /api/v1/workspace/{subscriptionId}/{resourceGroup}/{workspaceName}`

## Description

Delete ARM workspace

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| WorkspaceName | String | Yes |  |

## Examples

```powershell
Remove-NmeWorkspace `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -WorkspaceName "<WorkspaceName>"
```

