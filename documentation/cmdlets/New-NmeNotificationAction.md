# New-NmeNotificationAction

**Endpoint:** `POST /api/v1/notifications/actions`

## Description

Create notification action.

**Output Type:** `IResponseWithJobAndNotificationAction`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConditionNerdioConditionIds | Int32[] | Yes |  |
| EmailBuiltInRecipients | String[] | Yes | Values: `None`, `EntraIdManager` |
| EmailEnable | SwitchParameter | Yes |  |
| EmailSendTo | String[] | Yes |  |
| IncludeTaskDetails | SwitchParameter | Yes |  |
| IsActive | SwitchParameter | Yes |  |
| WebhookEnable | SwitchParameter | Yes |  |
| EmailMailboxId | Int32 | No |  |
| WebhookId | Int32 | No |  |

## Examples

```powershell
New-NmeNotificationAction `
    -ConditionNerdioConditionIds 0 `
    -EmailBuiltInRecipients "None" `
    -EmailEnable `
    -EmailSendTo @("<EmailSendTo>") `
    -IncludeTaskDetails `
    -IsActive `
    -WebhookEnable
```

