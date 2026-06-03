# Update-NmeNotificationAction

**Endpoint:** `PATCH /api/v1/notifications/actions/{id}`

## Description

Partially update notification action.

**Output Type:** `IResponseWithJobAndNotificationAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| Id | Int32 | Yes |  |
| ConditionNerdioConditionIds | Int32[] | No |  |
| EmailBuiltInRecipients | String[] | No | Values: `None`, `EntraIdManager` |
| EmailEnable | SwitchParameter | No |  |
| EmailMailboxId | Int32 | No |  |
| EmailSendTo | String[] | No |  |
| IncludeTaskDetails | SwitchParameter | No |  |
| IsActive | SwitchParameter | No |  |
| WebhookEnable | SwitchParameter | No |  |
| WebhookId | Int32 | No |  |

## Examples

```powershell
Update-NmeNotificationAction -Id 0
```

