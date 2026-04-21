# Update-NmeFileShareAutoscaleStatus

**Endpoint:** `PATCH /api/v1/storage/azure-files/{subscriptionId}/{resourceGroup}/{accountName}/{shareName}/auto-scale`

## Description

Enable or disable Azure Files auto-scale

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| AccountName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| ShareName | String | Yes |  |
| SubscriptionId | String | Yes |  |
| BasicMaxQuotaBuffer | Int32 | No |  |
| BasicMaxQuotaLimitGb | Int32 | No |  |
| BasicMinQuotaBuffer | Int32 | No |  |
| IsEnabled | SwitchParameter | No |  |
| PreStageIsEnabled | SwitchParameter | No |  |
| PreStageQuotaBuffer | Int32 | No |  |
| PreStageTimezoneId | String | No |  |
| PreStageWorkDays | Int32[] | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScalingScaleInBy | Int32 | No |  |
| ScalingScaleInInterval | Int32 | No |  |
| ScalingScaleInLowLatency | Int32 | No |  |
| ScalingScaleOutBy | Int32 | No |  |
| ScalingScaleOutHighLatency | Int32 | No |  |
| ScalingScaleOutInterval | Int32 | No |  |
| ScalingTransactionThreshold | Int32 | No |  |
| ScalingTrigger | String | No | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |
| Unit | String | No | Values: `Percent`, `SizeGb`, `SizeTb` |

## Examples

### Example 1: Enable auto-scale

```powershell
Update-NmeFileShareAutoscaleStatus `
    -AccountName "<AccountName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ShareName "<ShareName>" `
    -SubscriptionId "<SubscriptionId>" `
    -IsEnabled
```

### Example 2: Update single property

```powershell
Update-NmeFileShareAutoscaleStatus `
    -AccountName "<AccountName>" `
    -ResourceGroup "<ResourceGroup>" `
    -ShareName "<ShareName>" `
    -SubscriptionId "<SubscriptionId>" `
    -ScalingScaleOutBy 15
```

