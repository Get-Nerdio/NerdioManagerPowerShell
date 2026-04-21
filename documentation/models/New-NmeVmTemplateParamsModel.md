# New-NmeVmTemplateParamsModel

Create an in-memory object for VmTemplateParams.

**Output Type:** `VmTemplateParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DiskPerformanceTier | String | No |  |
| DiskSize | Int32 | No |  |
| EphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| HasEphemeralOSDisk | Boolean | No |  |
| Image | String | No |  |
| NetworkId | String | No |  |
| Prefix | String | No |  |
| ResourceGroupId | String | No |  |
| Size | String | No |  |
| StorageType | String | No |  |
| Subnet | String | No |  |

## Usage

```powershell
$model = New-NmeVmTemplateParamsModel `
    -DiskPerformanceTier "<DiskPerformanceTier>" `
    -DiskSize 0 `
    -EphemeralOSDiskPlacement "CacheDisk" `
    -HasEphemeralOSDisk $true `
    -Image "<Image>" `
    -NetworkId "<NetworkId>" `
    -Prefix "<Prefix>" `
    -ResourceGroupId "<ResourceGroupId>" `
    -Size "<Size>" `
    -StorageType "<StorageType>" `
    -Subnet "<Subnet>"
```

