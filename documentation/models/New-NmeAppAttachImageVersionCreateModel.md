# New-NmeAppAttachImageVersionCreateModel

Create an in-memory object for AppAttachImageVersionCreate.

**Output Type:** `AppAttachImageVersionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| PackageLink | String | Yes |  |
| Version | String | Yes |  |
| Extension | String | No |  |
| StorageLocationIds | Object | No |  |

## Usage

```powershell
$model = New-NmeAppAttachImageVersionCreateModel `
    -PackageLink "<PackageLink>" `
    -Version "<Version>"
```

