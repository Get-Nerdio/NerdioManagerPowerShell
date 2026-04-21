# Set-NmeNetAppFilesAutoscale

**Endpoint:** `PUT /api/v1/storage/netapp-files/{subscriptionId}/{resourceGroupName}/{accountName}/{poolName}/{volumeName}/auto-scale`

## Description

Update Net App Files auto-scale

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AccountName | String | Yes |  |
| BasicMaxSizeBuffer | Double | Yes |  |
| BasicMaxSizeLimit | Int32 | Yes |  |
| BasicMinSizeBuffer | Double | Yes |  |
| BasicNonGreedyStrategicEnabled | SwitchParameter | Yes |  |
| BasicScalingMode | String | Yes | Values: `VolumeOnly`, `VolumeAndPool` |
| BasicTriggerLimitExceedingError | SwitchParameter | Yes |  |
| IsEnabled | SwitchParameter | Yes |  |
| PoolName | String | Yes |  |
| PreStageIsEnabled | SwitchParameter | Yes |  |
| ResourceGroupName | String | Yes |  |
| ScalingIsEnabled | SwitchParameter | Yes |  |
| SubscriptionId | String | Yes |  |
| Unit | String | Yes | Values: `Percent`, `SizeGb`, `SizeTb` |
| VolumeName | String | Yes |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkTimeSets | [INetAppFilesWorkTimeSet[]](../models/New-NmeNetAppFilesWorkTimeSetModel.md) | No |  |
| ScalingScaleInBy | Int32 | No |  |
| ScalingScaleInInterval | Int32 | No |  |
| ScalingScaleInLowLatency | Int32 | No |  |
| ScalingScaleOutBy | Int32 | No |  |
| ScalingScaleOutHighLatency | Int32 | No |  |
| ScalingScaleOutInterval | Int32 | No |  |
| ScalingTrigger | String | No | Values: `AvgReadLatency`, `AvgWriteLatency`, `AvgReadOrWriteLatency` |

## Examples

```powershell
Set-NmeNetAppFilesAutoscale `
    -AccountName "<AccountName>" `
    -BasicMaxSizeBuffer "<BasicMaxSizeBuffer>" `
    -BasicMaxSizeLimit 0 `
    -BasicMinSizeBuffer "<BasicMinSizeBuffer>" `
    -BasicNonGreedyStrategicEnabled `
    -BasicScalingMode "VolumeOnly" `
    -BasicTriggerLimitExceedingError `
    -IsEnabled `
    -PoolName "<PoolName>" `
    -PreStageIsEnabled `
    -ResourceGroupName "<ResourceGroupName>" `
    -ScalingIsEnabled `
    -SubscriptionId "<SubscriptionId>" `
    -Unit "SizeTb" `
    -VolumeName "<VolumeName>"
```

