# New-NmeMsixPackage

**Endpoint:** `POST /api/v1/app-attach/package-msix`

## Description

Upload MSIX package

If PackageLinks contains URL of file in the same file share as location, no uploading and downloading will be performed. In other way file will be downloaded and then uploaded to the location.
Default failure policy values are: cleanup = false, restart = false incase not specified
If SubscriptionId and/or ResourceGroup is not specified, default resource group will be used
If NetworkId and/or Subnet is not specified, default network will be used

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageName | String | Yes |  |
| LocationId | String | Yes |  |
| PackageLinks | String[] | Yes |  |
| TempVMParamDiskSize | Int32 | Yes |  |
| TempVMParamImage | String | Yes |  |
| TempVMParamStorageType | String | Yes |  |
| TempVMParamVmsize | String | Yes |  |
| VMIdName | String | Yes |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |
| StorageLocationIds | String[] | No |  |
| TempVMParamDiskPerformanceTier | String | No |  |
| TempVMParamNetworkId | String | No |  |
| TempVMParamSubnet | String | No |  |
| VMIdResourceGroup | String | No |  |
| VMIdSubscriptionId | String | No |  |

## Examples

```powershell
New-NmeMsixPackage `
    -ImageName "ImageName" `
    -LocationId "668a4ebd-ca45-4149-b352-a1f987049450" `
    -PackageLinks @("link to a file in somewhere") `
    -TempVMParamDiskSize 0 `
    -TempVMParamImage "<TempVMParamImage>" `
    -TempVMParamStorageType "<TempVMParamStorageType>" `
    -TempVMParamVmsize "<TempVMParamVmsize>" `
    -VMIdName "<VMIdName>"
```

