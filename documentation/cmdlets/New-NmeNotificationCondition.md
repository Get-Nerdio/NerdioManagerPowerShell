# New-NmeNotificationCondition

**Endpoint:** `POST /api/v1/notifications/conditions/nerdio`

## Description

Create Nerdio notification condition.

**Output Type:** `IResponseWithJobAndNotificationCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Name | String | Yes |  |
| ExclusionKeywords | String[] | No |  |
| RunByUsers | [INotificationConditionRunByUser[]](../models/New-NmeNotificationConditionRunByUserModel.md) | No |  |
| Statuses | String[] | No | Values: `Pending`, `Running`, `Completed`, `Failed`, `Cancelled` |
| Targets | [INotificationConditionTarget[]](../models/New-NmeNotificationConditionTargetModel.md) | No |  |
| Tasks | String[] | No |  |

## Examples

```powershell
New-NmeNotificationCondition -Name "<Name>"
```

