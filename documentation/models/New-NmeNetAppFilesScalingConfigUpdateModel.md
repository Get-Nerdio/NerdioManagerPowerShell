# New-NmeNetAppFilesScalingConfigUpdateModel

Create an in-memory object for NetAppFilesScalingConfigUpdate.

**Output Type:** `NetAppFilesScalingConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | No |  |
| ScaleInBy | Int32 | No |  |
| ScaleInInterval | Int32 | No |  |
| ScaleInLowLatency | Int32 | No |  |
| ScaleOutBy | Int32 | No |  |
| ScaleOutHighLatency | Int32 | No |  |
| ScaleOutInterval | Int32 | No |  |
| Trigger | String | No | Values: `AvgReadLatency`, `AvgWriteLatency`, `AvgReadOrWriteLatency` |

## Usage

```powershell
$model = New-NmeNetAppFilesScalingConfigUpdateModel `
    -IsEnabled $true `
    -ScaleInBy 0 `
    -ScaleInInterval 0 `
    -ScaleInLowLatency 0 `
    -ScaleOutBy 0 `
    -ScaleOutHighLatency 0 `
    -ScaleOutInterval 0 `
    -Trigger "AvgReadLatency"
```

