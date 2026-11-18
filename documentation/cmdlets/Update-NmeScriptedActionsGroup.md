# Update-NmeScriptedActionsGroup

**Endpoint:** `PATCH /api/v1/scripted-actions-groups/{id}`

## Description

Partially update scripted actions group

**Output Type:** `IResponseWithJobAndScriptedActionsGroup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Description | String | No |  |
| Name | String | No |  |
| ScriptedActions | [IScriptedActionsGroupItemUpdate[]](../models/New-NmeScriptedActionsGroupItemUpdateModel.md) | No |  |
| Tags | String[] | No |  |

## Examples

```powershell
Update-NmeScriptedActionsGroup -Id 0
```

