# New-NmeAzureFilesScalingConfigUpdateModel

Create an in-memory object for AzureFilesScalingConfigUpdate.

**Output Type:** `AzureFilesScalingConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ScaleInBy | Int32 | No |  |
| ScaleInInterval | Int32 | No |  |
| ScaleInLowLatency | Int32 | No |  |
| ScaleOutBy | Int32 | No |  |
| ScaleOutHighLatency | Int32 | No |  |
| ScaleOutInterval | Int32 | No |  |
| TransactionThreshold | Int32 | No |  |
| Trigger | String | No | Values: `MaxSuccessServerLatency`, `AvgSuccessServerLatency` |

## Usage

```powershell
$model = New-NmeAzureFilesScalingConfigUpdateModel `
    -ScaleInBy 0 `
    -ScaleInInterval 0 `
    -ScaleInLowLatency 0 `
    -ScaleOutBy 0 `
    -ScaleOutHighLatency 0 `
    -ScaleOutInterval 0 `
    -TransactionThreshold 0 `
    -Trigger "MaxSuccessServerLatency"
```

