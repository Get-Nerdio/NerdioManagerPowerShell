# New-NmeNotificationConditionCreateModel

Create an in-memory object for NotificationConditionCreate.

**Output Type:** `NotificationConditionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ExclusionKeywords | Object | No |  |
| RunByUsers | [INotificationConditionRunByUser[]](New-NmeNotificationConditionRunByUserModel.md) | No | Pass as array. |
| Statuses | Object | No | Values: `Pending`, `Running`, `Completed`, `Failed`, `Cancelled` |
| Targets | [INotificationConditionTarget[]](New-NmeNotificationConditionTargetModel.md) | No | Pass as array. |
| Tasks | Object | No |  |

## Usage

```powershell
$model = New-NmeNotificationConditionCreateModel `
    -Name "<Name>"
```

