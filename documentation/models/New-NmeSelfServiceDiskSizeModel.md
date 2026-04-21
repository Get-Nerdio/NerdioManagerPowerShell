# New-NmeSelfServiceDiskSizeModel

Create an in-memory object for SelfServiceDiskSize.

**Output Type:** `SelfServiceDiskSize`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| SizeGb | Int32 | Yes |  |
| Sku | String | Yes |  |

## Usage

```powershell
$model = New-NmeSelfServiceDiskSizeModel `
    -SizeGb 0 `
    -Sku "<Sku>"
```

