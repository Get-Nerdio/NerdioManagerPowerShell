# New-NmeHostPoolScriptedActionsModel

Create an in-memory object for HostPoolScriptedActions.

**Output Type:** `HostPoolScriptedActions`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| OnCreateEnabled | Boolean | Yes |  |
| OnCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnHostCreateEnabled | Boolean | Yes |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnRemoveEnabled | Boolean | Yes |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnStartEnabled | Boolean | Yes |  |
| OnStartScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnStopEnabled | Boolean | Yes |  |
| OnStopScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| OnCreateActiveDirectoryId | Int32 | No |  |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStopActiveDirectoryId | Int32 | No |  |

## Usage

```powershell
$onCreateScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeHostPoolScriptedActionsModel `
    -OnCreateEnabled $true `
    -OnCreateScriptedActions $onCreateScriptedActions `
    -OnHostCreateEnabled $true `
    -OnHostCreateScriptedActions $onHostCreateScriptedActions `
    -OnRemoveEnabled $true `
    -OnRemoveScriptedActions $onRemoveScriptedActions `
    -OnStartEnabled $true `
    -OnStartScriptedActions $onStartScriptedActions `
    -OnStopEnabled $true `
    -OnStopScriptedActions $onStopScriptedActions
```

