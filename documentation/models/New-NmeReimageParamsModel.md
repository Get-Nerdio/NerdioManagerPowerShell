# New-NmeReimageParamsModel

Create an in-memory object for ReimageParams.

**Output Type:** `ReimageParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| DiskPerformanceTier | String | No |  |
| DiskSize | Int32 | No |  |
| EphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| HasEphemeralOSDisk | Boolean | No |  |
| Image | String | No |  |
| SetToDrainModeWhileProcessing | Boolean | No |  |
| StorageType | String | No |  |
| VMSize | String | No |  |

## Usage

```powershell
$model = New-NmeReimageParamsModel `
    -DiskPerformanceTier "<DiskPerformanceTier>" `
    -DiskSize 0 `
    -EphemeralOSDiskPlacement "CacheDisk" `
    -HasEphemeralOSDisk $true `
    -Image "<Image>" `
    -SetToDrainModeWhileProcessing $true `
    -StorageType "<StorageType>" `
    -VMSize "<VMSize>"
```

