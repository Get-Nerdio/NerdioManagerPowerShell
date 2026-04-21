# New-NmeHostPoolReimageRunModel

Create an in-memory object for HostPoolReimageRun.

**Output Type:** `HostPoolReimageRun`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConcurrencyMaxFailedTasks | Int32 | No |  |
| ConcurrencyTasks | Int32 | No |  |
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |
| MessagingDeactivateBeforeOperation | Boolean | No |  |
| MessagingDelayMinutes | Int32 | No |  |
| MessagingLogOffAggressiveness | String | No | Values: `Force`, `Wait` |
| MessagingMessage | String | No |  |
| MessagingTimeoutInDays | Int32 | No |  |
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
$model = New-NmeHostPoolReimageRunModel `
    -ConcurrencyMaxFailedTasks 0 `
    -ConcurrencyTasks 0 `
    -FailurePolicyCleanup $true `
    -FailurePolicyRestart $true `
    -MessagingDeactivateBeforeOperation $true `
    -MessagingDelayMinutes 0 `
    -MessagingLogOffAggressiveness "Force" `
    -MessagingMessage "<MessagingMessage>" `
    -MessagingTimeoutInDays 0 `
    -ReimageParamDiskPerformanceTier "<ReimageParamDiskPerformanceTier>" `
    -ReimageParamDiskSize 0 `
    -ReimageParamEphemeralOSDiskPlacement "CacheDisk" `
    -ReimageParamHasEphemeralOSDisk $true `
    -ReimageParamImage "<ReimageParamImage>" `
    -ReimageParamSetToDrainModeWhileProcessing $true `
    -ReimageParamStorageType "<ReimageParamStorageType>" `
    -ReimageParamVMSize "<ReimageParamVMSize>"
```

