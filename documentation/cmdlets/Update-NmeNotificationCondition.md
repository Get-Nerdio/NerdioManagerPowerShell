# Update-NmeNotificationCondition

**Endpoint:** `PATCH /api/v1/notifications/conditions/nerdio/{id}`

## Description

Update Nerdio notification condition.

**Output Type:** `IResponseWithJobAndNotificationCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| ExclusionKeywords | String[] | No |  |
| Name | String | No |  |
| RunByUsers | [INotificationConditionRunByUser[]](../models/New-NmeNotificationConditionRunByUserModel.md) | No |  |
| Statuses | String[] | No | Values: `Pending`, `Running`, `Completed`, `Failed`, `Cancelled` |
| Targets | [INotificationConditionTarget[]](../models/New-NmeNotificationConditionTargetModel.md) | No |  |
| Tasks | String[] | No |  |

## Examples

```powershell
Update-NmeNotificationCondition -Id 0
```

