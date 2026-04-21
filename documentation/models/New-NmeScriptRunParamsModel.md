# New-NmeScriptRunParamsModel

Create an in-memory object for ScriptRunParams.

**Output Type:** `ScriptRunParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| ActiveDirectoryId | Int32 | No |  |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeScriptRunParamsModel `
    -ScriptedActions $scriptedActions
```

