# New-NmeVmCustomScriptRunModel

Create an in-memory object for VmCustomScriptRun.

**Output Type:** `VmCustomScriptRun`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| RestartVM | Boolean | Yes |  |
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| ActiveDirectoryId | Int32 | No |  |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeVmCustomScriptRunModel `
    -RestartVM $true `
    -ScriptedActions $scriptedActions
```

