# Update-NmeNetAppFilesAutoscaleStatus

**Endpoint:** `PATCH /api/v1/storage/netapp-files/{subscriptionId}/{resourceGroupName}/{accountName}/{poolName}/{volumeName}/auto-scale`

## Description

Enable or disable  Net App Files auto-scale

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AccountName | String | Yes |  |
| PoolName | String | Yes |  |
| ResourceGroupName | String | Yes |  |
| SubscriptionId | String | Yes |  |
| VolumeName | String | Yes |  |
| BasicMaxSizeBuffer | Int32 | No |  |
| BasicMaxSizeLimit | Int32 | No |  |
| BasicMinSizeBuffer | Double | No |  |
| BasicNonGreedyStrategicEnabled | SwitchParameter | No |  |
| BasicScalingMode | String | No | Values: `VolumeOnly`, `VolumeAndPool` |
| BasicTriggerLimitExceedingError | SwitchParameter | No |  |
| IsEnabled | SwitchParameter | No |  |
| PreStageIsEnabled | SwitchParameter | No |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkTimeSets | [INetAppFilesWorkTimeSet[]](../models/New-NmeNetAppFilesWorkTimeSetModel.md) | No |  |
| ScalingIsEnabled | SwitchParameter | No |  |
| ScalingScaleInBy | Int32 | No |  |
| ScalingScaleInInterval | Int32 | No |  |
| ScalingScaleInLowLatency | Int32 | No |  |
| ScalingScaleOutBy | Int32 | No |  |
| ScalingScaleOutHighLatency | Int32 | No |  |
| ScalingScaleOutInterval | Int32 | No |  |
| ScalingTrigger | String | No | Values: `AvgReadLatency`, `AvgWriteLatency`, `AvgReadOrWriteLatency` |
| Unit | String | No | Values: `Percent`, `SizeGb`, `SizeTb` |

## Examples

### Example 1: Enable auto-scale

```powershell
Update-NmeNetAppFilesAutoscaleStatus `
    -AccountName "<AccountName>" `
    -PoolName "<PoolName>" `
    -ResourceGroupName "<ResourceGroupName>" `
    -SubscriptionId "<SubscriptionId>" `
    -VolumeName "<VolumeName>" `
    -IsEnabled
```

### Example 2: Update single property

```powershell
Update-NmeNetAppFilesAutoscaleStatus `
    -AccountName "<AccountName>" `
    -PoolName "<PoolName>" `
    -ResourceGroupName "<ResourceGroupName>" `
    -SubscriptionId "<SubscriptionId>" `
    -VolumeName "<VolumeName>" `
    -ScalingScaleOutBy 15
```

