# Get-NmeHostPoolScriptedAction

**Endpoint:** `GET /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/scripted-actions`

## Description

Get scripted actions assignment for ARM host pool

**Output Type:** `IHostPoolScriptedActionsAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |

## Examples

```powershell
Get-NmeHostPoolScriptedAction `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

