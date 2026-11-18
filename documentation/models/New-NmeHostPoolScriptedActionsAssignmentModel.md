# New-NmeHostPoolScriptedActionsAssignmentModel

Create an in-memory object for HostPoolScriptedActionsAssignment.

**Output Type:** `HostPoolScriptedActionsAssignment`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| OnCreateActiveDirectoryId | Int32 | No |  |
| OnCreateEnabled | Boolean | No |  |
| OnCreateScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |
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
| ProfileId | Int32 | No |  |

## Usage

```powershell
$onCreateScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeHostPoolScriptedActionsAssignmentModel `
    -OnCreateActiveDirectoryId 0 `
    -OnCreateEnabled $true `
    -OnCreateScriptedActions $onCreateScriptedActions `
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
    -ProfileId 0
```

