# New-NmeNetAppFilesBasicAutoscaleConfigModel

Create an in-memory object for NetAppFilesBasicAutoscaleConfig.

**Output Type:** `NetAppFilesBasicAutoscaleConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| MaxSizeBuffer | Double | Yes |  |
| MaxSizeLimit | Int32 | Yes |  |
| MinSizeBuffer | Double | Yes |  |
| NonGreedyStrategicEnabled | Boolean | Yes |  |
| ScalingMode | String | Yes | Values: `VolumeOnly`, `VolumeAndPool` |
| TriggerLimitExceedingError | Boolean | Yes |  |

## Usage

```powershell
$model = New-NmeNetAppFilesBasicAutoscaleConfigModel `
    -MaxSizeBuffer 0 `
    -MaxSizeLimit 0 `
    -MinSizeBuffer 0 `
    -NonGreedyStrategicEnabled $true `
    -ScalingMode "VolumeOnly" `
    -TriggerLimitExceedingError $true
```

