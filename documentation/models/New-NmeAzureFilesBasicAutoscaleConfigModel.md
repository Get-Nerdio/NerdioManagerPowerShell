# New-NmeAzureFilesBasicAutoscaleConfigModel

Create an in-memory object for AzureFilesBasicAutoscaleConfig.

**Output Type:** `AzureFilesBasicAutoscaleConfig`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| MaxQuotaBuffer | Int32 | Yes |  |
| MaxQuotaLimitGb | Int32 | Yes |  |
| MinQuotaBuffer | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeAzureFilesBasicAutoscaleConfigModel `
    -MaxQuotaBuffer 0 `
    -MaxQuotaLimitGb 0 `
    -MinQuotaBuffer 0
```

