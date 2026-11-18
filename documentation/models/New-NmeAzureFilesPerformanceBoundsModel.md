# New-NmeAzureFilesPerformanceBoundsModel

Create an in-memory object for AzureFilesPerformanceBounds.

**Output Type:** `AzureFilesPerformanceBounds`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Max | Int32 | Yes |  |
| Min | Int32 | Yes |  |

## Usage

```powershell
$model = New-NmeAzureFilesPerformanceBoundsModel `
    -Max 0 `
    -Min 0
```

