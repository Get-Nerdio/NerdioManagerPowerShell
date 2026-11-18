# Update-NmeHostPoolScriptedActionProfile

**Endpoint:** `PATCH /api/v1/hostpool-scripted-action-profiles/{id}`

## Description

Partially update hostpool shared scripted action profile

**Output Type:** `IResponseWithJobAndHostPoolScriptedActionProfile`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| Description | String | No |  |
| Name | String | No |  |
| OnHostCreateActiveDirectoryId | Int32 | No |  |
| OnHostCreateEnabled | SwitchParameter | No |  |
| OnHostCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnRemoveActiveDirectoryId | Int32 | No |  |
| OnRemoveEnabled | SwitchParameter | No |  |
| OnRemoveScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnStartActiveDirectoryId | Int32 | No |  |
| OnStartEnabled | SwitchParameter | No |  |
| OnStartScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnStopActiveDirectoryId | Int32 | No |  |
| OnStopEnabled | SwitchParameter | No |  |
| OnStopScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |
| OnVMCreateActiveDirectoryId | Int32 | No |  |
| OnVMCreateEnabled | SwitchParameter | No |  |
| OnVMCreateScriptedActions | [IScriptedActionOption[]](../models/New-NmeScriptedActionOptionModel.md) | No |  |

## Examples

```powershell
Update-NmeHostPoolScriptedActionProfile -Id 0
```

