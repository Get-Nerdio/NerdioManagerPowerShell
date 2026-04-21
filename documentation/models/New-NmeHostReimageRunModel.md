# New-NmeHostReimageRunModel

Create an in-memory object for HostReimageRun.

**Output Type:** `HostReimageRun`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |
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
$model = New-NmeHostReimageRunModel `
    -FailurePolicyCleanup $true `
    -FailurePolicyRestart $true `
    -ReimageParamDiskPerformanceTier "<ReimageParamDiskPerformanceTier>" `
    -ReimageParamDiskSize 0 `
    -ReimageParamEphemeralOSDiskPlacement "CacheDisk" `
    -ReimageParamHasEphemeralOSDisk $true `
    -ReimageParamImage "<ReimageParamImage>" `
    -ReimageParamSetToDrainModeWhileProcessing $true `
    -ReimageParamStorageType "<ReimageParamStorageType>" `
    -ReimageParamVMSize "<ReimageParamVMSize>"
```

