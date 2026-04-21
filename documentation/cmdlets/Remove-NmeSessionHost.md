# Remove-NmeSessionHost

**Endpoint:** `DELETE /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/host/{hostName}`

## Description

Remove ARM session host

**Output Type:** `IResponseWithJob`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostName | String | Yes |  |
| HostPoolName | String | Yes |  |
| JobPayloadForceRemoveWvdRecord | SwitchParameter | Yes |  |
| JobPayloadRemoveUsedVMName | SwitchParameter | Yes |  |
| JobPayloadSkipAdRemoval | SwitchParameter | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| FailurePolicyCleanup | SwitchParameter | No |  |
| FailurePolicyRestart | SwitchParameter | No |  |

## Examples

### Example 1: Remove regular session host

```powershell
Remove-NmeSessionHost `
    -HostName "<HostName>" `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 2: Remove broken session host (no VM)

```powershell
Remove-NmeSessionHost `
    -HostName "<HostName>" `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadForceRemoveWvdRecord `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 3: Re-use name of deleted VM in the future

```powershell
Remove-NmeSessionHost `
    -HostName "<HostName>" `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadRemoveUsedVMName `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

### Example 4: Do not delete AD computer object

```powershell
Remove-NmeSessionHost `
    -HostName "<HostName>" `
    -HostPoolName "<HostPoolName>" `
    -JobPayloadSkipAdRemoval `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -FailurePolicyCleanup `
    -FailurePolicyRestart
```

