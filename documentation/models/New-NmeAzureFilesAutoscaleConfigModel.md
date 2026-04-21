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
| ScalingScaleInBy | Int32 | Yes |  |
| ScalingScaleInInterval | Int32 | Yes |  |
| ScalingScaleInLowLatency | Int32 | Yes |  |
| ScalingScaleOutBy | Int32 | Yes |  |
| ScalingScaleOutHighLatency | Int32 | Yes |  |
| ScalingScaleOutInterval | Int32 | Yes |  |
| ScalingTransactionThreshold | Int32 | Yes |  |
| ScalingTrigger | String | Yes | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |
| Unit | String | Yes | Values: `Percent`, `SizeGb`, `SizeTb` |
| PreStageQuotaBuffer | Int32 | No |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$model = New-NmeAzureFilesAutoscaleConfigModel `
    -BasicMaxQuotaBuffer 0 `
    -BasicMaxQuotaLimitGb 0 `
    -BasicMinQuotaBuffer 0 `
    -IsEnabled $true `
    -PreStageIsEnabled $true `
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

