# New-NmeHostPoolScriptRunModel

Create an in-memory object for HostPoolScriptRun.

**Output Type:** `HostPoolScriptRun`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BulkJobParamCountFailedTaskToStopWork | Int32 | Yes |  |
| BulkJobParamExcludeNotRunning | Boolean | Yes |  |
| BulkJobParamRestartVms | Boolean | Yes |  |
| BulkJobParamTaskParallelism | Int32 | Yes |  |
| ConfigScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | Yes | Pass as array. |
| BulkJobParamEnableDrainMode | Boolean | No |  |
| BulkJobParamMessage | String | No |  |
| BulkJobParamMinutesBeforeRemove | Int32 | No |  |
| BulkJobParamSessionHostsToProcessNames | Object | No |  |
| ConfigActiveDirectoryId | Int32 | No |  |
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |

## Usage

```powershell
$configScriptedActions = New-NmeScriptedActionOptionModel `
    -GroupParams @{} `
    -Id 0 `
    -Params @{} `
    -Type "Action"
$model = New-NmeHostPoolScriptRunModel `
    -BulkJobParamCountFailedTaskToStopWork 0 `
    -BulkJobParamExcludeNotRunning $true `
    -BulkJobParamRestartVms $true `
    -BulkJobParamTaskParallelism 0 `
    -ConfigScriptedActions $configScriptedActions
```

