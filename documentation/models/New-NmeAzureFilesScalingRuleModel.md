# New-NmeAzureFilesScalingRuleModel

Create an in-memory object for AzureFilesScalingRule.

**Output Type:** `AzureFilesScalingRule`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScaleInBy | Int32 | Yes |  |
| ScaleInInterval | Int32 | Yes |  |
| ScaleInLowLatency | Int32 | Yes |  |
| ScaleOutBy | Int32 | Yes |  |
| ScaleOutHighLatency | Int32 | Yes |  |
| ScaleOutInterval | Int32 | Yes |  |
| Target | String | Yes | Values: `Quota`, `ProvisionedIops`, `ProvisionedThroughput` |
| TransactionThreshold | Int32 | Yes |  |
| Trigger | String | Yes | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |

## Usage

```powershell
$model = New-NmeAzureFilesScalingRuleModel `
    -ScaleInBy 0 `
    -ScaleInInterval 0 `
    -ScaleInLowLatency 0 `
    -ScaleOutBy 0 `
    -ScaleOutHighLatency 0 `
    -ScaleOutInterval 0 `
    -Target "Quota" `
    -TransactionThreshold 0 `
    -Trigger "MaxSuccessServerLatency"
```

