# New-NmeRunScriptBulkJobParamsModel

Create an in-memory object for RunScriptBulkJobParams.

**Output Type:** `RunScriptBulkJobParams`

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

## Usage

```powershell
$model = New-NmeRunScriptBulkJobParamsModel `
    -CountFailedTaskToStopWork 0 `
    -ExcludeNotRunning $true `
    -RestartVms $true `
    -TaskParallelism 0
```

