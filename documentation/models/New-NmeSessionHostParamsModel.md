# New-NmeSessionHostParamsModel

Create an in-memory object for SessionHostParams.

**Output Type:** `SessionHostParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DiskSize | Int32 | Yes |  |
| HasEphemeralOSDisk | Boolean | Yes |  |
| Image | String | Yes |  |
| NetworkId | String | Yes |  |
| StorageType | String | Yes |  |
| Subnet | String | Yes |  |
| VMIdAddSuffix | Boolean | Yes |  |
| VMIdName | String | Yes |  |
| VMIdResourceGroup | String | Yes |  |
| VMIdSubscriptionId | String | Yes |  |
| VMSize | String | Yes |  |
| DiskPerformanceTier | String | No |  |
| EphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |

## Usage

```powershell
$model = New-NmeSessionHostParamsModel `
    -DiskSize 0 `
    -HasEphemeralOSDisk $true `
    -Image "<Image>" `
    -NetworkId "<NetworkId>" `
    -StorageType "<StorageType>" `
    -Subnet "<Subnet>" `
    -VMIdAddSuffix $true `
    -VMIdName "<VMIdName>" `
    -VMIdResourceGroup "<VMIdResourceGroup>" `
    -VMIdSubscriptionId "<VMIdSubscriptionId>" `
    -VMSize "<VMSize>"
```

