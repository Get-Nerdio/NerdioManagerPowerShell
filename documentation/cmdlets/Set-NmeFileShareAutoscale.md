# Set-NmeFileShareAutoscale

**Endpoint:** `PUT /api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/auto-scale`

## Description

Update Azure Files auto-scale

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AccountName | String | Yes |  |
| BasicMaxQuotaBuffer | Int32 | Yes |  |
| BasicMaxQuotaLimitGb | Int32 | Yes |  |
| BasicMinQuotaBuffer | Int32 | Yes |  |
| IsEnabled | SwitchParameter | Yes |  |
| PreStageIsEnabled | SwitchParameter | Yes |  |
| ResourceGroup | String | Yes |  |
| ScalingScaleInBy | Int32 | Yes |  |
| ScalingScaleInInterval | Int32 | Yes |  |
| ScalingScaleInLowLatency | Int32 | Yes |  |
| ScalingScaleOutBy | Int32 | Yes |  |
| ScalingScaleOutHighLatency | Int32 | Yes |  |
| ScalingScaleOutInterval | Int32 | Yes |  |
| ScalingTransactionThreshold | Int32 | Yes |  |
| ScalingTrigger | String | Yes | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |
| ShareName | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Unit | String | Yes | Values: `Percent`, `SizeGb`, `SizeTb` |
| PreStageQuotaBuffer | Int32 | No |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkDays | Int32[] | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Examples

```powershell
Set-NmeFileShareAutoscale `
    -AccountName "<AccountName>" `
    -BasicMaxQuotaBuffer 0 `
    -BasicMaxQuotaLimitGb 0 `
    -BasicMinQuotaBuffer 0 `
    -IsEnabled `
    -PreStageIsEnabled `
    -ResourceGroup "<ResourceGroup>" `
    -ScalingScaleInBy 0 `
    -ScalingScaleInInterval 0 `
    -ScalingScaleInLowLatency 0 `
    -ScalingScaleOutBy 0 `
    -ScalingScaleOutHighLatency 0 `
    -ScalingScaleOutInterval 0 `
    -ScalingTransactionThreshold 0 `
    -ScalingTrigger "MaxSuccessServerLatency" `
    -ShareName "<ShareName>" `
    -SubscriptionId "<SubscriptionId>" `
    -Unit "SizeGb"
```

