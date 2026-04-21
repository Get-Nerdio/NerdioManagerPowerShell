# New-NmeSessionHostCreateModel

Create an in-memory object for SessionHostCreate.

**Output Type:** `SessionHostCreate`

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
| FailurePolicyCleanup | Boolean | No |  |
| FailurePolicyRestart | Boolean | No |  |
| HostDiskPerformanceTier | String | No |  |
| HostEphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| JobPayloadHostsCount | Int32 | No |  |
| JobPayloadTags | ISessionHostCreateParamsTags | No |  |
| JobPayloadUserToAssign | String | No |  |

## Usage

```powershell
$model = New-NmeSessionHostCreateModel `
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

