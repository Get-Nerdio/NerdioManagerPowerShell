# New-NmeHostPoolScriptedActionProfileConfigurationUpdateModel

Create an in-memory object for HostPoolScriptedActionProfileConfigurationUpdate.

**Output Type:** `HostPoolScriptedActionProfileConfigurationUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ActiveDirectoryId | Int32 | No |  |
| Enabled | Boolean | No |  |
| ScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |

## Usage

```powershell
$scriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeHostPoolScriptedActionProfileConfigurationUpdateModel `
    -ActiveDirectoryId 0 `
    -Enabled $true `
    -ScriptedActions $scriptedActions
```

