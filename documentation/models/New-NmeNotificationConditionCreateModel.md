# New-NmeNotificationConditionCreateModel

Create an in-memory object for NotificationConditionCreate.

**Output Type:** `NotificationConditionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExclusionKeywords | Object | Yes |  |
| Name | String | Yes |  |
| RunByUsers | [INotificationConditionRunByUser[]](New-NmeNotificationConditionRunByUserModel.md) | Yes | Pass as array. |
| Statuses | Object | Yes | Values: `Pending`, `Running`, `Completed`, `Failed`, `Cancelled` |
| Targets | [INotificationConditionTarget[]](New-NmeNotificationConditionTargetModel.md) | Yes | Pass as array. |
| Tasks | Object | Yes |  |

## Usage

```powershell
$runByUsers = New-NmeNotificationConditionRunByUserModel `
    -UserType "User" `
    -Username "<Username>"
$targets = New-NmeNotificationConditionTargetModel `
    -Scope "Workspace"
$model = New-NmeNotificationConditionCreateModel `
    -ExclusionKeywords "<ExclusionKeywords>" `
    -Name "<Name>" `
    -RunByUsers $runByUsers `
    -Statuses "Pending" `
    -Targets $targets `
    -Tasks "<Tasks>"
```

