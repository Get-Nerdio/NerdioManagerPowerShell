# Invoke-NmeSessionHostReimage

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostName}/reimage`

## Description

Re-image ARM session host VM

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostName | String | Yes |  |
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |
| ReimageParamDiskPerformanceTier | String | No |  |
| ReimageParamDiskSize | Int32 | No |  |
| ReimageParamEphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| ReimageParamHasEphemeralOSDisk | SwitchParameter | No |  |
| ReimageParamImage | String | No |  |
| ReimageParamSetToDrainModeWhileProcessing | SwitchParameter | No |  |
| ReimageParamStorageType | String | No |  |
| ReimageParamVMSize | String | No |  |

## Examples

```powershell
Invoke-NmeSessionHostReimage `
    -HostName "<HostName>" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

