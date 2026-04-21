# New-NmeNetAppFilesAutoscaleConfigUpdateModel

Create an in-memory object for NetAppFilesAutoscaleConfigUpdate.

**Output Type:** `NetAppFilesAutoscaleConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BasicMaxSizeBuffer | Int32 | No |  |
| BasicMaxSizeLimit | Int32 | No |  |
| BasicMinSizeBuffer | Double | No |  |
| BasicNonGreedyStrategicEnabled | Boolean | No |  |
| BasicScalingMode | String | No | Values: `VolumeOnly`, `VolumeAndPool` |
| BasicTriggerLimitExceedingError | Boolean | No |  |
| IsEnabled | Boolean | No |  |
| PreStageIsEnabled | Boolean | No |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkTimeSets | [INetAppFilesWorkTimeSet[]](New-NmeNetAppFilesWorkTimeSetModel.md) | No | Pass as array. |
| ScalingIsEnabled | Boolean | No |  |
| ScalingScaleInBy | Int32 | No |  |
| ScalingScaleInInterval | Int32 | No |  |
| ScalingScaleInLowLatency | Int32 | No |  |
| ScalingScaleOutBy | Int32 | No |  |
| ScalingScaleOutHighLatency | Int32 | No |  |
| ScalingScaleOutInterval | Int32 | No |  |
| ScalingTrigger | String | No | Values: `AvgReadLatency`, `AvgWriteLatency`, `AvgReadOrWriteLatency` |
| Unit | String | No | Values: `Percent`, `SizeGb`, `SizeTb` |

## Usage

```powershell
$preStageWorkTimeSets = New-NmeNetAppFilesWorkTimeSetModel `
    -EndTimeHour 0 `
    -MaxSize 0 `
    -MinSize 0 `
    -StartTimeHour 0 `
    -WorkDays "0"
$model = New-NmeNetAppFilesAutoscaleConfigUpdateModel `
    -BasicMaxSizeBuffer 0 `
    -BasicMaxSizeLimit 0 `
    -BasicMinSizeBuffer 0 `
    -BasicNonGreedyStrategicEnabled $true `
    -BasicScalingMode "VolumeOnly" `
    -BasicTriggerLimitExceedingError $true `
    -IsEnabled $true `
    -PreStageIsEnabled $true `
    -PreStageTimezoneId "<PreStageTimezoneId>" `
    -PreStageWorkTimeSets $preStageWorkTimeSets `
    -ScalingIsEnabled $true `
    -ScalingScaleInBy 0 `
    -ScalingScaleInInterval 0 `
    -ScalingScaleInLowLatency 0 `
    -ScalingScaleOutBy 0 `
    -ScalingScaleOutHighLatency 0 `
    -ScalingScaleOutInterval 0 `
    -ScalingTrigger "AvgReadLatency" `
    -Unit "Percent"
```

