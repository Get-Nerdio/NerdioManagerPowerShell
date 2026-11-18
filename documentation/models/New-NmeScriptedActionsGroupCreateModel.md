# New-NmeScriptedActionsGroupCreateModel

Create an in-memory object for ScriptedActionsGroupCreate.

**Output Type:** `ScriptedActionsGroupCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ScriptedActions | [IScriptedActionsGroupItemCreate[]](New-NmeScriptedActionsGroupItemCreateModel.md) | Yes | Pass as array. |
| Description | String | No |  |
| Tags | Object | No |  |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionsGroupItemCreateModel `
    -ScriptedActionId 0
$model = New-NmeScriptedActionsGroupCreateModel `
    -Name "<Name>" `
    -ScriptedActions $scriptedActions
```

