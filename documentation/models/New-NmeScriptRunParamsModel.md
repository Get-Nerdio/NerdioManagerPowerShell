# New-NmeScriptRunParamsModel

Create an in-memory object for ScriptRunParams.

**Output Type:** `ScriptRunParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ActiveDirectoryId | Int32 | No |  |
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeScriptRunParamsModel `
    -ActiveDirectoryId 0 `
    -ScriptedActions $scriptedActions
```

