# New-NmeHostPoolScriptedActionProfileConfigurationsCreateModel

Create an in-memory object for HostPoolScriptedActionProfileConfigurationsCreate.

**Output Type:** `HostPoolScriptedActionProfileConfigurationsCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| OnHostCreateEnabled | Boolean | Yes |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnRemoveEnabled | Boolean | Yes |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnStartEnabled | Boolean | Yes |  |
| OnStartScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnStopEnabled | Boolean | Yes |  |
| OnStopScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnVMCreateEnabled | Boolean | Yes |  |
| OnVMCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStopActiveDirectoryId | Int32 | No |  |
| OnVMCreateActiveDirectoryId | Int32 | No |  |

## Usage

```powershell
$onHostCreateScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeHostPoolScriptedActionProfileConfigurationsCreateModel `
    -OnHostCreateEnabled $true `
    -OnHostCreateScriptedActions $onHostCreateScriptedActions `
    -OnRemoveEnabled $true `
    -OnRemoveScriptedActions $onRemoveScriptedActions `
    -OnStartEnabled $true `
    -OnStartScriptedActions $onStartScriptedActions `
    -OnStopEnabled $true `
    -OnStopScriptedActions $onStopScriptedActions `
    -OnVMCreateEnabled $true `
    -OnVMCreateScriptedActions $onVMCreateScriptedActions
```

