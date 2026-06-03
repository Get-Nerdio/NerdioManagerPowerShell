# New-NmeNotificationActionDeliveryModel

Create an in-memory object for NotificationActionDelivery.

**Output Type:** `NotificationActionDelivery`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| EmailBuiltInRecipients | Object | Yes | Values: `None`, `EntraIdManager` |
| EmailEnable | Boolean | Yes |  |
| EmailSendTo | Object | Yes |  |
| WebhookEnable | Boolean | Yes |  |
| EmailMailboxId | Int32 | No |  |
| WebhookId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeNotificationActionDeliveryModel `
    -EmailBuiltInRecipients "None" `
    -EmailEnable $true `
    -EmailSendTo "<EmailSendTo>" `
    -WebhookEnable $true
```

