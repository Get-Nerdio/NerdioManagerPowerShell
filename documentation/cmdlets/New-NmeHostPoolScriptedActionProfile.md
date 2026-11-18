# New-NmeHostPoolScriptedActionProfile

**Endpoint:** `POST /api/v1/hostpool-scripted-action-profiles`

## Description

Create hostpool shared scripted action profile

**Output Type:** `IResponseWithJobAndHostPoolScriptedActionProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| OnHostCreateEnabled | SwitchParameter | Yes |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| OnRemoveEnabled | SwitchParameter | Yes |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| OnStartEnabled | SwitchParameter | Yes |  |
| OnStartScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| OnStopEnabled | SwitchParameter | Yes |  |
| OnStopScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| OnVMCreateEnabled | SwitchParameter | Yes |  |
| OnVMCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | Yes |  |
| Description | String | No |  |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStopActiveDirectoryId | Int32 | No |  |
| OnVMCreateActiveDirectoryId | Int32 | No |  |

## Examples

```powershell
$onHostCreateScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$onRemoveScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$onStartScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$onStopScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$onVMCreateScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
New-NmeHostPoolScriptedActionProfile `
    -Name "<Name>" `
    -OnHostCreateEnabled `
    -OnHostCreateScriptedActions @($onHostCreateScriptedActions) `
    -OnRemoveEnabled `
    -OnRemoveScriptedActions @($onRemoveScriptedActions) `
    -OnStartEnabled `
    -OnStartScriptedActions @($onStartScriptedActions) `
    -OnStopEnabled `
    -OnStopScriptedActions @($onStopScriptedActions) `
    -OnVMCreateEnabled `
    -OnVMCreateScriptedActions @($onVMCreateScriptedActions)
```

