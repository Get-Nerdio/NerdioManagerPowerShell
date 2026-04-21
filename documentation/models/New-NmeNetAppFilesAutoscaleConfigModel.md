# New-NmeNetAppFilesAutoscaleConfigModel

Create an in-memory object for NetAppFilesAutoscaleConfig.

**Output Type:** `NetAppFilesAutoscaleConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BasicMaxSizeBuffer | Double | Yes |  |
| BasicMaxSizeLimit | Int32 | Yes |  |
| BasicMinSizeBuffer | Double | Yes |  |
| BasicNonGreedyStrategicEnabled | Boolean | Yes |  |
| BasicScalingMode | String | Yes | Values: `VolumeOnly`, `VolumeAndPool` |
| BasicTriggerLimitExceedingError | Boolean | Yes |  |
| IsEnabled | Boolean | Yes |  |
| PreStageIsEnabled | Boolean | Yes |  |
| ScalingIsEnabled | Boolean | Yes |  |
| Unit | String | Yes | Values: `Percent`, `SizeGb`, `SizeTb` |
| PreStageTimezoneId | String | No |  |
| PreStageWorkTimeSets | [INetAppFilesWorkTimeSet[]](New-NmeNetAppFilesWorkTimeSetModel.md) | No | Pass as array. |
| ScalingScaleInBy | Int32 | No |  |
| ScalingScaleInInterval | Int32 | No |  |
| ScalingScaleInLowLatency | Int32 | No |  |
| ScalingScaleOutBy | Int32 | No |  |
| ScalingScaleOutHighLatency | Int32 | No |  |
| ScalingScaleOutInterval | Int32 | No |  |
| ScalingTrigger | String | No | Values: `AvgReadLatency`, `AvgWriteLatency`, `AvgReadOrWriteLatency` |

## Usage

```powershell
$model = New-NmeNetAppFilesAutoscaleConfigModel `
    -BasicMaxSizeBuffer 0 `
    -BasicMaxSizeLimit 0 `
    -BasicMinSizeBuffer 0 `
    -BasicNonGreedyStrategicEnabled $true `
    -BasicScalingMode "VolumeOnly" `
    -BasicTriggerLimitExceedingError $true `
    -IsEnabled $true `
    -PreStageIsEnabled $true `
    -ScalingIsEnabled $true `
    -Unit "Percent"
```

