# Invoke-NmeHostPoolReimage

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/reimage`

## Description

Re-image ARM host pool session hosts' VMs

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| ConcurrencyMaxFailedTasks | Int32 | No |  |
| ConcurrencyTasks | Int32 | No |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |
| MessagingDeactivateBeforeOperation | SwitchParameter | No |  |
| MessagingDelayMinutes | Int32 | No |  |
| MessagingLogOffAggressiveness | String | No | Values: `Force`, `Wait` |
| MessagingMessage | String | No |  |
| MessagingTimeoutInDays | Int32 | No |  |
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
Invoke-NmeHostPoolReimage `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>"
```

