# New-NmeHostPoolScriptedActionProfileUpdateModel

Create an in-memory object for HostPoolScriptedActionProfileUpdate.

**Output Type:** `HostPoolScriptedActionProfileUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Description | String | No |  |
| Name | String | No |  |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnHostCreateEnabled | Boolean | No |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnRemoveEnabled | Boolean | No |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStartEnabled | Boolean | No |  |
| OnStartScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnStopActiveDirectoryId | Int32 | No |  |
| OnStopEnabled | Boolean | No |  |
| OnStopScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
| OnVMCreateActiveDirectoryId | Int32 | No |  |
| OnVMCreateEnabled | Boolean | No |  |
| OnVMCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |

## Usage

```powershell
$onHostCreateScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeHostPoolScriptedActionProfileUpdateModel `
    -Description "<Description>" `
    -Name "<Name>" `
    -OnHostCreateActiveDirectoryId 0 `
    -OnHostCreateEnabled $true `
    -OnHostCreateScriptedActions $onHostCreateScriptedActions `
    -OnRemoveActiveDirectoryId 0 `
    -OnRemoveEnabled $true `
    -OnRemoveScriptedActions $onRemoveScriptedActions `
    -OnStartActiveDirectoryId 0 `
    -OnStartEnabled $true `
    -OnStartScriptedActions $onStartScriptedActions `
    -OnStopActiveDirectoryId 0 `
    -OnStopEnabled $true `
    -OnStopScriptedActions $onStopScriptedActions `
    -OnVMCreateActiveDirectoryId 0 `
    -OnVMCreateEnabled $true `
    -OnVMCreateScriptedActions $onVMCreateScriptedActions
```

