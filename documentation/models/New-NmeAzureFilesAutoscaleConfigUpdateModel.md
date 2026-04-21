# New-NmeAzureFilesAutoscaleConfigUpdateModel

Create an in-memory object for AzureFilesAutoscaleConfigUpdate.

**Output Type:** `AzureFilesAutoscaleConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BasicMaxQuotaBuffer | Int32 | No |  |
| BasicMaxQuotaLimitGb | Int32 | No |  |
| BasicMinQuotaBuffer | Int32 | No |  |
| IsEnabled | Boolean | No |  |
| PreStageIsEnabled | Boolean | No |  |
| PreStageQuotaBuffer | Int32 | No |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScalingScaleInBy | Int32 | No |  |
| ScalingScaleInInterval | Int32 | No |  |
| ScalingScaleInLowLatency | Int32 | No |  |
| ScalingScaleOutBy | Int32 | No |  |
| ScalingScaleOutHighLatency | Int32 | No |  |
| ScalingScaleOutInterval | Int32 | No |  |
| ScalingTransactionThreshold | Int32 | No |  |
| ScalingTrigger | String | No | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |
| Unit | String | No | Values: `Percent`, `SizeGb`, `SizeTb` |

## Usage

```powershell
$model = New-NmeAzureFilesAutoscaleConfigUpdateModel `
    -BasicMaxQuotaBuffer 0 `
    -BasicMaxQuotaLimitGb 0 `
    -BasicMinQuotaBuffer 0 `
    -IsEnabled $true `
    -PreStageIsEnabled $true `
    -PreStageQuotaBuffer 0 `
    -PreStageTimezoneId "<PreStageTimezoneId>" `
    -PreStageWorkDays "0" `
    -ScalingScaleInBy 0 `
    -ScalingScaleInInterval 0 `
    -ScalingScaleInLowLatency 0 `
    -ScalingScaleOutBy 0 `
    -ScalingScaleOutHighLatency 0 `
    -ScalingScaleOutInterval 0 `
    -ScalingTransactionThreshold 0 `
    -ScalingTrigger "MaxSuccessServerLatency" `
    -Unit "Percent"
```

