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
| ShareName | String | Yes |  |
| SubscriptionId | String | Yes |  |
| Unit | String | Yes | Values: `Percent`, `SizeGb`, `SizeTb` |
| IopBoundMax | Int32 | No |  |
| IopBoundMin | Int32 | No |  |
| PreStageIops | Int32 | No | Pre-stage provisioned IOPS. |
| PreStageQuotaBuffer | Int32 | No | Pre-stage quota buffer. |
| PreStageThroughput | Int32 | No | Pre-stage provisioned throughput. |
| PreStageTimezoneId | String | No |  |
| PreStageWorkDays | Int32[] | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |
| ScalingRules | [IAzureFilesScalingRule[]](../models/New-NmeAzureFilesScalingRuleModel.md) | No | Scaling rules. |
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

## Examples

### Example 1: Provisioned V1

```powershell
$scalingRules = New-NmeAzureFilesScalingRuleModel `
    -ScaleInBy 20 `
    -ScaleInInterval 15 `
    -ScaleInLowLatency 10 `
    -ScaleOutBy 10 `
    -ScaleOutHighLatency 20 `
    -ScaleOutInterval 5 `
    -Target "Quota" `
    -TransactionThreshold 100 `
    -Trigger "AvgSuccessServerLatency"
Set-NmeFileShareAutoscale `
    -AccountName "<AccountName>" `
    -BasicMaxQuotaBuffer 100 `
    -BasicMaxQuotaLimitGb 102400 `
    -BasicMinQuotaBuffer 10 `
    -ResourceGroup "<ResourceGroup>" `
    -ShareName "<ShareName>" `
    -SubscriptionId "<SubscriptionId>" `
    -Unit "SizeGb" `
    -PreStageQuotaBuffer 50 `
    -PreStageTimezoneId "Central Standard Time" `
    -PreStageWorkDays @(1, 2, 3, 4, 5) `
    -ScalingRules @($scalingRules) `
    -StorageType "AzureFiles"
```

### Example 2: Provisioned V2

```powershell
$scalingRules = New-NmeAzureFilesScalingRuleModel `
    -ScaleInBy 100 `
    -ScaleInInterval 15 `
    -ScaleInLowLatency 10 `
    -ScaleOutBy 100 `
    -ScaleOutHighLatency 20 `
    -ScaleOutInterval 5 `
    -Target "ProvisionedIops" `
    -TransactionThreshold 100 `
    -Trigger "AvgSuccessServerLatency"
Set-NmeFileShareAutoscale `
    -AccountName "<AccountName>" `
    -BasicMaxQuotaBuffer 100 `
    -BasicMaxQuotaLimitGb 1024 `
    -BasicMinQuotaBuffer 10 `
    -ResourceGroup "<ResourceGroup>" `
    -ShareName "<ShareName>" `
    -SubscriptionId "<SubscriptionId>" `
    -Unit "SizeGb" `
    -PreStageIops 4000 `
    -PreStageThroughput 150 `
    -PreStageTimezoneId "Central Standard Time" `
    -PreStageWorkDays @(1, 2, 3, 4, 5) `
    -ScalingRules @($scalingRules) `
    -StorageType "AzureFilesV2" `
    -ThroughputBoundMax 300 `
    -ThroughputBoundMin 100
```

