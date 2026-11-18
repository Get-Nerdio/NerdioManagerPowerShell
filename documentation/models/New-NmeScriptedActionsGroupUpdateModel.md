# New-NmeScriptedActionsGroupUpdateModel

Create an in-memory object for ScriptedActionsGroupUpdate.

**Output Type:** `ScriptedActionsGroupUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Description | String | No |  |
| Name | String | No |  |
| ScriptedActions | [IScriptedActionsGroupItemUpdate[]](New-NmeScriptedActionsGroupItemUpdateModel.md) | No | Pass as array. |
| Tags | Object | No |  |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionsGroupItemUpdateModel `
    -ScriptedActionId 0
$model = New-NmeScriptedActionsGroupUpdateModel `
    -Description "<Description>" `
    -Name "<Name>" `
    -ScriptedActions $scriptedActions `
    -Tags "<Tags>"
```

