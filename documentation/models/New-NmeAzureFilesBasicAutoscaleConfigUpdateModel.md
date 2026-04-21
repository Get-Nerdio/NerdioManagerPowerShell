# New-NmeAzureFilesBasicAutoscaleConfigUpdateModel

Create an in-memory object for AzureFilesBasicAutoscaleConfigUpdate.

**Output Type:** `AzureFilesBasicAutoscaleConfigUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| MaxQuotaBuffer | Int32 | No |  |
| MaxQuotaLimitGb | Int32 | No |  |
| MinQuotaBuffer | Int32 | No |  |

## Usage

```powershell
$model = New-NmeAzureFilesBasicAutoscaleConfigUpdateModel `
    -MaxQuotaBuffer 0 `
    -MaxQuotaLimitGb 0 `
    -MinQuotaBuffer 0
```

