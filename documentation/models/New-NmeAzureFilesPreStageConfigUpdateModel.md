# New-NmeAzureFilesPreStageConfigUpdateModel

Create an in-memory object for AzureFilesPreStageConfigUpdate.

**Output Type:** `AzureFilesPreStageConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| IsEnabled | Boolean | No |  |
| QuotaBuffer | Int32 | No |  |
| TimezoneId | String | No |  |
| WorkDays | Object | No | Values: `0`, `1`, `2`, `3`, `4`, `5`, `6` |

## Usage

```powershell
$model = New-NmeAzureFilesPreStageConfigUpdateModel `
    -IsEnabled $true `
    -QuotaBuffer 0 `
    -TimezoneId "<TimezoneId>" `
    -WorkDays "0"
```

