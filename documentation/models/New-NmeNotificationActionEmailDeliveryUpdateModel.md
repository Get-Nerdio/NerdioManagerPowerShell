# New-NmeNotificationActionEmailDeliveryUpdateModel

Create an in-memory object for NotificationActionEmailDeliveryUpdate.

**Output Type:** `NotificationActionEmailDeliveryUpdate`

## Parameters

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| BuiltInRecipients | Object | No | Values: `None`, `EntraIdManager` |
| Enable | Boolean | No |  |
| MailboxId | Int32 | No |  |
| SendTo | Object | No |  |

## Usage

```powershell
$model = New-NmeNotificationActionEmailDeliveryUpdateModel `
    -BuiltInRecipients "None" `
    -Enable $true `
    -MailboxId 0 `
    -SendTo "<SendTo>"
```

