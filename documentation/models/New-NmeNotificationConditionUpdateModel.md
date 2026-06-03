# New-NmeNotificationConditionUpdateModel

Create an in-memory object for NotificationConditionUpdate.

**Output Type:** `NotificationConditionUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExclusionKeywords | Object | No |  |
| Name | String | No |  |
| RunByUsers | [INotificationConditionRunByUser[]](New-NmeNotificationConditionRunByUserModel.md) | No | Pass as array. |
| Statuses | Object | No | Values: `Pending`, `Running`, `Completed`, `Failed`, `Cancelled` |
| Targets | [INotificationConditionTarget[]](New-NmeNotificationConditionTargetModel.md) | No | Pass as array. |
| Tasks | Object | No |  |

## Usage

```powershell
$runByUsers = New-NmeNotificationConditionRunByUserModel `
    -UserType "User" `
    -Username "<Username>"
$targets = New-NmeNotificationConditionTargetModel `
    -Scope "Workspace"
$model = New-NmeNotificationConditionUpdateModel `
    -ExclusionKeywords "<ExclusionKeywords>" `
    -Name "<Name>" `
    -RunByUsers $runByUsers `
    -Statuses "Pending" `
    -Targets $targets `
    -Tasks "<Tasks>"
```

