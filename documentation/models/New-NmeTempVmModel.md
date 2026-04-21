# New-NmeTempVmModel

Create an in-memory object for TempVm.

**Output Type:** `TempVm`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DiskSize | Int32 | Yes |  |
| Image | String | Yes |  |
| StorageType | String | Yes |  |
| VMIdName | String | Yes |  |
| VMSize | String | Yes |  |
| DiskPerformanceTier | String | No |  |
| NetworkId | String | No |  |
| Subnet | String | No |  |
| VMIdResourceGroup | String | No |  |
| VMIdSubscriptionId | String | No |  |

## Usage

```powershell
$model = New-NmeTempVmModel `
    -DiskSize 0 `
    -Image "<Image>" `
    -StorageType "<StorageType>" `
    -VMIdName "<VMIdName>" `
    -VMSize "<VMSize>"
```

