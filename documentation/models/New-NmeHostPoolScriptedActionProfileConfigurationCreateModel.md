# New-NmeHostPoolScriptedActionProfileConfigurationCreateModel

Create an in-memory object for HostPoolScriptedActionProfileConfigurationCreate.

**Output Type:** `HostPoolScriptedActionProfileConfigurationCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Enabled | Boolean | Yes |  |
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| ActiveDirectoryId | Int32 | No |  |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeHostPoolScriptedActionProfileConfigurationCreateModel `
    -Enabled $true `
    -ScriptedActions $scriptedActions
```

