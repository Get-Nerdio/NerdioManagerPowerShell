# Update-NmeHostPoolScriptedAction

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/scripted-actions`

## Description

Patch scripted actions assignment for ARM host pool

**Output Type:** `IHostPoolScriptedActionsAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| OnCreateActiveDirectoryId | Int32 | No |  |
| OnCreateEnabled | SwitchParameter | No |  |
| OnCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnHostCreateEnabled | SwitchParameter | No |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnRemoveEnabled | SwitchParameter | No |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStartEnabled | SwitchParameter | No |  |
| OnStartScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnStopActiveDirectoryId | Int32 | No |  |
| OnStopEnabled | SwitchParameter | No |  |
| OnStopScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| ProfileId | Int32 | No | Shared scripted actions profile ID. |

## Examples

```powershell
Update-NmeHostPoolScriptedAction `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

