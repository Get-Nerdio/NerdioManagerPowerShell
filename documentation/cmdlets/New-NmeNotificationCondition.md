# New-NmeNotificationCondition

**Endpoint:** `POST /api/v1/notifications/conditions/nerdio`

## Description

Create Nerdio notification condition.

**Output Type:** `IResponseWithJobAndNotificationCondition`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ExclusionKeywords | String[] | Yes |  |
| Name | String | Yes |  |
| RunByUsers | [INotificationConditionRunByUser[]](../models/New-NmeNotificationConditionRunByUserModel.md) | Yes |  |
| Statuses | String[] | Yes | Values: `Pending`, `Running`, `Completed`, `Failed`, `Cancelled` |
| Targets | [INotificationConditionTarget[]](../models/New-NmeNotificationConditionTargetModel.md) | Yes |  |
| Tasks | String[] | Yes |  |

## Examples

```powershell
$runByUsers = New-NmeNotificationConditionRunByUserModel `
    -UserType "User" `
    -Username "<Username>"
$targets = New-NmeNotificationConditionTargetModel `
    -Scope "Workspace"
New-NmeNotificationCondition `
    -ExclusionKeywords @("<ExclusionKeywords>") `
    -Name "<Name>" `
    -RunByUsers @($runByUsers) `
    -Statuses "Pending" `
    -Targets @($targets) `
    -Tasks @("<Tasks>")
```

