# New-NmeNotificationActionUpdateModel

Create an in-memory object for NotificationActionUpdate.

**Output Type:** `NotificationActionUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConditionNerdioConditionIds | Object | No |  |
| EmailBuiltInRecipients | Object | No | Values: `None`, `EntraIdManager` |
| EmailEnable | Boolean | No |  |
| EmailMailboxId | Int32 | No |  |
| EmailSendTo | Object | No |  |
| IncludeTaskDetails | Boolean | No |  |
| IsActive | Boolean | No |  |
| WebhookEnable | Boolean | No |  |
| WebhookId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeNotificationActionUpdateModel `
    -ConditionNerdioConditionIds "<ConditionNerdioConditionIds>" `
    -EmailBuiltInRecipients "None" `
    -EmailEnable $true `
    -EmailMailboxId 0 `
    -EmailSendTo "<EmailSendTo>" `
    -IncludeTaskDetails $true `
    -IsActive $true `
    -WebhookEnable $true `
    -WebhookId 0
```

