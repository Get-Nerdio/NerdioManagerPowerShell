# New-NmeNetAppFilesScalingConfigModel

Create an in-memory object for NetAppFilesScalingConfig.

**Output Type:** `NetAppFilesScalingConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | Yes |  |
| ScaleInBy | Int32 | No |  |
| ScaleInInterval | Int32 | No |  |
| ScaleInLowLatency | Int32 | No |  |
| ScaleOutBy | Int32 | No |  |
| ScaleOutHighLatency | Int32 | No |  |
| ScaleOutInterval | Int32 | No |  |
| Trigger | String | No | Values: `AvgReadLatency`, `AvgWriteLatency`, `AvgReadOrWriteLatency` |

## Usage

```powershell
$model = New-NmeNetAppFilesScalingConfigModel `
    -IsEnabled $true
```

