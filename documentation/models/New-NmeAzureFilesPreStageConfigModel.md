# New-NmeAzureFilesPreStageConfigModel

Create an in-memory object for AzureFilesPreStageConfig.

**Output Type:** `AzureFilesPreStageConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | Yes |  |
| QuotaBuffer | Int32 | No |  |
| TimezoneId | String | No |  |
| WorkDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$model = New-NmeAzureFilesPreStageConfigModel `
    -IsEnabled $true
```

