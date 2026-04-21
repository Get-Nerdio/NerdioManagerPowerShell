# New-NmeAzureFilesScalingConfigModel

Create an in-memory object for AzureFilesScalingConfig.

**Output Type:** `AzureFilesScalingConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScaleInBy | Int32 | Yes |  |
| ScaleInInterval | Int32 | Yes |  |
| ScaleInLowLatency | Int32 | Yes |  |
| ScaleOutBy | Int32 | Yes |  |
| ScaleOutHighLatency | Int32 | Yes |  |
| ScaleOutInterval | Int32 | Yes |  |
| TransactionThreshold | Int32 | Yes |  |
| Trigger | String | Yes | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |

## Usage

```powershell
$model = New-NmeAzureFilesScalingConfigModel `
    -ScaleInBy 0 `
    -ScaleInInterval 0 `
    -ScaleInLowLatency 0 `
    -ScaleOutBy 0 `
    -ScaleOutHighLatency 0 `
    -ScaleOutInterval 0 `
    -TransactionThreshold 0 `
    -Trigger "MaxSuccessServerLatency"
```

