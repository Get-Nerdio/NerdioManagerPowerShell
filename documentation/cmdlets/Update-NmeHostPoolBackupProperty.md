# Update-NmeHostPoolBackupProperty

**Endpoint:** `PATCH /api/v1/arm/hostpool/{subscriptionId}/{resourceGroup}/{hostPoolName}/backup`

## Description

Update backup properties for ARM host pool

**Output Type:** `IHostPoolBackup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| HostPoolName | String | Yes |  |
| ResourceGroup | String | Yes |  |
| SubscriptionId | String | Yes |  |
| BackupMode | String | No | Values: `Ignore`, `TurnOff`, `TurnOn` |
| BackupPolicyId | String | No |  |

## Examples

```powershell
Update-NmeHostPoolBackupProperty `
    -HostPoolName "<HostPoolName>" `
    -ResourceGroup "<ResourceGroup>" `
    -SubscriptionId "<SubscriptionId>" `
    -BackupMode "TurnOn" `
    -BackupPolicyId "/subscriptions/e0b52e85-7caf-4260-a772-c0d82e56d407/resourceGroups/resource-group-1/providers/Microsoft.RecoveryServices/vaults/vault-name/backupPolicies/policy-name"
```

