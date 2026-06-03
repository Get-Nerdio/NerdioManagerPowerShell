# New-NmeNotificationActionEmailDeliveryModel

Create an in-memory object for NotificationActionEmailDelivery.

**Output Type:** `NotificationActionEmailDelivery`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BuiltInRecipients | Object | Yes | Values: `None`, `EntraIdManager` |
| Enable | Boolean | Yes |  |
| SendTo | Object | Yes |  |
| MailboxId | Int32 | No |  |

## Usage

```powershell
$model = New-NmeNotificationActionEmailDeliveryModel `
    -BuiltInRecipients "None" `
    -Enable $true `
    -SendTo "<SendTo>"
```

