# New-NmeAzureFilesAutoscaleConfigUpdateModel

Create an in-memory object for AzureFilesAutoscaleConfigUpdate.

**Output Type:** `AzureFilesAutoscaleConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BasicMaxQuotaBuffer | Int32 | No |  |
| BasicMaxQuotaLimitGb | Int32 | No |  |
| BasicMinQuotaBuffer | Int32 | No |  |
| IopBoundMax | Int32 | No |  |
| IopBoundMin | Int32 | No |  |
| IsEnabled | Boolean | No |  |
| PreStageIops | Int32 | No |  |
| PreStageIsEnabled | Boolean | No |  |
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
| Unit | String | No | Values: `Percent`, `SizeGb`, `SizeTb` |

## Usage

```powershell
$scalingRules = New-NmeAzureFilesScalingRuleModel `
    -ScaleInBy 0 `
    -ScaleInInterval 0 `
    -ScaleInLowLatency 0 `
    -ScaleOutBy 0 `
    -ScaleOutHighLatency 0 `
    -ScaleOutInterval 0 `
    -Target "Quota" `
    -TransactionThreshold 0 `
    -Trigger "MaxSuccessServerLatency"
$model = New-NmeAzureFilesAutoscaleConfigUpdateModel `
    -BasicMaxQuotaBuffer 0 `
    -BasicMaxQuotaLimitGb 0 `
    -BasicMinQuotaBuffer 0 `
    -IopBoundMax 0 `
    -IopBoundMin 0 `
    -IsEnabled $true `
    -PreStageIops 0 `
    -PreStageIsEnabled $true `
    -PreStageQuotaBuffer 0 `
    -PreStageThroughput 0 `
    -PreStageTimezoneId "<PreStageTimezoneId>" `
    -PreStageWorkDays "0" `
    -ScalingRules $scalingRules `
    -ScalingScaleInBy 0 `
    -ScalingScaleInInterval 0 `
    -ScalingScaleInLowLatency 0 `
    -ScalingScaleOutBy 0 `
    -ScalingScaleOutHighLatency 0 `
    -ScalingScaleOutInterval 0 `
    -ScalingTransactionThreshold 0 `
    -ScalingTrigger "MaxSuccessServerLatency" `
    -StorageType "AzureFiles" `
    -ThroughputBoundMax 0 `
    -ThroughputBoundMin 0 `
    -Unit "Percent"
```

