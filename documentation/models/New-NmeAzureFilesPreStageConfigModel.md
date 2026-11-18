# New-NmeAzureFilesPreStageConfigModel

Create an in-memory object for AzureFilesPreStageConfig.

**Output Type:** `AzureFilesPreStageConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | Yes |  |
| Iops | Int32 | No |  |
| QuotaBuffer | Int32 | No |  |
| Throughput | Int32 | No |  |
| TimezoneId | String | No |  |
| WorkDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$model = New-NmeAzureFilesPreStageConfigModel `
    -IsEnabled $true
```

