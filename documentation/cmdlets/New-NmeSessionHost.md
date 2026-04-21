# New-NmeSessionHost

**Endpoint:** `POST /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host`

## Description

Create ARM session host

To choose more than one user to assign them to hosts in personal pool, write them in "userToAssign" field and separate them with comma [,].

Host Name depends on "Name" value and "AddSuffix" value.
When "AddSuffix" is false the host name will follow "Exact" name forming.
When "AddSuffix" is true the host name will follow "Prefix" name forming.

**Output Type:** `IResponseWithMultipleJobs`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostDiskSize | Int32 | Yes |  |
| HostHasEphemeralOSDisk | SwitchParameter | Yes |  |
| HostImage | String | Yes |  |
| HostNetworkId | String | Yes |  |
| HostPoolName | String | Yes |  |
| HostStorageType | String | Yes |  |
| HostSubnet | String | Yes |  |
| HostVMSize | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| VMIdAddSuffix | SwitchParameter | Yes |  |
| VMIdName | String | Yes |  |
| VMIdResourceGroup | String | Yes |  |
| VMIdSubscriptionId | String | Yes |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |
| HostDiskPerformanceTier | String | No |  |
| HostEphemeralOSDiskPlacement | String | No | Values: `CacheDisk`, `ResourceDisk`, `NvmeDisk` |
| JobPayloadHostsCount | Int32 | No |  |
| JobPayloadTags | Hashtable | No | Key is Azure tag name, value is tag value |
| JobPayloadUserToAssign | String | No |  |

## Examples

### Example 1: Assign single user

```powershell
New-NmeSessionHost `
    -HostDiskSize 128 `
    -HostImage "MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest" `
    -HostNetworkId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Network/virtualNetworks/v-net-1" `
    -HostPoolName "<HostPoolName>" `
    -HostStorageType "StandardSSD_LRS" `
    -HostSubnet "LAN" `
    -HostVMSize "Standard_D2s_v3" `
    -ResourceGroup "resource-group-1" `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -VMIdName "vm-name-1" `
    -VMIdResourceGroup "resource-group-1" `
    -VMIdSubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart `
    -JobPayloadHostsCount 1 `
    -JobPayloadUserToAssign "administrator@contoso.com"
```

### Example 2: Assign multiple users

```powershell
New-NmeSessionHost `
    -HostDiskSize 128 `
    -HostImage "MicrosoftWindowsDesktop/windows-11/win11-22h2-avd/latest" `
    -HostNetworkId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.Network/virtualNetworks/v-net-1" `
    -HostPoolName "<HostPoolName>" `
    -HostStorageType "StandardSSD_LRS" `
    -HostSubnet "LAN" `
    -HostVMSize "Standard_D2s_v3" `
    -ResourceGroup "resource-group-1" `
    -SubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -VMIdAddSuffix `
    -VMIdName "vm-name-1" `
    -VMIdResourceGroup "resource-group-1" `
    -VMIdSubscriptionId "e0b52e85-7caf-4260-a772-c0d82e56d407" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart `
    -JobPayloadHostsCount 2 `
    -JobPayloadUserToAssign "administrator@contoso.com,user@contoso.com"
```

