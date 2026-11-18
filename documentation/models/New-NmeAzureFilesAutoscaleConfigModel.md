# New-NmeAzureFilesAutoscaleConfigModel

Create an in-memory object for AzureFilesAutoscaleConfig.

**Output Type:** `AzureFilesAutoscaleConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BasicMaxQuotaBuffer | Int32 | Yes |  |
| BasicMaxQuotaLimitGb | Int32 | Yes |  |
| BasicMinQuotaBuffer | Int32 | Yes |  |
| IsEnabled | Boolean | Yes |  |
| PreStageIsEnabled | Boolean | Yes |  |
| Unit | String | Yes | Values: `Percent`, `SizeGb`, `SizeTb` |
| IopBoundMax | Int32 | No |  |
| IopBoundMin | Int32 | No |  |
| PreStageIops | Int32 | No |  |
| PreStageQuotaBuffer | Int32 | No |  |
| PreStageThroughput | Int32 | No |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScalingRules | [IAzureFilesScalingRule[]](New-NmeAzureFilesScalingRuleModel.md) | No | Pass as array. |
| ScalingScaleInBy | Int32 | No |  |
| ScalingScaleInInterval | Int32 | No |  |
| ScalingScaleInLowLatency | Int32 | No |  |
| ScalingScaleOutBy | Int32 | No |  |
| ScalingScaleOutHighLatency | Int32 | No |  |
| ScalingScaleOutInterval | Int32 | No |  |
| ScalingTransactionThreshold | Int32 | No |  |
| ScalingTrigger | String | No | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |
| StorageType | String | No | Values: `AzureFiles`, `AzureFilesV2` |
| ThroughputBoundMax | Int32 | No |  |
| ThroughputBoundMin | Int32 | No |  |

## Usage

```powershell
$model = New-NmeAzureFilesAutoscaleConfigModel `
    -BasicMaxQuotaBuffer 0 `
    -BasicMaxQuotaLimitGb 0 `
    -BasicMinQuotaBuffer 0 `
    -IsEnabled $true `
    -PreStageIsEnabled $true `
    -Unit "Percent"
```

