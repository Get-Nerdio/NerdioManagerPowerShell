# New-NmeHostReimageParamsModel

Create an in-memory object for HostReimageParams.

**Output Type:** `HostReimageParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ReimageParamDiskPerformanceTier | String | No |  |
| ReimageParamDiskSize | Int32 | No |  |
| ReimageParamEphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| ReimageParamHasEphemeralOSDisk | Boolean | No |  |
| ReimageParamImage | String | No |  |
| ReimageParamSetToDrainModeWhileProcessing | Boolean | No |  |
| ReimageParamStorageType | String | No |  |
| ReimageParamVMSize | String | No |  |

## Usage

```powershell
$model = New-NmeHostReimageParamsModel `
    -ReimageParamDiskPerformanceTier "<ReimageParamDiskPerformanceTier>" `
    -ReimageParamDiskSize 0 `
    -ReimageParamEphemeralOSDiskPlacement "CacheDisk" `
    -ReimageParamHasEphemeralOSDisk $true `
    -ReimageParamImage "<ReimageParamImage>" `
    -ReimageParamSetToDrainModeWhileProcessing $true `
    -ReimageParamStorageType "<ReimageParamStorageType>" `
    -ReimageParamVMSize "<ReimageParamVMSize>"
```

