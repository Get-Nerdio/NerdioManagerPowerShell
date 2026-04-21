# New-NmeRunScriptBulkJobWithHostsParamsModel

Create an in-memory object for RunScriptBulkJobWithHostsParams.

**Output Type:** `RunScriptBulkJobWithHostsParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| CountFailedTaskToStopWork | Int32 | Yes |  |
| ExcludeNotRunning | Boolean | Yes |  |
| RestartVms | Boolean | Yes |  |
| TaskParallelism | Int32 | Yes |  |
| EnableDrainMode | Boolean | No |  |
| Message | String | No |  |
| MinutesBeforeRemove | Int32 | No |  |
| SessionHostsToProcessNames | Object | No |  |

## Usage

```powershell
$model = New-NmeRunScriptBulkJobWithHostsParamsModel `
    -CountFailedTaskToStopWork 0 `
    -ExcludeNotRunning $true `
    -RestartVms $true `
    -TaskParallelism 0
```

