# New-NmeHostPoolScriptRunParamsModel

Create an in-memory object for HostPoolScriptRunParams.

**Output Type:** `HostPoolScriptRunParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BulkJobParamCountFailedTaskToStopWork | Int32 | Yes |  |
| BulkJobParamExcludeNotRunning | Boolean | Yes |  |
| BulkJobParamRestartVms | Boolean | Yes |  |
| BulkJobParamTaskParallelism | Int32 | Yes |  |
| BulkJobParamEnableDrainMode | Boolean | No |  |
| BulkJobParamMessage | String | No |  |
| BulkJobParamMinutesBeforeRemove | Int32 | No |  |
| BulkJobParamSessionHostsToProcessNames | Object | No |  |
| ConfigActiveDirectoryId | Int32 | No |  |
| ConfigScriptedActions | [IScriptedActionOption[]](New-NmeScriptedActionOptionModel.md) | No | Pass as array. |

## Usage

```powershell
$model = New-NmeHostPoolScriptRunParamsModel `
    -BulkJobParamCountFailedTaskToStopWork 0 `
    -BulkJobParamExcludeNotRunning $true `
    -BulkJobParamRestartVms $true `
    -BulkJobParamTaskParallelism 0
```

