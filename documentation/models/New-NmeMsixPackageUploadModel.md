# New-NmeMsixPackageUploadModel

Create an in-memory object for MsixPackageUpload.

**Output Type:** `MsixPackageUpload`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ImageName | String | Yes |  |
| LocationId | String | Yes |  |
| PackageLinks | Object | Yes |  |
| TempVMParamDiskSize | Int32 | Yes |  |
| TempVMParamImage | String | Yes |  |
| TempVMParamStorageType | String | Yes |  |
| TempVMParamVmsize | String | Yes |  |
| VMIdName | String | Yes |  |
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |
| StorageLocationIds | Object | No |  |
| TempVMParamDiskPerformanceTier | String | No |  |
| TempVMParamNetworkId | String | No |  |
| TempVMParamSubnet | String | No |  |
| VMIdResourceGroup | String | No |  |
| VMIdSubscriptionId | String | No |  |

## Usage

```powershell
$model = New-NmeMsixPackageUploadModel `
    -ImageName "<ImageName>" `
    -LocationId "<LocationId>" `
    -PackageLinks "<PackageLinks>" `
    -TempVMParamDiskSize 0 `
    -TempVMParamImage "<TempVMParamImage>" `
    -TempVMParamStorageType "<TempVMParamStorageType>" `
    -TempVMParamVmsize "<TempVMParamVmsize>" `
    -VMIdName "<VMIdName>"
```

