# New-NmeScriptedActionsGroupItemUpdateModel

Create an in-memory object for ScriptedActionsGroupItemUpdate.

**Output Type:** `ScriptedActionsGroupItemUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScriptedActionId | Int32 | Yes |  |
| DefaultParams | IScriptedActionsGroupItemUpdateDefaultParams | No |  |
| Id | Int32 | No |  |

## Usage

```powershell
$model = New-NmeScriptedActionsGroupItemUpdateModel `
    -ScriptedActionId 0
```

