# New-NmeNotificationActionDeliveryUpdateModel

Create an in-memory object for NotificationActionDeliveryUpdate.

**Output Type:** `NotificationActionDeliveryUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| EmailBuiltInRecipients | Object | No | Values: `None`, `EntraIdManager` |
| EmailEnable | Boolean | No |  |
| EmailMailboxId | Int32 | No |  |
| EmailSendTo | Object | No |  |
| WebhookEnable | Boolean | No |  |
| WebhookId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeNotificationActionDeliveryUpdateModel `
    -EmailBuiltInRecipients "None" `
    -EmailEnable $true `
    -EmailMailboxId 0 `
    -EmailSendTo "<EmailSendTo>" `
    -WebhookEnable $true `
    -WebhookId 0
```

