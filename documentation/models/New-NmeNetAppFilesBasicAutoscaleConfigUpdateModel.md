# New-NmeNetAppFilesBasicAutoscaleConfigUpdateModel

Create an in-memory object for NetAppFilesBasicAutoscaleConfigUpdate.

**Output Type:** `NetAppFilesBasicAutoscaleConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| MaxSizeBuffer | Int32 | No |  |
| MaxSizeLimit | Int32 | No |  |
| MinSizeBuffer | Double | No |  |
| NonGreedyStrategicEnabled | Boolean | No |  |
| ScalingMode | String | No | Values: `VolumeOnly`, `VolumeAndPool` |
| TriggerLimitExceedingError | Boolean | No |  |

## Usage

```powershell
$model = New-NmeNetAppFilesBasicAutoscaleConfigUpdateModel `
    -MaxSizeBuffer 0 `
    -MaxSizeLimit 0 `
    -MinSizeBuffer 0 `
    -NonGreedyStrategicEnabled $true `
    -ScalingMode "VolumeOnly" `
    -TriggerLimitExceedingError $true
```

