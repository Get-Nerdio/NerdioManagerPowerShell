# New-NmeHostPoolBackupModel

Create an in-memory object for HostPoolBackup.

**Output Type:** `HostPoolBackup`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BackupMode | String | No | Values: `Ignore`, `TurnOff`, `TurnOn` |
| BackupPolicyId | String | No |  |

## Usage

```powershell
$model = New-NmeHostPoolBackupModel `
    -BackupMode "Ignore" `
    -BackupPolicyId "<BackupPolicyId>"
```

