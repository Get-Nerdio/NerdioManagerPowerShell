# New-NmeSessionHostCreateParamsModel

Create an in-memory object for SessionHostCreateParams.

**Output Type:** `SessionHostCreateParams`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostDiskSize | Int32 | Yes |  |
| HostHasEphemeralOSDisk | Boolean | Yes |  |
| HostImage | String | Yes |  |
| HostNetworkId | String | Yes |  |
| HostStorageType | String | Yes |  |
| HostSubnet | String | Yes |  |
| HostVMSize | String | Yes |  |
| VMIdAddSuffix | Boolean | Yes |  |
| VMIdName | String | Yes |  |
| VMIdResourceGroup | String | Yes |  |
| VMIdSubscriptionId | String | Yes |  |
| HostDiskPerformanceTier | String | No |  |
| HostEphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| HostsCount | Int32 | No |  |
| Tags | ISessionHostCreateParamsTags | No |  |
| UserToAssign | String | No |  |

## Usage

```powershell
$model = New-NmeSessionHostCreateParamsModel `
    -HostDiskSize 0 `
    -HostHasEphemeralOSDisk $true `
    -HostImage "<HostImage>" `
    -HostNetworkId "<HostNetworkId>" `
    -HostStorageType "<HostStorageType>" `
    -HostSubnet "<HostSubnet>" `
    -HostVMSize "<HostVMSize>" `
    -VMIdAddSuffix $true `
    -VMIdName "<VMIdName>" `
    -VMIdResourceGroup "<VMIdResourceGroup>" `
    -VMIdSubscriptionId "<VMIdSubscriptionId>"
```

