# Remove-NmeHostPoolScriptedAction

**Endpoint:** `DELETE /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/scripted-actions`

## Description

Remove scripted actions assignment for ARM host pool

**Output Type:** `IHostPoolScriptedActionsAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Remove-NmeHostPoolScriptedAction `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

