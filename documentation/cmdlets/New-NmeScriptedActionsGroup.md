# New-NmeScriptedActionsGroup

**Endpoint:** `POST /api/v1/scripted-actions-groups`

## Description

Create scripted actions group

**Output Type:** `IResponseWithJobAndScriptedActionsGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ScriptedActions | [IScriptedActionsGroupItemCreate[]](../models/New-NmeScriptedActionsGroupItemCreateModel.md) | Yes |  |
| Description | String | No |  |
| Tags | String[] | No |  |

## Examples

```powershell
$scriptedActions = New-NmeScriptedActionsGroupItemCreateModel `
    -ScriptedActionId 0
New-NmeScriptedActionsGroup `
    -Name "<Name>" `
    -ScriptedActions @($scriptedActions)
```

