# New-NmeNotificationActionCreateModel

Create an in-memory object for NotificationActionCreate.

**Output Type:** `NotificationActionCreate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| ConditionNerdioConditionIds | Object | Yes |  |
| EmailBuiltInRecipients | Object | Yes | Values: `None`, `EntraIdManager` |
| EmailEnable | Boolean | Yes |  |
| EmailSendTo | Object | Yes |  |
| IncludeTaskDetails | Boolean | Yes |  |
| IsActive | Boolean | Yes |  |
| WebhookEnable | Boolean | Yes |  |
| EmailMailboxId | Int32 | No |  |
| WebhookId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeNotificationActionCreateModel `
    -ConditionNerdioConditionIds "<ConditionNerdioConditionIds>" `
    -EmailBuiltInRecipients "None" `
    -EmailEnable $true `
    -EmailSendTo "<EmailSendTo>" `
    -IncludeTaskDetails $true `
    -IsActive $true `
    -WebhookEnable $true
```

